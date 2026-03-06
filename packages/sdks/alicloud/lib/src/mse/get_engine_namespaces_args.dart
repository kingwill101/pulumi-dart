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
  /// A list of Engine Namespace IDs. It is formatted to `&lt;instance_id&gt;:&lt;namespace_id&gt;`.
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
  /// [ids] A list of Engine Namespace IDs. It is formatted to `&lt;instance_id&gt;:&lt;namespace_id&gt;`.
  /// [instanceId] The ID of the MSE Cluster Instance.It is formatted to `mse-cn-xxxxxxxxxxx`.Available since v1.232.0
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  const GetEngineNamespacesArgs({
    this.acceptLanguage,
    this.clusterId,
    this.ids,
    this.instanceId,
    this.outputFile,
  });

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
      acceptLanguage: (() { final guardedValue = map['acceptLanguage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clusterId: (() { final guardedValue = map['clusterId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      instanceId: (() { final guardedValue = map['instanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

