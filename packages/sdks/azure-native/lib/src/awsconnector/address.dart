// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of Address
class Address {
  /// Property addressDefinition
  final pulumi.Input<String?>? addressDefinition;

  /// Creates a new [Address].
  /// [addressDefinition] Property addressDefinition
  const Address({
    this.addressDefinition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressDefinition': ?addressDefinition,
    };
  }

  factory Address.fromMap(Map<String, dynamic> map) {
    return Address(
      addressDefinition: (() { final guardedValue = map['addressDefinition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
