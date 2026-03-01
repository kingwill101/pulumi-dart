// ignore_for_file: unused_element, unnecessary_cast


/// Definition of Address
class AddressResponse {
  /// Property addressDefinition
  final String? addressDefinition;

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
      addressDefinition: map['addressDefinition'] == null ? null : map['addressDefinition'] as String,
    );
  }
}

