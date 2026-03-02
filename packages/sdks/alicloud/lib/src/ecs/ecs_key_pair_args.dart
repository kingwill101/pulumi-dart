// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ecs_ecs_key_pair_ecs_key_pair_args_doc}
/// The set of arguments for EcsKeyPair.
/// {@endtemplate}
/// {@macro pulumi_ecs_ecs_key_pair_ecs_key_pair_args_doc}
class EcsKeyPairArgs {
  /// The key file.
  final pulumi.Input<String>? keyFile;
  final pulumi.Input<String>? keyName;
  final pulumi.Input<String>? keyNamePrefix;
  /// The name of the key pair. The name must be 2 to 128 characters in length. The name must start with a letter and cannot start with http:// or https://. The name can contain letters, digits, colons (:), underscores (_), and hyphens (-).
  final pulumi.Input<String>? keyPairName;
  /// The public key of the key pair.
  final pulumi.Input<String>? publicKey;
  /// The ID of the resource group to which to add the key pair.
  final pulumi.Input<String>? resourceGroupId;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [EcsKeyPairArgs].
  /// [keyFile] The key file.
  /// [keyName] Optional.
  /// [keyNamePrefix] Optional.
  /// [keyPairName] The name of the key pair. The name must be 2 to 128 characters in length. The name must start with a letter and cannot start with http:// or https://. The name can contain letters, digits, colons (:), underscores (_), and hyphens (-).
  /// [publicKey] The public key of the key pair.
  /// [resourceGroupId] The ID of the resource group to which to add the key pair.
  /// [tags] A mapping of tags to assign to the resource.
  EcsKeyPairArgs({
    this.keyFile,
    this.keyName,
    this.keyNamePrefix,
    this.keyPairName,
    this.publicKey,
    this.resourceGroupId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyFile': ?keyFile,
      'keyName': ?keyName,
      'keyNamePrefix': ?keyNamePrefix,
      'keyPairName': ?keyPairName,
      'publicKey': ?publicKey,
      'resourceGroupId': ?resourceGroupId,
      'tags': ?tags,
    };
  }

  factory EcsKeyPairArgs.fromMap(Map<String, dynamic> map) {
    return EcsKeyPairArgs(
      keyFile: map['keyFile'] == null ? null : (map['keyFile']! as String).input(),
      keyName: map['keyName'] == null ? null : (map['keyName']! as String).input(),
      keyNamePrefix: map['keyNamePrefix'] == null ? null : (map['keyNamePrefix']! as String).input(),
      keyPairName: map['keyPairName'] == null ? null : (map['keyPairName']! as String).input(),
      publicKey: map['publicKey'] == null ? null : (map['publicKey']! as String).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

