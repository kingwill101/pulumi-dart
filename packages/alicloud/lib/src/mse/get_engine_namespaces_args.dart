// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_mse_get_engine_namespaces_get_engine_namespaces_args_doc}
/// Arguments for getEngineNamespaces.
/// {@endtemplate}
/// {@macro pulumi_mse_get_engine_namespaces_get_engine_namespaces_args_doc}
class GetEngineNamespacesArgs {
  /// The language type of the returned information. Valid values: `zh`, `en`.
  final pulumi.Input<String>? acceptLanguage;
  /// The ID of the cluster.
  final pulumi.Input<String>? clusterId;
  /// A list of Engine Namespace IDs. It is formatted to `<instance_id>:<namespace_id>`.
  final pulumi.Input<List<String>>? ids;
  /// The ID of the MSE Cluster Instance.It is formatted to `mse-cn-xxxxxxxxxxx`.Available since v1.232.0
  final pulumi.Input<String>? instanceId;
  /// File name where to save data source results (after running `pulumi preview`).
  ///
  /// **NOTE:** You must set `cluster_id` or `instance_id` or both.
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetEngineNamespacesArgs].
  /// [acceptLanguage] The language type of the returned information. Valid values: `zh`, `en`.
  /// [clusterId] The ID of the cluster.
  /// [ids] A list of Engine Namespace IDs. It is formatted to `<instance_id>:<namespace_id>`.
  /// [instanceId] The ID of the MSE Cluster Instance.It is formatted to `mse-cn-xxxxxxxxxxx`.Available since v1.232.0
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetEngineNamespacesArgs({
    String? acceptLanguage,
    String? clusterId,
    List<String>? ids,
    String? instanceId,
    String? outputFile,
  }) :
      acceptLanguage = pulumi.Input.asOptionalInput<String>(acceptLanguage),
      clusterId = pulumi.Input.asOptionalInput<String>(clusterId),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceptLanguage': ?acceptLanguage,
      'clusterId': ?clusterId,
      'ids': ?ids,
      'instanceId': ?instanceId,
      'outputFile': ?outputFile,
    };
  }

  factory GetEngineNamespacesArgs.fromMap(Map<String, dynamic> map) {
    return GetEngineNamespacesArgs(
      acceptLanguage: map['acceptLanguage'] == null ? null : map['acceptLanguage'] as String,
      clusterId: map['clusterId'] == null ? null : map['clusterId'] as String,
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      instanceId: map['instanceId'] == null ? null : map['instanceId'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
    );
  }
}

