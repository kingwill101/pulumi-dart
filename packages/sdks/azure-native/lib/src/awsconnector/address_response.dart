// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of Address
class AddressResponse {
  /// Property addressDefinition
  final pulumi.Input<String>? addressDefinition;

  /// Creates a new [AddressResponse].
  /// [addressDefinition] Property addressDefinition
  AddressResponse({
    this.addressDefinition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressDefinition': ?addressDefinition,
    };
  }

  factory AddressResponse.fromMap(Map<String, dynamic> map) {
    return AddressResponse(
      addressDefinition: map['addressDefinition'] == null ? null : (map['addressDefinition']! as String).input(),
    );
  }
}

