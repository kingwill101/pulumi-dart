// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'function_runtime.dart';
import 'function_sync_config.dart';

/// {@template pulumi_appsync_function_function_args_doc}
/// The set of arguments for Function.
/// {@endtemplate}
/// {@macro pulumi_appsync_function_function_args_doc}
class FunctionArgs {
  /// ID of the associated AppSync API.
  final pulumi.Input<String> apiId;
  /// The function code that contains the request and response functions. When code is used, the runtime is required. The runtime value must be APPSYNC_JS.
  final pulumi.Input<String>? code;
  /// Function data source name.
  final pulumi.Input<String> dataSource;
  /// Function description.
  final pulumi.Input<String>? description;
  /// Version of the request mapping template. Currently the supported value is `2018-05-29`. Does not apply when specifying `code`.
  final pulumi.Input<String>? functionVersion;
  /// Maximum batching size for a resolver. Valid values are between `0` and `2000`.
  final pulumi.Input<int>? maxBatchSize;
  /// Function name. The function name does not have to be unique.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Function request mapping template. Functions support only the 2018-05-29 version of the request mapping template.
  final pulumi.Input<String>? requestMappingTemplate;
  /// Function response mapping template.
  final pulumi.Input<String>? responseMappingTemplate;
  /// Describes a runtime used by an AWS AppSync pipeline resolver or AWS AppSync function. Specifies the name and version of the runtime to use. Note that if a runtime is specified, code must also be specified. See `runtime` Block for details.
  final pulumi.Input<FunctionRuntime>? runtime;
  /// Describes a Sync configuration for a resolver. See `sync_config` Block for details.
  final pulumi.Input<FunctionSyncConfig>? syncConfig;

  /// Creates a new [FunctionArgs].
  /// [apiId] ID of the associated AppSync API.
  /// [code] The function code that contains the request and response functions. When code is used, the runtime is required. The runtime value must be APPSYNC_JS.
  /// [dataSource] Function data source name.
  /// [description] Function description.
  /// [functionVersion] Version of the request mapping template. Currently the supported value is `2018-05-29`. Does not apply when specifying `code`.
  /// [maxBatchSize] Maximum batching size for a resolver. Valid values are between `0` and `2000`.
  /// [name] Function name. The function name does not have to be unique.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [requestMappingTemplate] Function request mapping template. Functions support only the 2018-05-29 version of the request mapping template.
  /// [responseMappingTemplate] Function response mapping template.
  /// [runtime] Describes a runtime used by an AWS AppSync pipeline resolver or AWS AppSync function. Specifies the name and version of the runtime to use. Note that if a runtime is specified, code must also be specified. See `runtime` Block for details.
  /// [syncConfig] Describes a Sync configuration for a resolver. See `sync_config` Block for details.
  FunctionArgs({
    required pulumi.Output<String> apiId,
    pulumi.Output<String>? code,
    required pulumi.Output<String> dataSource,
    pulumi.Output<String>? description,
    pulumi.Output<String>? functionVersion,
    pulumi.Output<int>? maxBatchSize,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<String>? requestMappingTemplate,
    pulumi.Output<String>? responseMappingTemplate,
    pulumi.Output<FunctionRuntime>? runtime,
    pulumi.Output<FunctionSyncConfig>? syncConfig,
  }) :
      apiId = pulumi.Input.asInput<String>(apiId),
      code = pulumi.Input.asOptionalInput<String>(code),
      dataSource = pulumi.Input.asInput<String>(dataSource),
      description = pulumi.Input.asOptionalInput<String>(description),
      functionVersion = pulumi.Input.asOptionalInput<String>(functionVersion),
      maxBatchSize = pulumi.Input.asOptionalInput<int>(maxBatchSize),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      requestMappingTemplate = pulumi.Input.asOptionalInput<String>(requestMappingTemplate),
      responseMappingTemplate = pulumi.Input.asOptionalInput<String>(responseMappingTemplate),
      runtime = pulumi.Input.asOptionalInput<FunctionRuntime>(runtime),
      syncConfig = pulumi.Input.asOptionalInput<FunctionSyncConfig>(syncConfig);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiId': apiId,
      'code': ?code,
      'dataSource': dataSource,
      'description': ?description,
      'functionVersion': ?functionVersion,
      'maxBatchSize': ?maxBatchSize,
      'name': ?name,
      'region': ?region,
      'requestMappingTemplate': ?requestMappingTemplate,
      'responseMappingTemplate': ?responseMappingTemplate,
      'runtime': ?pulumi.Input.mapOptionalInputValue<FunctionRuntime, Map<String, dynamic>>(runtime, (value) => value.toMap()),
      'syncConfig': ?pulumi.Input.mapOptionalInputValue<FunctionSyncConfig, Map<String, dynamic>>(syncConfig, (value) => value.toMap()),
    };
  }

  factory FunctionArgs.fromMap(Map<String, dynamic> map) {
    return FunctionArgs(
      apiId: pulumi.Output.create<String>(map['apiId'] as String),
      code: map['code'] == null ? null : pulumi.Output.create<String>(map['code'] as String),
      dataSource: pulumi.Output.create<String>(map['dataSource'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      functionVersion: map['functionVersion'] == null ? null : pulumi.Output.create<String>(map['functionVersion'] as String),
      maxBatchSize: map['maxBatchSize'] == null ? null : pulumi.Output.create<int>(map['maxBatchSize'] as int),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      requestMappingTemplate: map['requestMappingTemplate'] == null ? null : pulumi.Output.create<String>(map['requestMappingTemplate'] as String),
      responseMappingTemplate: map['responseMappingTemplate'] == null ? null : pulumi.Output.create<String>(map['responseMappingTemplate'] as String),
      runtime: map['runtime'] == null ? null : pulumi.Output.create<FunctionRuntime>(FunctionRuntime.fromMap((map['runtime'] as Map).cast<String, dynamic>())),
      syncConfig: map['syncConfig'] == null ? null : pulumi.Output.create<FunctionSyncConfig>(FunctionSyncConfig.fromMap((map['syncConfig'] as Map).cast<String, dynamic>())),
    );
  }
}

