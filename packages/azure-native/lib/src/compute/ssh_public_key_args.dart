// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_ssh_public_key_args_doc}
/// The set of arguments for SshPublicKey.
/// {@endtemplate}
/// {@macro pulumi_compute_ssh_public_key_args_doc}
class SshPublicKeyArgs {
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// SSH public key used to authenticate to a virtual machine through ssh. If this property is not initially provided when the resource is created, the publicKey property will be populated when generateKeyPair is called. If the public key is provided upon resource creation, the provided public key needs to be at least 2048-bit and in ssh-rsa format.
  final pulumi.Input<String>? publicKey;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the SSH public key.
  final pulumi.Input<String>? sshPublicKeyName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [SshPublicKeyArgs].
  /// [location] The geo-location where the resource lives
  /// [publicKey] SSH public key used to authenticate to a virtual machine through ssh. If this property is not initially provided when the resource is created, the publicKey property will be populated when generateKeyPair is called. If the public key is provided upon resource creation, the provided public key needs to be at least 2048-bit and in ssh-rsa format.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sshPublicKeyName] The name of the SSH public key.
  /// [tags] Resource tags.
  SshPublicKeyArgs({
    String? location,
    String? publicKey,
    required String resourceGroupName,
    String? sshPublicKeyName,
    Map<String, String>? tags,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      publicKey = pulumi.Input.asOptionalInput<String>(publicKey),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sshPublicKeyName = pulumi.Input.asOptionalInput<String>(sshPublicKeyName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'publicKey': ?publicKey,
      'resourceGroupName': resourceGroupName,
      'sshPublicKeyName': ?sshPublicKeyName,
      'tags': ?tags,
    };
  }

  factory SshPublicKeyArgs.fromMap(Map<String, dynamic> map) {
    return SshPublicKeyArgs(
      location: map['location'] == null ? null : map['location'] as String,
      publicKey: map['publicKey'] == null ? null : map['publicKey'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      sshPublicKeyName: map['sshPublicKeyName'] == null ? null : map['sshPublicKeyName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

