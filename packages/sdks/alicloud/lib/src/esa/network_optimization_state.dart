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
    this.configId,
    this.grpc,
    this.http2Origin,
    this.rule,
    this.ruleEnable,
    this.ruleName,
    this.sequence,
    this.siteId,
    this.siteVersion,
    this.smartRouting,
    this.uploadMaxFilesize,
    this.websocket,
  });

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
      configId: map['configId'] == null ? null : (map['configId']! as int).input(),
      grpc: map['grpc'] == null ? null : (map['grpc']! as String).input(),
      http2Origin: map['http2Origin'] == null ? null : (map['http2Origin']! as String).input(),
      rule: map['rule'] == null ? null : (map['rule']! as String).input(),
      ruleEnable: map['ruleEnable'] == null ? null : (map['ruleEnable']! as String).input(),
      ruleName: map['ruleName'] == null ? null : (map['ruleName']! as String).input(),
      sequence: map['sequence'] == null ? null : (map['sequence']! as int).input(),
      siteId: map['siteId'] == null ? null : (map['siteId']! as String).input(),
      siteVersion: map['siteVersion'] == null ? null : (map['siteVersion']! as int).input(),
      smartRouting: map['smartRouting'] == null ? null : (map['smartRouting']! as String).input(),
      uploadMaxFilesize: map['uploadMaxFilesize'] == null ? null : (map['uploadMaxFilesize']! as String).input(),
      websocket: map['websocket'] == null ? null : (map['websocket']! as String).input(),
    );
  }
}

