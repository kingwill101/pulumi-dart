// ignore_for_file: unused_element, unnecessary_cast


/// Country Description
class CountryResponse {
  /// country code
  final String code;
  /// code description
  final String? description;

  /// Creates a new [CountryResponse].
  /// [code] country code
  /// [description] code description
  CountryResponse({
    required this.code,
    this.description,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
      'description': ?description,
    };
  }

  factory CountryResponse.fromMap(Map<String, dynamic> map) {
    return CountryResponse(
      code: map['code'] as String,
      description: map['description'] == null ? null : map['description'] as String,
    );
  }
}

