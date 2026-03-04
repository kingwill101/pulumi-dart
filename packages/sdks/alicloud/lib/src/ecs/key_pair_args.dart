// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ecs_key_pair_key_pair_args_doc}
/// The set of arguments for KeyPair.
/// {@endtemplate}
/// {@macro pulumi_ecs_key_pair_key_pair_args_doc}
class KeyPairArgs {
  /// The name of file to save your new key pair's private key. Strongly suggest you to specified it when you creating key pair, otherwise, you wouldn't get its private key ever.
  final pulumi.Input<String>? keyFile;

  /// The key pair's name. It is the only in one Alicloud account.
  final pulumi.Input<String>? keyName;
  final pulumi.Input<String>? keyNamePrefix;
  final pulumi.Input<String>? keyPairName;

  /// You can import an existing public key and using Alicloud key pair to manage it. If this parameter is specified, `resource_group_id` is the key pair belongs.
  final pulumi.Input<String>? publicKey;

  /// The Id of resource group which the key pair belongs.
  final pulumi.Input<String>? resourceGroupId;
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [KeyPairArgs].
  /// [keyFile] The name of file to save your new key pair's private key. Strongly suggest you to specified it when you creating key pair, otherwise, you wouldn't get its private key ever.
  /// [keyName] The key pair's name. It is the only in one Alicloud account.
  /// [keyNamePrefix] Optional.
  /// [keyPairName] Optional.
  /// [publicKey] You can import an existing public key and using Alicloud key pair to manage it. If this parameter is specified, `resource_group_id` is the key pair belongs.
  /// [resourceGroupId] The Id of resource group which the key pair belongs.
  /// [tags] Optional.
  KeyPairArgs({
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

  factory KeyPairArgs.fromMap(Map<String, dynamic> map) {
    return KeyPairArgs(
      keyFile: (() {
        final guardedValue = map['keyFile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      keyName: (() {
        final guardedValue = map['keyName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      keyNamePrefix: (() {
        final guardedValue = map['keyNamePrefix'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      keyPairName: (() {
        final guardedValue = map['keyPairName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      publicKey: (() {
        final guardedValue = map['publicKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupId: (() {
        final guardedValue = map['resourceGroupId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
