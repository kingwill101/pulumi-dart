// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering KeyPair resources.
class KeyPairState {
  final pulumi.Input<String>? createTime;
  final pulumi.Input<String>? fingerPrint;
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

  /// Creates a new [KeyPairState].
  /// [createTime] Optional.
  /// [fingerPrint] Optional.
  /// [keyFile] The name of file to save your new key pair's private key. Strongly suggest you to specified it when you creating key pair, otherwise, you wouldn't get its private key ever.
  /// [keyName] The key pair's name. It is the only in one Alicloud account.
  /// [keyNamePrefix] Optional.
  /// [keyPairName] Optional.
  /// [publicKey] You can import an existing public key and using Alicloud key pair to manage it. If this parameter is specified, `resource_group_id` is the key pair belongs.
  /// [resourceGroupId] The Id of resource group which the key pair belongs.
  /// [tags] Optional.
  KeyPairState({
    this.createTime,
    this.fingerPrint,
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
      'createTime': ?createTime,
      'fingerPrint': ?fingerPrint,
      'keyFile': ?keyFile,
      'keyName': ?keyName,
      'keyNamePrefix': ?keyNamePrefix,
      'keyPairName': ?keyPairName,
      'publicKey': ?publicKey,
      'resourceGroupId': ?resourceGroupId,
      'tags': ?tags,
    };
  }

  factory KeyPairState.fromMap(Map<String, dynamic> map) {
    return KeyPairState(
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      fingerPrint: map['fingerPrint'] == null ? null : (map['fingerPrint'] as String).input(),
      keyFile: map['keyFile'] == null ? null : (map['keyFile'] as String).input(),
      keyName: map['keyName'] == null ? null : (map['keyName'] as String).input(),
      keyNamePrefix: map['keyNamePrefix'] == null ? null : (map['keyNamePrefix'] as String).input(),
      keyPairName: map['keyPairName'] == null ? null : (map['keyPairName'] as String).input(),
      publicKey: map['publicKey'] == null ? null : (map['publicKey'] as String).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

