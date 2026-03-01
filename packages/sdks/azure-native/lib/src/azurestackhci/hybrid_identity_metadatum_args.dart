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
    pulumi.Output<String>? metadataName,
    pulumi.Output<String>? publicKey,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? resourceUid,
    required pulumi.Output<String> virtualMachineName,
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

  factory HybridIdentityMetadatumArgs.fromMap(Map<String, dynamic> map) {
    return HybridIdentityMetadatumArgs(
      metadataName: map['metadataName'] == null ? null : pulumi.Output.create<String>(map['metadataName'] as String),
      publicKey: map['publicKey'] == null ? null : pulumi.Output.create<String>(map['publicKey'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      resourceUid: map['resourceUid'] == null ? null : pulumi.Output.create<String>(map['resourceUid'] as String),
      virtualMachineName: pulumi.Output.create<String>(map['virtualMachineName'] as String),
    );
  }
}

