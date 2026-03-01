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
    pulumi.Output<String>? keyFile,
    pulumi.Output<String>? keyName,
    pulumi.Output<String>? keyNamePrefix,
    pulumi.Output<String>? keyPairName,
    pulumi.Output<String>? publicKey,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      keyFile = pulumi.Input.asOptionalInput<String>(keyFile),
      keyName = pulumi.Input.asOptionalInput<String>(keyName),
      keyNamePrefix = pulumi.Input.asOptionalInput<String>(keyNamePrefix),
      keyPairName = pulumi.Input.asOptionalInput<String>(keyPairName),
      publicKey = pulumi.Input.asOptionalInput<String>(publicKey),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      keyFile: map['keyFile'] == null ? null : pulumi.Output.create<String>(map['keyFile'] as String),
      keyName: map['keyName'] == null ? null : pulumi.Output.create<String>(map['keyName'] as String),
      keyNamePrefix: map['keyNamePrefix'] == null ? null : pulumi.Output.create<String>(map['keyNamePrefix'] as String),
      keyPairName: map['keyPairName'] == null ? null : pulumi.Output.create<String>(map['keyPairName'] as String),
      publicKey: map['publicKey'] == null ? null : pulumi.Output.create<String>(map['publicKey'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

