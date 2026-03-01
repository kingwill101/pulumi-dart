// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_esa_network_optimization_network_optimization_args_doc}
/// The set of arguments for NetworkOptimization.
/// {@endtemplate}
/// {@macro pulumi_esa_network_optimization_network_optimization_args_doc}
class NetworkOptimizationArgs {
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
  final pulumi.Input<String> siteId;
  /// The version number of the site configuration. For sites that have enabled configuration version management, this parameter can be used to specify the effective version of the configuration site, which defaults to version 0.
  final pulumi.Input<int>? siteVersion;
  /// Whether to enable smart routing service, default is disabled. Value range:
  final pulumi.Input<String>? smartRouting;
  /// Maximum upload file size, in MB, value range: 100～500.
  final pulumi.Input<String>? uploadMaxFilesize;
  /// Whether to enable Websocket, default is enabled. Value range:
  final pulumi.Input<String>? websocket;

  /// Creates a new [NetworkOptimizationArgs].
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
  NetworkOptimizationArgs({
    String? grpc,
    String? http2Origin,
    String? rule,
    String? ruleEnable,
    String? ruleName,
    int? sequence,
    required String siteId,
    int? siteVersion,
    String? smartRouting,
    String? uploadMaxFilesize,
    String? websocket,
  }) :
      grpc = pulumi.Input.asOptionalInput<String>(grpc),
      http2Origin = pulumi.Input.asOptionalInput<String>(http2Origin),
      rule = pulumi.Input.asOptionalInput<String>(rule),
      ruleEnable = pulumi.Input.asOptionalInput<String>(ruleEnable),
      ruleName = pulumi.Input.asOptionalInput<String>(ruleName),
      sequence = pulumi.Input.asOptionalInput<int>(sequence),
      siteId = pulumi.Input.asInput<String>(siteId),
      siteVersion = pulumi.Input.asOptionalInput<int>(siteVersion),
      smartRouting = pulumi.Input.asOptionalInput<String>(smartRouting),
      uploadMaxFilesize = pulumi.Input.asOptionalInput<String>(uploadMaxFilesize),
      websocket = pulumi.Input.asOptionalInput<String>(websocket);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'grpc': ?grpc,
      'http2Origin': ?http2Origin,
      'rule': ?rule,
      'ruleEnable': ?ruleEnable,
      'ruleName': ?ruleName,
      'sequence': ?sequence,
      'siteId': siteId,
      'siteVersion': ?siteVersion,
      'smartRouting': ?smartRouting,
      'uploadMaxFilesize': ?uploadMaxFilesize,
      'websocket': ?websocket,
    };
  }

  factory NetworkOptimizationArgs.fromMap(Map<String, dynamic> map) {
    return NetworkOptimizationArgs(
      grpc: map['grpc'] == null ? null : map['grpc'] as String,
      http2Origin: map['http2Origin'] == null ? null : map['http2Origin'] as String,
      rule: map['rule'] == null ? null : map['rule'] as String,
      ruleEnable: map['ruleEnable'] == null ? null : map['ruleEnable'] as String,
      ruleName: map['ruleName'] == null ? null : map['ruleName'] as String,
      sequence: map['sequence'] == null ? null : map['sequence'] as int,
      siteId: map['siteId'] as String,
      siteVersion: map['siteVersion'] == null ? null : map['siteVersion'] as int,
      smartRouting: map['smartRouting'] == null ? null : map['smartRouting'] as String,
      uploadMaxFilesize: map['uploadMaxFilesize'] == null ? null : map['uploadMaxFilesize'] as String,
      websocket: map['websocket'] == null ? null : map['websocket'] as String,
    );
  }
}

