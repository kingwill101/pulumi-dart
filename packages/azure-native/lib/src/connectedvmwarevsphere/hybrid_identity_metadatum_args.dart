// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_connectedvmwarevsphere_hybrid_identity_metadatum_args_doc}
/// The set of arguments for HybridIdentityMetadatum.
/// {@endtemplate}
/// {@macro pulumi_connectedvmwarevsphere_hybrid_identity_metadatum_args_doc}
class HybridIdentityMetadatumArgs {
  /// Name of the hybridIdentityMetadata.
  final pulumi.Input<String>? metadataName;
  /// Gets or sets the Public Key.
  final pulumi.Input<String>? publicKey;
  /// The Resource Group Name.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the vm.
  final pulumi.Input<String> virtualMachineName;
  /// Gets or sets the Vm Id.
  final pulumi.Input<String>? vmId;

  /// Creates a new [HybridIdentityMetadatumArgs].
  /// [metadataName] Name of the hybridIdentityMetadata.
  /// [publicKey] Gets or sets the Public Key.
  /// [resourceGroupName] The Resource Group Name.
  /// [virtualMachineName] Name of the vm.
  /// [vmId] Gets or sets the Vm Id.
  HybridIdentityMetadatumArgs({
    String? metadataName,
    String? publicKey,
    required String resourceGroupName,
    required String virtualMachineName,
    String? vmId,
  }) :
      metadataName = pulumi.Input.asOptionalInput<String>(metadataName),
      publicKey = pulumi.Input.asOptionalInput<String>(publicKey),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      virtualMachineName = pulumi.Input.asInput<String>(virtualMachineName),
      vmId = pulumi.Input.asOptionalInput<String>(vmId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metadataName': ?metadataName,
      'publicKey': ?publicKey,
      'resourceGroupName': resourceGroupName,
      'virtualMachineName': virtualMachineName,
      'vmId': ?vmId,
    };
  }

  factory HybridIdentityMetadatumArgs.fromMap(Map<String, dynamic> map) {
    return HybridIdentityMetadatumArgs(
      metadataName: map['metadataName'] == null ? null : map['metadataName'] as String,
      publicKey: map['publicKey'] == null ? null : map['publicKey'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      virtualMachineName: map['virtualMachineName'] as String,
      vmId: map['vmId'] == null ? null : map['vmId'] as String,
    );
  }
}

