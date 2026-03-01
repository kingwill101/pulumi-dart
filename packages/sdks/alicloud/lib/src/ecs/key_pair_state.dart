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
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? fingerPrint,
    pulumi.Output<String>? keyFile,
    pulumi.Output<String>? keyName,
    pulumi.Output<String>? keyNamePrefix,
    pulumi.Output<String>? keyPairName,
    pulumi.Output<String>? publicKey,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      fingerPrint = pulumi.Input.asOptionalInput<String>(fingerPrint),
      keyFile = pulumi.Input.asOptionalInput<String>(keyFile),
      keyName = pulumi.Input.asOptionalInput<String>(keyName),
      keyNamePrefix = pulumi.Input.asOptionalInput<String>(keyNamePrefix),
      keyPairName = pulumi.Input.asOptionalInput<String>(keyPairName),
      publicKey = pulumi.Input.asOptionalInput<String>(publicKey),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      fingerPrint: map['fingerPrint'] == null ? null : pulumi.Output.create<String>(map['fingerPrint'] as String),
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

