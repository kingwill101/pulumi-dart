// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_attributes.dart';
import 'key_release_policy.dart';
import 'rotation_policy.dart';

/// The properties of the key.
class KeyProperties {
  /// The attributes of the key.
  final pulumi.Input<KeyAttributes>? attributes;
  /// The elliptic curve name. For valid values, see JsonWebKeyCurveName. Default for EC and EC-HSM keys is P-256
  final pulumi.Input<String>? curveName;
  final pulumi.Input<List<String>>? keyOps;
  /// The key size in bits. For example: 2048, 3072, or 4096 for RSA. Default for RSA and RSA-HSM keys is 2048. Exception made for bring your own key (BYOK), key exchange keys default to 4096.
  final pulumi.Input<int>? keySize;
  /// The type of the key. For valid values, see JsonWebKeyType.
  final pulumi.Input<String>? kty;
  /// Key release policy in response. It will be used for both output and input. Omitted if empty
  final pulumi.Input<KeyReleasePolicy>? releasePolicy;
  /// Key rotation policy in response. It will be used for both output and input. Omitted if empty
  final pulumi.Input<RotationPolicy>? rotationPolicy;

  /// Creates a new [KeyProperties].
  /// [attributes] The attributes of the key.
  /// [curveName] The elliptic curve name. For valid values, see JsonWebKeyCurveName. Default for EC and EC-HSM keys is P-256
  /// [keyOps] Optional.
  /// [keySize] The key size in bits. For example: 2048, 3072, or 4096 for RSA. Default for RSA and RSA-HSM keys is 2048. Exception made for bring your own key (BYOK), key exchange keys default to 4096.
  /// [kty] The type of the key. For valid values, see JsonWebKeyType.
  /// [releasePolicy] Key release policy in response. It will be used for both output and input. Omitted if empty
  /// [rotationPolicy] Key rotation policy in response. It will be used for both output and input. Omitted if empty
  const KeyProperties({
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
      'attributes': ?pulumi.Input.mapOptionalInputValue<KeyAttributes, Map<String, dynamic>>(attributes, (value) => value.toMap()),
      'curveName': ?curveName,
      'keyOps': ?keyOps,
      'keySize': ?keySize,
      'kty': ?kty,
      'releasePolicy': ?pulumi.Input.mapOptionalInputValue<KeyReleasePolicy, Map<String, dynamic>>(releasePolicy, (value) => value.toMap()),
      'rotationPolicy': ?pulumi.Input.mapOptionalInputValue<RotationPolicy, Map<String, dynamic>>(rotationPolicy, (value) => value.toMap()),
    };
  }

  factory KeyProperties.fromMap(Map<String, dynamic> map) {
    return KeyProperties(
      attributes: (() { final guardedValue = map['attributes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KeyAttributes.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      curveName: (() { final guardedValue = map['curveName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyOps: (() { final guardedValue = map['keyOps']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      keySize: (() { final guardedValue = map['keySize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      kty: (() { final guardedValue = map['kty']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      releasePolicy: (() { final guardedValue = map['releasePolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KeyReleasePolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      rotationPolicy: (() { final guardedValue = map['rotationPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RotationPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
