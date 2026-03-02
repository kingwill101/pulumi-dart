// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_mse_engine_namespace_engine_namespace_args_doc}
/// The set of arguments for EngineNamespace.
/// {@endtemplate}
/// {@macro pulumi_mse_engine_namespace_engine_namespace_args_doc}
class EngineNamespaceArgs {
  /// The language type of the returned information. Valid values: `zh`, `en`.
  final pulumi.Input<String>? acceptLanguage;
  /// The id of the cluster.It is formatted to `mse-xxxxxxxx`.
  final pulumi.Input<String>? clusterId;
  /// The instance id of the cluster. It is formatted to `mse-cn-xxxxxxxxxxx`.Available since v1.232.0.
  final pulumi.Input<String>? instanceId;
  /// The description of the namespace.
  ///
  /// **NOTE:** You must set `cluster_id` or `instance_id` or both.
  final pulumi.Input<String>? namespaceDesc;
  /// The id of Namespace.
  final pulumi.Input<String>? namespaceId;
  /// The name of the Engine Namespace.
  final pulumi.Input<String> namespaceShowName;

  /// Creates a new [EngineNamespaceArgs].
  /// [acceptLanguage] The language type of the returned information. Valid values: `zh`, `en`.
  /// [clusterId] The id of the cluster.It is formatted to `mse-xxxxxxxx`.
  /// [instanceId] The instance id of the cluster. It is formatted to `mse-cn-xxxxxxxxxxx`.Available since v1.232.0.
  /// [namespaceDesc] The description of the namespace.
  /// [namespaceId] The id of Namespace.
  /// [namespaceShowName] The name of the Engine Namespace.
  EngineNamespaceArgs({
    this.acceptLanguage,
    this.clusterId,
    this.instanceId,
    this.namespaceDesc,
    this.namespaceId,
    required this.namespaceShowName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceptLanguage': ?acceptLanguage,
      'clusterId': ?clusterId,
      'instanceId': ?instanceId,
      'namespaceDesc': ?namespaceDesc,
      'namespaceId': ?namespaceId,
      'namespaceShowName': namespaceShowName,
    };
  }

  factory EngineNamespaceArgs.fromMap(Map<String, dynamic> map) {
    return EngineNamespaceArgs(
      acceptLanguage: map['acceptLanguage'] == null ? null : (map['acceptLanguage'] as String).input(),
      clusterId: map['clusterId'] == null ? null : (map['clusterId'] as String).input(),
      instanceId: map['instanceId'] == null ? null : (map['instanceId'] as String).input(),
      namespaceDesc: map['namespaceDesc'] == null ? null : (map['namespaceDesc'] as String).input(),
      namespaceId: map['namespaceId'] == null ? null : (map['namespaceId'] as String).input(),
      namespaceShowName: (map['namespaceShowName'] as String).input(),
    );
  }
}

