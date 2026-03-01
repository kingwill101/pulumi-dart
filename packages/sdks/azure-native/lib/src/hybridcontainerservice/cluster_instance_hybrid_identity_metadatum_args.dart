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
  final pulumi.Input<String>? publicKey;
  /// Unique id of the parent provisioned cluster resource.
  final pulumi.Input<String>? resourceUid;

  /// Creates a new [ClusterInstanceHybridIdentityMetadatumArgs].
  /// [connectedClusterResourceUri] The fully qualified Azure Resource Manager identifier of the connected cluster resource.
  /// [publicKey] Onboarding public key for provisioning the Managed identity for the connected cluster.
  /// [resourceUid] Unique id of the parent provisioned cluster resource.
  ClusterInstanceHybridIdentityMetadatumArgs({
    required pulumi.Output<String> connectedClusterResourceUri,
    pulumi.Output<String>? publicKey,
    pulumi.Output<String>? resourceUid,
  }) :
      connectedClusterResourceUri = pulumi.Input.asInput<String>(connectedClusterResourceUri),
      publicKey = pulumi.Input.asOptionalInput<String>(publicKey),
      resourceUid = pulumi.Input.asOptionalInput<String>(resourceUid);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectedClusterResourceUri': connectedClusterResourceUri,
      'publicKey': ?publicKey,
      'resourceUid': ?resourceUid,
    };
  }

  factory ClusterInstanceHybridIdentityMetadatumArgs.fromMap(Map<String, dynamic> map) {
    return ClusterInstanceHybridIdentityMetadatumArgs(
      connectedClusterResourceUri: pulumi.Output.create<String>(map['connectedClusterResourceUri'] as String),
      publicKey: map['publicKey'] == null ? null : pulumi.Output.create<String>(map['publicKey'] as String),
      resourceUid: map['resourceUid'] == null ? null : pulumi.Output.create<String>(map['resourceUid'] as String),
    );
  }
}

