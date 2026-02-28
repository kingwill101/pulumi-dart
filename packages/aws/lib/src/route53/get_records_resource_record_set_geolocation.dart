// ignore_for_file: unused_element, unnecessary_cast

class GetRecordsResourceRecordSetGeolocation {
  /// The two-letter code for the continent.
  final String continentCode;

  /// The two-letter code for a country.
  final String countryCode;

  /// The two-letter code for a state of the United States.
  final String subdivisionCode;

  /// Creates a new [GetRecordsResourceRecordSetGeolocation].
  /// [continentCode] The two-letter code for the continent.
  /// [countryCode] The two-letter code for a country.
  /// [subdivisionCode] The two-letter code for a state of the United States.
  GetRecordsResourceRecordSetGeolocation({
    required this.continentCode,
    required this.countryCode,
    required this.subdivisionCode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['continentCode'] = continentCode;
    map['countryCode'] = countryCode;
    map['subdivisionCode'] = subdivisionCode;
    return map;
  }

  factory GetRecordsResourceRecordSetGeolocation.fromMap(
      Map<String, dynamic> map) {
    return GetRecordsResourceRecordSetGeolocation(
      continentCode: map['continentCode'] as String,
      countryCode: map['countryCode'] as String,
      subdivisionCode: map['subdivisionCode'] as String,
    );
  }
}
