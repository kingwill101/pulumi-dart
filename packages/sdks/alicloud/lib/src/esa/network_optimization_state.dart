// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering NetworkOptimization resources.
class NetworkOptimizationState {
  /// ConfigId of the configuration, which can be obtained by calling the ListNetworkOptimizations.
  final pulumi.Input<int>? configId;
  /// Whether to enable GRPC, default is disabled. Value range:
  final pulumi.Input<String>? grpc;
  /// Whether to enable HTTP2 origin, default is disabled. Value range:
  final pulumi.Input<String>? http2Origin;
  /// Rule content, using conditional expressions to match user requests. When adding global configuration, this parameter does not need to be set. There are two usage scenarios:
  /// - Match all incoming requests: value set to true
  /// - Match specified request: Set the value to a custom expression, for example: (http.host eq \"video.example.com\")
  final pulumi.Input<String>? rule;
  /// Rule switch. When adding global configuration, this parameter does not need to be set. Value range:
  final pulumi.Input<String>? ruleEnable;
  /// Rule name.
  final pulumi.Input<String>? ruleName;
  /// The rule execution order prioritizes lower numerical values. It is only applicable when setting or modifying the order of individual rule configurations.
  final pulumi.Input<int>? sequence;
  /// Site ID.
  final pulumi.Input<String>? siteId;
  /// The version number of the site configuration. For sites that have enabled configuration version management, this parameter can be used to specify the effective version of the configuration site, which defaults to version 0.
  final pulumi.Input<int>? siteVersion;
  /// Whether to enable smart routing service, default is disabled. Value range:
  final pulumi.Input<String>? smartRouting;
  /// Maximum upload file size, in MB, value range: 100～500.
  final pulumi.Input<String>? uploadMaxFilesize;
  /// Whether to enable Websocket, default is enabled. Value range:
  final pulumi.Input<String>? websocket;

  /// Creates a new [NetworkOptimizationState].
  /// [configId] ConfigId of the configuration, which can be obtained by calling the ListNetworkOptimizations.
  /// [grpc] Whether to enable GRPC, default is disabled. Value range:
  /// [http2Origin] Whether to enable HTTP2 origin, default is disabled. Value range:
  /// [rule] Rule content, using conditional expressions to match user requests. When adding global configuration, this parameter does not need to be set. There are two usage scenarios:
  /// [ruleEnable] Rule switch. When adding global configuration, this parameter does not need to be set. Value range:
  /// [ruleName] Rule name.
  /// [sequence] The rule execution order prioritizes lower numerical values. It is only applicable when setting or modifying the order of individual rule configurations.
  /// [siteId] Site ID.
  /// [siteVersion] The version number of the site configuration. For sites that have enabled configuration version management, this parameter can be used to specify the effective version of the configuration site, which defaults to version 0.
  /// [smartRouting] Whether to enable smart routing service, default is disabled. Value range:
  /// [uploadMaxFilesize] Maximum upload file size, in MB, value range: 100～500.
  /// [websocket] Whether to enable Websocket, default is enabled. Value range:
  NetworkOptimizationState({
    pulumi.Output<int>? configId,
    pulumi.Output<String>? grpc,
    pulumi.Output<String>? http2Origin,
    pulumi.Output<String>? rule,
    pulumi.Output<String>? ruleEnable,
    pulumi.Output<String>? ruleName,
    pulumi.Output<int>? sequence,
    pulumi.Output<String>? siteId,
    pulumi.Output<int>? siteVersion,
    pulumi.Output<String>? smartRouting,
    pulumi.Output<String>? uploadMaxFilesize,
    pulumi.Output<String>? websocket,
  }) :
      configId = pulumi.Input.asOptionalInput<int>(configId),
      grpc = pulumi.Input.asOptionalInput<String>(grpc),
      http2Origin = pulumi.Input.asOptionalInput<String>(http2Origin),
      rule = pulumi.Input.asOptionalInput<String>(rule),
      ruleEnable = pulumi.Input.asOptionalInput<String>(ruleEnable),
      ruleName = pulumi.Input.asOptionalInput<String>(ruleName),
      sequence = pulumi.Input.asOptionalInput<int>(sequence),
      siteId = pulumi.Input.asOptionalInput<String>(siteId),
      siteVersion = pulumi.Input.asOptionalInput<int>(siteVersion),
      smartRouting = pulumi.Input.asOptionalInput<String>(smartRouting),
      uploadMaxFilesize = pulumi.Input.asOptionalInput<String>(uploadMaxFilesize),
      websocket = pulumi.Input.asOptionalInput<String>(websocket);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configId': ?configId,
      'grpc': ?grpc,
      'http2Origin': ?http2Origin,
      'rule': ?rule,
      'ruleEnable': ?ruleEnable,
      'ruleName': ?ruleName,
      'sequence': ?sequence,
      'siteId': ?siteId,
      'siteVersion': ?siteVersion,
      'smartRouting': ?smartRouting,
      'uploadMaxFilesize': ?uploadMaxFilesize,
      'websocket': ?websocket,
    };
  }

  factory NetworkOptimizationState.fromMap(Map<String, dynamic> map) {
    return NetworkOptimizationState(
      configId: map['configId'] == null ? null : pulumi.Output.create<int>(map['configId'] as int),
      grpc: map['grpc'] == null ? null : pulumi.Output.create<String>(map['grpc'] as String),
      http2Origin: map['http2Origin'] == null ? null : pulumi.Output.create<String>(map['http2Origin'] as String),
      rule: map['rule'] == null ? null : pulumi.Output.create<String>(map['rule'] as String),
      ruleEnable: map['ruleEnable'] == null ? null : pulumi.Output.create<String>(map['ruleEnable'] as String),
      ruleName: map['ruleName'] == null ? null : pulumi.Output.create<String>(map['ruleName'] as String),
      sequence: map['sequence'] == null ? null : pulumi.Output.create<int>(map['sequence'] as int),
      siteId: map['siteId'] == null ? null : pulumi.Output.create<String>(map['siteId'] as String),
      siteVersion: map['siteVersion'] == null ? null : pulumi.Output.create<int>(map['siteVersion'] as int),
      smartRouting: map['smartRouting'] == null ? null : pulumi.Output.create<String>(map['smartRouting'] as String),
      uploadMaxFilesize: map['uploadMaxFilesize'] == null ? null : pulumi.Output.create<String>(map['uploadMaxFilesize'] as String),
      websocket: map['websocket'] == null ? null : pulumi.Output.create<String>(map['websocket'] as String),
    );
  }
}

