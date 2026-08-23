// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_key_attribute_key_modes_of_use.dart';

class KeyKeyAttribute {
  /// Key algorithm to be use during creation of an AWS Payment Cryptography key.
  final pulumi.Input<String> keyAlgorithm;
  /// Type of AWS Payment Cryptography key to create.
  final pulumi.Input<String> keyClass;
  /// List of cryptographic operations that you can perform using the key.
  final pulumi.Input<List<KeyKeyAttributeKeyModesOfUse>>? keyModesOfUses;
  /// Cryptographic usage of an AWS Payment Cryptography key as defined in section A.5.2 of the TR-31 spec.
  final pulumi.Input<String> keyUsage;

  /// Creates a new [KeyKeyAttribute].
  /// [keyAlgorithm] Key algorithm to be use during creation of an AWS Payment Cryptography key.
  /// [keyClass] Type of AWS Payment Cryptography key to create.
  /// [keyModesOfUses] List of cryptographic operations that you can perform using the key.
  /// [keyUsage] Cryptographic usage of an AWS Payment Cryptography key as defined in section A.5.2 of the TR-31 spec.
  const KeyKeyAttribute({
    required this.keyAlgorithm,
    required this.keyClass,
    this.keyModesOfUses,
    required this.keyUsage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyAlgorithm': keyAlgorithm,
      'keyClass': keyClass,
      'keyModesOfUses': ?pulumi.Input.mapOptionalInputValue<List<KeyKeyAttributeKeyModesOfUse>, List<Map<String, dynamic>>>(keyModesOfUses, (value) => pulumi.Input.encodeList<KeyKeyAttributeKeyModesOfUse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'keyUsage': keyUsage,
    };
  }

  factory KeyKeyAttribute.fromMap(Map<String, dynamic> map) {
    return KeyKeyAttribute(
      keyAlgorithm: pulumi.Input.fromValue(map['keyAlgorithm'] as String),
      keyClass: pulumi.Input.fromValue(map['keyClass'] as String),
      keyModesOfUses: (() { final guardedValue = map['keyModesOfUses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<KeyKeyAttributeKeyModesOfUse>(guardedValue, (value) => KeyKeyAttributeKeyModesOfUse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      keyUsage: pulumi.Input.fromValue(map['keyUsage'] as String),
    );
  }
}
