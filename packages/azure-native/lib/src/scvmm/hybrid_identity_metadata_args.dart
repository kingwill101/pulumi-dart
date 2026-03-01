// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_scvmm_hybrid_identity_metadata_args_doc}
/// The set of arguments for HybridIdentityMetadata.
/// {@endtemplate}
/// {@macro pulumi_scvmm_hybrid_identity_metadata_args_doc}
class HybridIdentityMetadataArgs {
  /// Name of the hybridIdentityMetadata.
  final pulumi.Input<String>? metadataName;
  /// Gets or sets the Public Key.
  final pulumi.Input<String>? publicKey;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// Gets or sets the Vm Id.
  final pulumi.Input<String>? resourceUid;
  /// Name of the vm.
  final pulumi.Input<String> virtualMachineName;

  /// Creates a new [HybridIdentityMetadataArgs].
  /// [metadataName] Name of the hybridIdentityMetadata.
  /// [publicKey] Gets or sets the Public Key.
  /// [resourceGroupName] The name of the resource group.
  /// [resourceUid] Gets or sets the Vm Id.
  /// [virtualMachineName] Name of the vm.
  HybridIdentityMetadataArgs({
    String? metadataName,
    String? publicKey,
    required String resourceGroupName,
    String? resourceUid,
    required String virtualMachineName,
  }) :
      metadataName = pulumi.Input.asOptionalInput<String>(metadataName),
      publicKey = pulumi.Input.asOptionalInput<String>(publicKey),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceUid = pulumi.Input.asOptionalInput<String>(resourceUid),
      virtualMachineName = pulumi.Input.asInput<String>(virtualMachineName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metadataName': ?metadataName,
      'publicKey': ?publicKey,
      'resourceGroupName': resourceGroupName,
      'resourceUid': ?resourceUid,
      'virtualMachineName': virtualMachineName,
    };
  }

  factory HybridIdentityMetadataArgs.fromMap(Map<String, dynamic> map) {
    return HybridIdentityMetadataArgs(
      metadataName: map['metadataName'] == null ? null : map['metadataName'] as String,
      publicKey: map['publicKey'] == null ? null : map['publicKey'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      resourceUid: map['resourceUid'] == null ? null : map['resourceUid'] as String,
      virtualMachineName: map['virtualMachineName'] as String,
    );
  }
}

