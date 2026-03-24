import 'package:pulumi/provider.dart';

class IntegrationProvider extends Provider {
  IntegrationProvider() : super(version: '1.2.3', schema: _schema);

  static const String _schema = '''
{
  "name": "testprovider",
  "version": "1.2.3",
  "resources": {
    "testprovider:index:Random": {
      "inputProperties": {
        "length": { "type": "integer" }
      },
      "requiredInputs": ["length"],
      "properties": {
        "length": { "type": "integer" },
        "result": { "type": "string" }
      },
      "required": ["length", "result"]
    },
    "testprovider:index:Echo": {
      "inputProperties": {
        "echo": { "type": "string" }
      },
      "requiredInputs": ["echo"],
      "properties": {
        "echo": { "type": "string" }
      },
      "required": ["echo"]
    },
    "testprovider:index:Component": {
      "isComponent": true,
      "inputProperties": {
        "length": { "type": "integer" }
      },
      "requiredInputs": ["length"],
      "properties": {
        "length": { "type": "integer" },
        "result": { "type": "string" }
      },
      "required": ["length", "result"]
    }
  },
  "functions": {
    "testprovider:index:Echo/doEchoMethod": {
      "inputs": {
        "type": "object",
        "properties": {
          "echo": { "type": "string" }
        },
        "required": ["echo"]
      },
      "outputs": {
        "type": "object",
        "properties": {
          "echo": { "type": "string" }
        }
      }
    }
  }
}
''';

  static String _urnType(String urn) {
    final parts = urn.split('::');
    if (parts.length >= 4) {
      return parts[3];
    }
    return '';
  }

  static int _asInt(dynamic value, [int defaultValue = 0]) {
    if (value is int) {
      return value;
    }
    if (value is num) {
      return value.toInt();
    }
    if (value is String) {
      return int.tryParse(value) ?? defaultValue;
    }
    return defaultValue;
  }

  static String _repeatChar(int length, String char) {
    if (length <= 0) {
      return '';
    }
    return List<String>.filled(length, char).join();
  }

  @override
  Future<ParameterizeResult> parameterizeArgs(List<String> args) async {
    return const ParameterizeResult(name: 'testprovider', version: '1.2.3');
  }

  @override
  Future<ParameterizeResult> parameterizeValue(
    String name,
    String version,
    String value,
  ) async {
    return ParameterizeResult(name: name, version: version);
  }

  @override
  Future<CheckResult> check(
    String urn,
    Map<String, dynamic> olds,
    Map<String, dynamic> news,
  ) async {
    final failures = <CheckFailure>[];
    switch (_urnType(urn)) {
      case 'testprovider:index:Random':
      case 'testprovider:index:Component':
        if (!news.containsKey('length')) {
          failures.add(
            const CheckFailure(
              property: 'length',
              reason: 'length is required',
            ),
          );
        }
        break;
      case 'testprovider:index:Echo':
        if (!news.containsKey('echo')) {
          failures.add(
            const CheckFailure(property: 'echo', reason: 'echo is required'),
          );
        }
        break;
    }

    return CheckResult(inputs: news, failures: failures);
  }

  @override
  Future<DiffResult> diff(
    String id,
    String urn,
    Map<String, dynamic> olds,
    Map<String, dynamic> news,
  ) async {
    return DiffResult(
      changes: false,
      replaces: const <String>[],
      stables: const <String>['echo', 'length'],
      deleteBeforeReplace: false,
    );
  }

  @override
  Future<CheckResult> checkConfig(
    String urn,
    Map<String, dynamic> olds,
    Map<String, dynamic> news,
  ) async {
    final region = news['region']?.toString();
    final failures = <CheckFailure>[];
    if (region == null || region.isEmpty) {
      failures.add(
        const CheckFailure(property: 'region', reason: 'region is required'),
      );
    } else if (region.startsWith('invalid-')) {
      failures.add(
        const CheckFailure(
          property: 'region',
          reason: 'region must be a supported cloud region',
        ),
      );
    }

    return CheckResult(
      inputs: <String, dynamic>{
        ...news,
        if (!news.containsKey('profile')) 'profile': 'default',
      },
      failures: failures,
    );
  }

