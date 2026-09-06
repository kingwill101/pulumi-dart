// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_hybridcontainerservice_cluster_instance_hybrid_identity_metadatum_args_doc}
/// The set of arguments for ClusterInstanceHybridIdentityMetadatum.
/// {@endtemplate}
/// {@macro pulumi_hybridcontainerservice_cluster_instance_hybrid_identity_metadatum_args_doc}
class ClusterInstanceHybridIdentityMetadatumArgs {
  /// The fully qualified Azure Resource Manager identifier of the connected cluster resource.
  final pulumi.Input<String> connectedClusterResourceUri;
  /// Onboarding public key for provisioning the Managed identity for the connected cluster.
  final pulumi.Input<String?>? publicKey;
  /// Unique id of the parent provisioned cluster resource.
  final pulumi.Input<String?>? resourceUid;

  /// Creates a new [ClusterInstanceHybridIdentityMetadatumArgs].
  /// [connectedClusterResourceUri] The fully qualified Azure Resource Manager identifier of the connected cluster resource.
  /// [publicKey] Onboarding public key for provisioning the Managed identity for the connected cluster.
  /// [resourceUid] Unique id of the parent provisioned cluster resource.
  const ClusterInstanceHybridIdentityMetadatumArgs({
    required this.connectedClusterResourceUri,
    this.publicKey,
    this.resourceUid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectedClusterResourceUri': connectedClusterResourceUri,
      'publicKey': ?publicKey,
      'resourceUid': ?resourceUid,
    };
  }

  factory ClusterInstanceHybridIdentityMetadatumArgs.fromMap(Map<String, dynamic> map) {
    return ClusterInstanceHybridIdentityMetadatumArgs(
      connectedClusterResourceUri: pulumi.Input.fromValue(map['connectedClusterResourceUri'] as String),
      publicKey: (() { final guardedValue = map['publicKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceUid: (() { final guardedValue = map['resourceUid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
