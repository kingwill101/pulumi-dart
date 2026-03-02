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
    required this.devCenterName,
    required this.encryptionSetName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'devCenterName': devCenterName,
      'encryptionSetName': encryptionSetName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetEncryptionSetArgs.fromMap(Map<String, dynamic> map) {
    return GetEncryptionSetArgs(
      devCenterName: (map['devCenterName'] as String).input(),
      encryptionSetName: (map['encryptionSetName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

