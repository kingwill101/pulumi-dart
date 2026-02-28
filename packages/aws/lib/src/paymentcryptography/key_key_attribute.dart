// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_key_attribute_key_modes_of_use.dart';

class KeyKeyAttribute {
  /// Key algorithm to be use during creation of an AWS Payment Cryptography key.
  final String keyAlgorithm;
  /// Type of AWS Payment Cryptography key to create.
  final String keyClass;
  /// List of cryptographic operations that you can perform using the key.
  final List<KeyKeyAttributeKeyModesOfUse>? keyModesOfUses;
  /// Cryptographic usage of an AWS Payment Cryptography key as defined in section A.5.2 of the TR-31 spec.
  final String keyUsage;

  /// Creates a new [KeyKeyAttribute].
  /// [keyAlgorithm] Key algorithm to be use during creation of an AWS Payment Cryptography key.
  /// [keyClass] Type of AWS Payment Cryptography key to create.
  /// [keyModesOfUses] List of cryptographic operations that you can perform using the key.
  /// [keyUsage] Cryptographic usage of an AWS Payment Cryptography key as defined in section A.5.2 of the TR-31 spec.
  KeyKeyAttribute({
    required this.keyAlgorithm,
    required this.keyClass,
    this.keyModesOfUses,
    required this.keyUsage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyAlgorithm': keyAlgorithm,
      'keyClass': keyClass,
      'keyModesOfUses': ?keyModesOfUses == null ? null : pulumi.Input.encodeList<KeyKeyAttributeKeyModesOfUse, Map<String, dynamic>>(keyModesOfUses!, (value) => value.toMap()),
      'keyUsage': keyUsage,
    };
  }

  factory KeyKeyAttribute.fromMap(Map<String, dynamic> map) {
    return KeyKeyAttribute(
      keyAlgorithm: map['keyAlgorithm'] as String,
      keyClass: map['keyClass'] as String,
      keyModesOfUses: map['keyModesOfUses'] == null ? null : pulumi.Input.decodeList<KeyKeyAttributeKeyModesOfUse>(map['keyModesOfUses'], (value) => KeyKeyAttributeKeyModesOfUse.fromMap((value as Map).cast<String, dynamic>())),
      keyUsage: map['keyUsage'] as String,
    );
  }
}

