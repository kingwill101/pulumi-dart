// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering EcsKeyPair resources.
class EcsKeyPairState {
  /// (Available since v1.237.0) The time when the key pair was created.
  final pulumi.Input<String>? createTime;
  /// The fingerprint of the key pair.
  final pulumi.Input<String>? fingerPrint;
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

  /// Creates a new [EcsKeyPairState].
  /// [createTime] (Available since v1.237.0) The time when the key pair was created.
  /// [fingerPrint] The fingerprint of the key pair.
  /// [keyFile] The key file.
  /// [keyName] Optional.
  /// [keyNamePrefix] Optional.
  /// [keyPairName] The name of the key pair. The name must be 2 to 128 characters in length. The name must start with a letter and cannot start with http:// or https://. The name can contain letters, digits, colons (:), underscores (_), and hyphens (-).
  /// [publicKey] The public key of the key pair.
  /// [resourceGroupId] The ID of the resource group to which to add the key pair.
  /// [tags] A mapping of tags to assign to the resource.
  EcsKeyPairState({
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

  factory EcsKeyPairState.fromMap(Map<String, dynamic> map) {
    return EcsKeyPairState(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fingerPrint: (() { final guardedValue = map['fingerPrint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyFile: (() { final guardedValue = map['keyFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyName: (() { final guardedValue = map['keyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyNamePrefix: (() { final guardedValue = map['keyNamePrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyPairName: (() { final guardedValue = map['keyPairName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicKey: (() { final guardedValue = map['publicKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

