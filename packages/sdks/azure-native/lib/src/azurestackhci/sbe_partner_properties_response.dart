// ignore_for_file: unused_element, unnecessary_cast


/// Solution builder extension (SBE) partner properties object.
class SbePartnerPropertiesResponse {
  /// SBE partner property name.
  final String? name;
  /// SBE partner property value.
  final String? value;

  /// Creates a new [SbePartnerPropertiesResponse].
  /// [name] SBE partner property name.
  /// [value] SBE partner property value.
  SbePartnerPropertiesResponse({
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'value': ?value,
    };
  }

  factory SbePartnerPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return SbePartnerPropertiesResponse(
      name: map['name'] == null ? null : map['name'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

