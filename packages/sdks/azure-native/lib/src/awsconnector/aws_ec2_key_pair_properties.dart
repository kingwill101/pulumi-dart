// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tag.dart';

/// Definition of awsEc2KeyPair
class AwsEc2KeyPairProperties {
  /// Property keyFingerprint
  final pulumi.Input<String>? keyFingerprint;
  /// The format of the key pair. Default: ``pem``
  final pulumi.Input<String>? keyFormat;
  /// A unique name for the key pair. Constraints: Up to 255 ASCII characters
  final pulumi.Input<String>? keyName;
  /// Property keyPairId
  final pulumi.Input<String>? keyPairId;
  /// The type of key pair. Note that ED25519 keys are not supported for Windows instances. If the ``PublicKeyMaterial`` property is specified, the ``KeyType`` property is ignored, and the key type is inferred from the ``PublicKeyMaterial`` value. Default: ``rsa``
  final pulumi.Input<String>? keyType;
  /// The public key material. The ``PublicKeyMaterial`` property is used to import a key pair. If this property is not specified, then a new key pair will be created.
  final pulumi.Input<String>? publicKeyMaterial;
  /// The tags to apply to the key pair.
  final pulumi.Input<List<Tag>>? tags;

  /// Creates a new [AwsEc2KeyPairProperties].
  /// [keyFingerprint] Property keyFingerprint
  /// [keyFormat] The format of the key pair. Default: ``pem``
  /// [keyName] A unique name for the key pair. Constraints: Up to 255 ASCII characters
  /// [keyPairId] Property keyPairId
  /// [keyType] The type of key pair. Note that ED25519 keys are not supported for Windows instances. If the ``PublicKeyMaterial`` property is specified, the ``KeyType`` property is ignored, and the key type is inferred from the ``PublicKeyMaterial`` value. Default: ``rsa``
  /// [publicKeyMaterial] The public key material. The ``PublicKeyMaterial`` property is used to import a key pair. If this property is not specified, then a new key pair will be created.
  /// [tags] The tags to apply to the key pair.
  AwsEc2KeyPairProperties({
    this.keyFingerprint,
    this.keyFormat,
    this.keyName,
    this.keyPairId,
    this.keyType,
    this.publicKeyMaterial,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyFingerprint': ?keyFingerprint,
      'keyFormat': ?keyFormat,
      'keyName': ?keyName,
      'keyPairId': ?keyPairId,
      'keyType': ?keyType,
      'publicKeyMaterial': ?publicKeyMaterial,
      'tags': ?pulumi.Input.mapOptionalInputValue<List<Tag>, List<Map<String, dynamic>>>(tags, (value) => pulumi.Input.encodeList<Tag, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AwsEc2KeyPairProperties.fromMap(Map<String, dynamic> map) {
    return AwsEc2KeyPairProperties(
      keyFingerprint: map['keyFingerprint'] == null ? null : (map['keyFingerprint']! as String).input(),
      keyFormat: map['keyFormat'] == null ? null : (map['keyFormat']! as String).input(),
      keyName: map['keyName'] == null ? null : (map['keyName']! as String).input(),
      keyPairId: map['keyPairId'] == null ? null : (map['keyPairId']! as String).input(),
      keyType: map['keyType'] == null ? null : (map['keyType']! as String).input(),
      publicKeyMaterial: map['publicKeyMaterial'] == null ? null : (map['publicKeyMaterial']! as String).input(),
      tags: map['tags'] == null ? null : (pulumi.Input.decodeList<Tag>(map['tags']!, (value) => Tag.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

