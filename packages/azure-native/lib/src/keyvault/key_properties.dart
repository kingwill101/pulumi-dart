// ignore_for_file: unused_element, unnecessary_cast

import 'key_attributes.dart';
import 'key_release_policy.dart';
import 'rotation_policy.dart';

/// The properties of the key.
class KeyProperties {
  /// The attributes of the key.
  final KeyAttributes? attributes;
  /// The elliptic curve name. For valid values, see JsonWebKeyCurveName. Default for EC and EC-HSM keys is P-256
  final String? curveName;
  final List<String>? keyOps;
  /// The key size in bits. For example: 2048, 3072, or 4096 for RSA. Default for RSA and RSA-HSM keys is 2048. Exception made for bring your own key (BYOK), key exchange keys default to 4096.
  final int? keySize;
  /// The type of the key. For valid values, see JsonWebKeyType.
  final String? kty;
  /// Key release policy in response. It will be used for both output and input. Omitted if empty
  final KeyReleasePolicy? releasePolicy;
  /// Key rotation policy in response. It will be used for both output and input. Omitted if empty
  final RotationPolicy? rotationPolicy;

  /// Creates a new [KeyProperties].
  /// [attributes] The attributes of the key.
  /// [curveName] The elliptic curve name. For valid values, see JsonWebKeyCurveName. Default for EC and EC-HSM keys is P-256
  /// [keyOps] Optional.
  /// [keySize] The key size in bits. For example: 2048, 3072, or 4096 for RSA. Default for RSA and RSA-HSM keys is 2048. Exception made for bring your own key (BYOK), key exchange keys default to 4096.
  /// [kty] The type of the key. For valid values, see JsonWebKeyType.
  /// [releasePolicy] Key release policy in response. It will be used for both output and input. Omitted if empty
  /// [rotationPolicy] Key rotation policy in response. It will be used for both output and input. Omitted if empty
  KeyProperties({
    this.attributes,
    this.curveName,
    this.keyOps,
    this.keySize,
    this.kty,
    this.releasePolicy,
    this.rotationPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributes': ?attributes == null ? null : attributes!.toMap(),
      'curveName': ?curveName,
      'keyOps': ?keyOps,
      'keySize': ?keySize,
      'kty': ?kty,
      'releasePolicy': ?releasePolicy == null ? null : releasePolicy!.toMap(),
      'rotationPolicy': ?rotationPolicy == null ? null : rotationPolicy!.toMap(),
    };
  }

  factory KeyProperties.fromMap(Map<String, dynamic> map) {
    return KeyProperties(
      attributes: map['attributes'] == null ? null : KeyAttributes.fromMap((map['attributes'] as Map).cast<String, dynamic>()),
      curveName: map['curveName'] == null ? null : map['curveName'] as String,
      keyOps: map['keyOps'] == null ? null : (map['keyOps'] as List).cast<String>(),
      keySize: map['keySize'] == null ? null : map['keySize'] as int,
      kty: map['kty'] == null ? null : map['kty'] as String,
      releasePolicy: map['releasePolicy'] == null ? null : KeyReleasePolicy.fromMap((map['releasePolicy'] as Map).cast<String, dynamic>()),
      rotationPolicy: map['rotationPolicy'] == null ? null : RotationPolicy.fromMap((map['rotationPolicy'] as Map).cast<String, dynamic>()),
    );
  }
}

