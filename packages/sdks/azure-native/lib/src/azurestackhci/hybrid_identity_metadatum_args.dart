// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_azurestackhci_hybrid_identity_metadatum_args_doc}
/// The set of arguments for HybridIdentityMetadatum.
/// {@endtemplate}
/// {@macro pulumi_azurestackhci_hybrid_identity_metadatum_args_doc}
class HybridIdentityMetadatumArgs {
  /// Name of the hybridIdentityMetadata.
  final pulumi.Input<String>? metadataName;
  /// The Public Key.
  final pulumi.Input<String>? publicKey;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The unique identifier for the resource.
  final pulumi.Input<String>? resourceUid;
  /// Name of the vm.
  final pulumi.Input<String> virtualMachineName;

  /// Creates a new [HybridIdentityMetadatumArgs].
  /// [metadataName] Name of the hybridIdentityMetadata.
  /// [publicKey] The Public Key.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceUid] The unique identifier for the resource.
  /// [virtualMachineName] Name of the vm.
  HybridIdentityMetadatumArgs({
    this.metadataName,
    this.publicKey,
    required this.resourceGroupName,
    this.resourceUid,
    required this.virtualMachineName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metadataName': ?metadataName,
      'publicKey': ?publicKey,
      'resourceGroupName': resourceGroupName,
      'resourceUid': ?resourceUid,
      'virtualMachineName': virtualMachineName,
    };
  }

  factory HybridIdentityMetadatumArgs.fromMap(Map<String, dynamic> map) {
    return HybridIdentityMetadatumArgs(
      metadataName: map['metadataName'] == null ? null : (map['metadataName']! as String).input(),
      publicKey: map['publicKey'] == null ? null : (map['publicKey']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      resourceUid: map['resourceUid'] == null ? null : (map['resourceUid']! as String).input(),
      virtualMachineName: (map['virtualMachineName'] as String).input(),
    );
  }
}

