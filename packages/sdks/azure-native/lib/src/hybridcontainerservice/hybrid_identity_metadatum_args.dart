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
  const HybridIdentityMetadatumArgs({
    this.hybridIdentityMetadataResourceName,
    this.identity,
    this.publicKey,
    required this.resourceGroupName,
    required this.resourceName,
    this.resourceUid,
  });

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
      hybridIdentityMetadataResourceName: (() { final guardedValue = map['hybridIdentityMetadataResourceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProvisionedClusterIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      publicKey: (() { final guardedValue = map['publicKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      resourceName: pulumi.Input.fromValue(map['resourceName'] as String),
      resourceUid: (() { final guardedValue = map['resourceUid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

