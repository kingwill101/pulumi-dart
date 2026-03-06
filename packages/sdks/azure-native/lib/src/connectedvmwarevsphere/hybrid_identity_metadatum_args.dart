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
  const HybridIdentityMetadatumArgs({
    this.metadataName,
    this.publicKey,
    required this.resourceGroupName,
    required this.virtualMachineName,
    this.vmId,
  });

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
      metadataName: (() { final guardedValue = map['metadataName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicKey: (() { final guardedValue = map['publicKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      virtualMachineName: pulumi.Input.fromValue(map['virtualMachineName'] as String),
      vmId: (() { final guardedValue = map['vmId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

