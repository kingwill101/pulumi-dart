// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_devcenter_get_encryption_set_args_doc}
/// Arguments for getEncryptionSet.
/// {@endtemplate}
/// {@macro pulumi_devcenter_get_encryption_set_args_doc}
class GetEncryptionSetArgs {
  /// The name of the devcenter.
  final pulumi.Input<String> devCenterName;
  /// The name of the devcenter encryption set.
  final pulumi.Input<String> encryptionSetName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetEncryptionSetArgs].
  /// [devCenterName] The name of the devcenter.
  /// [encryptionSetName] The name of the devcenter encryption set.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetEncryptionSetArgs({
    required pulumi.Output<String> devCenterName,
    required pulumi.Output<String> encryptionSetName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      devCenterName = pulumi.Input.asInput<String>(devCenterName),
      encryptionSetName = pulumi.Input.asInput<String>(encryptionSetName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'devCenterName': devCenterName,
      'encryptionSetName': encryptionSetName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetEncryptionSetArgs.fromMap(Map<String, dynamic> map) {
    return GetEncryptionSetArgs(
      devCenterName: pulumi.Output.create<String>(map['devCenterName'] as String),
      encryptionSetName: pulumi.Output.create<String>(map['encryptionSetName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

