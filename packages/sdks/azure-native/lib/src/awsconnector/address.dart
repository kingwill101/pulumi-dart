// ignore_for_file: unused_element, unnecessary_cast


/// Definition of Address
class Address {
  /// Property addressDefinition
  final String? addressDefinition;

  /// Creates a new [Address].
  /// [addressDefinition] Property addressDefinition
  Address({
    this.addressDefinition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressDefinition': ?addressDefinition,
    };
  }

  factory Address.fromMap(Map<String, dynamic> map) {
    return Address(
      addressDefinition: map['addressDefinition'] == null ? null : map['addressDefinition'] as String,
    );
  }
}

