// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tag_response.dart';

/// Definition of awsEc2KeyPair
class AwsEc2KeyPairPropertiesResponse {
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
  final pulumi.Input<List<TagResponse>>? tags;

  /// Creates a new [AwsEc2KeyPairPropertiesResponse].
  /// [keyFingerprint] Property keyFingerprint
  /// [keyFormat] The format of the key pair. Default: ``pem``
  /// [keyName] A unique name for the key pair. Constraints: Up to 255 ASCII characters
  /// [keyPairId] Property keyPairId
  /// [keyType] The type of key pair. Note that ED25519 keys are not supported for Windows instances. If the ``PublicKeyMaterial`` property is specified, the ``KeyType`` property is ignored, and the key type is inferred from the ``PublicKeyMaterial`` value. Default: ``rsa``
  /// [publicKeyMaterial] The public key material. The ``PublicKeyMaterial`` property is used to import a key pair. If this property is not specified, then a new key pair will be created.
  /// [tags] The tags to apply to the key pair.
  const AwsEc2KeyPairPropertiesResponse({
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
      'tags': ?pulumi.Input.mapOptionalInputValue<List<TagResponse>, List<Map<String, dynamic>>>(tags, (value) => pulumi.Input.encodeList<TagResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AwsEc2KeyPairPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AwsEc2KeyPairPropertiesResponse(
      keyFingerprint: (() { final guardedValue = map['keyFingerprint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyFormat: (() { final guardedValue = map['keyFormat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyName: (() { final guardedValue = map['keyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyPairId: (() { final guardedValue = map['keyPairId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyType: (() { final guardedValue = map['keyType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicKeyMaterial: (() { final guardedValue = map['publicKeyMaterial']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TagResponse>(guardedValue, (value) => TagResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