  @override
  Future<DiffResult> diffConfig(
    String id,
    String urn,
    Map<String, dynamic> olds,
    Map<String, dynamic> news,
  ) async {
    final oldRegion = olds['region']?.toString();
    final newRegion = news['region']?.toString();
    final changed = oldRegion != newRegion;
    return DiffResult(
      changes: changed,
      replaces: changed ? const <String>['region'] : const <String>[],
      stables: changed ? const <String>[] : const <String>['region'],
      deleteBeforeReplace: false,
    );
  }

  @override
  Future<CreateResult> create(String urn, Map<String, dynamic> inputs) async {
    final type = _urnType(urn);
    if (type == 'testprovider:index:Random') {
      final length = _asInt(inputs['length'], 8);
      return CreateResult(
        id: 'random-$length',
        outs: <String, dynamic>{
          'length': length,
          'result': _repeatChar(length, 'a'),
        },
      );
    }

    if (type == 'testprovider:index:Echo') {
      final echo = inputs['echo']?.toString() ?? '';
      return CreateResult(
        id: 'echo-$echo',
        outs: <String, dynamic>{'echo': echo},
      );
    }

    return CreateResult(
      id: 'resource-1',
      outs: <String, dynamic>{'created': true, ...inputs},
    );
  }

  @override
  Future<ReadResult> read(
    String id,
    String urn,
    Map<String, dynamic>? props,
  ) async {
    return ReadResult(id: id, props: props ?? <String, dynamic>{});
  }

  @override
  Future<UpdateResult> update(
    String id,
    String urn,
    Map<String, dynamic> olds,
    Map<String, dynamic> news,
  ) async {
    return UpdateResult(outs: <String, dynamic>{'updated': true, ...news});
  }

  @override
  Future<void> delete(
    String id,
    String urn,
    Map<String, dynamic> props,
  ) async {}

  @override
  Future<InvokeResult> invoke(String token, Map<String, dynamic> args) async {
    return InvokeResult(
      outputs: <String, dynamic>{'echo': args['echo'], 'token': token},
      failures: const <CheckFailure>[],
    );
  }

  @override
  Future<CallResult> call(String token, Inputs inputs) async {
    if (token == 'testprovider:index:Echo/failSingle') {
      throw const InputPropertyError('resource.echo', 'invalid echo value');
    }
    if (token == 'testprovider:index:Echo/failMultiple') {
      throw const InputPropertiesError(
        'multiple invalid properties',
        <InputPropertyErrorDetails>[
          InputPropertyErrorDetails(
            propertyPath: 'resource.left',
            reason: 'left invalid',
          ),
          InputPropertyErrorDetails(
            propertyPath: 'resource.right',
            reason: 'right invalid',
          ),
        ],
      );
    }

    if (token == 'testprovider:index:Echo/doEchoMethod') {
      final echo = await inputs['echo']?.toOutput().getValue();
      return CallResult(
        outputs: <String, Input<dynamic>>{
          'echo': Input.fromValue(echo?.toString() ?? ''),
        },
      );
    }

    return CallResult(
      outputs: <String, Input<dynamic>>{'token': Input.fromValue(token)},
    );
  }

  @override
  Future<ConstructResult> construct(
    String name,
    String type,
    Inputs inputs,
    ComponentResourceOptions options,
  ) async {
    if (type == 'testprovider:index:Component') {
      final length = await inputs['length']?.toOutput().getValue();
      return ConstructResult(
        urn: Input.fromValue('urn:pulumi:dev::proj::$type::$name'),
        state: <String, Input<dynamic>>{
          'length': Input.fromValue(length ?? 0),
          'result': Input.fromValue(_repeatChar(_asInt(length, 0), 'x')),
        },
      );
    }

    return ConstructResult(
      urn: Input.fromValue('urn:pulumi:dev::proj::$type::$name'),
      state: <String, Input<dynamic>>{'name': Input.fromValue(name)},
    );
  }
}

Future<void> main(List<String> args) async {
  await serve(IntegrationProvider(), args);
}
