// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'provisioned_cluster_identity.dart';

/// {@template pulumi_hybridcontainerservice_hybrid_identity_metadatum_args_doc}
/// The set of arguments for HybridIdentityMetadatum.
/// {@endtemplate}
/// {@macro pulumi_hybridcontainerservice_hybrid_identity_metadatum_args_doc}
class HybridIdentityMetadatumArgs {
  /// Parameter for the name of the hybrid identity metadata resource.
  final pulumi.Input<String>? hybridIdentityMetadataResourceName;
  /// The identity of the provisioned cluster.
  final pulumi.Input<ProvisionedClusterIdentity>? identity;
  /// Onboarding public key for provisioning the Managed identity for the HybridAKS cluster.
  final pulumi.Input<String>? publicKey;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Parameter for the name of the provisioned cluster
  final pulumi.Input<String> resourceName;
  /// Unique id of the parent provisioned cluster resource.
  final pulumi.Input<String>? resourceUid;

  /// Creates a new [HybridIdentityMetadatumArgs].
  /// [hybridIdentityMetadataResourceName] Parameter for the name of the hybrid identity metadata resource.
  /// [identity] The identity of the provisioned cluster.
  /// [publicKey] Onboarding public key for provisioning the Managed identity for the HybridAKS cluster.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceName] Parameter for the name of the provisioned cluster
  /// [resourceUid] Unique id of the parent provisioned cluster resource.
  HybridIdentityMetadatumArgs({
    pulumi.Output<String>? hybridIdentityMetadataResourceName,
    pulumi.Output<ProvisionedClusterIdentity>? identity,
    pulumi.Output<String>? publicKey,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> resourceName,
    pulumi.Output<String>? resourceUid,
  }) :
      hybridIdentityMetadataResourceName = pulumi.Input.asOptionalInput<String>(hybridIdentityMetadataResourceName),
      identity = pulumi.Input.asOptionalInput<ProvisionedClusterIdentity>(identity),
      publicKey = pulumi.Input.asOptionalInput<String>(publicKey),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceName = pulumi.Input.asInput<String>(resourceName),
      resourceUid = pulumi.Input.asOptionalInput<String>(resourceUid);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hybridIdentityMetadataResourceName': ?hybridIdentityMetadataResourceName,
      'identity': ?pulumi.Input.mapOptionalInputValue<ProvisionedClusterIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'publicKey': ?publicKey,
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
      'resourceUid': ?resourceUid,
    };
  }

  factory HybridIdentityMetadatumArgs.fromMap(Map<String, dynamic> map) {
    return HybridIdentityMetadatumArgs(
      hybridIdentityMetadataResourceName: map['hybridIdentityMetadataResourceName'] == null ? null : pulumi.Output.create<String>(map['hybridIdentityMetadataResourceName'] as String),
      identity: map['identity'] == null ? null : pulumi.Output.create<ProvisionedClusterIdentity>(ProvisionedClusterIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      publicKey: map['publicKey'] == null ? null : pulumi.Output.create<String>(map['publicKey'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      resourceName: pulumi.Output.create<String>(map['resourceName'] as String),
      resourceUid: map['resourceUid'] == null ? null : pulumi.Output.create<String>(map['resourceUid'] as String),
    );
  }
}

