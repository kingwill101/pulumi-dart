// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_ssh_public_key_args_doc}
/// Arguments for getSshPublicKey.
/// {@endtemplate}
/// {@macro pulumi_compute_get_ssh_public_key_args_doc}
class GetSshPublicKeyArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the SSH public key.
  final pulumi.Input<String> sshPublicKeyName;

  /// Creates a new [GetSshPublicKeyArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sshPublicKeyName] The name of the SSH public key.
  GetSshPublicKeyArgs({
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> sshPublicKeyName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sshPublicKeyName = pulumi.Input.asInput<String>(sshPublicKeyName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'sshPublicKeyName': sshPublicKeyName,
    };
  }

  factory GetSshPublicKeyArgs.fromMap(Map<String, dynamic> map) {
    return GetSshPublicKeyArgs(
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sshPublicKeyName: pulumi.Output.create<String>(map['sshPublicKeyName'] as String),
    );
  }
}

