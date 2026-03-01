// ignore_for_file: unused_element, unnecessary_cast

class RecordsExclusiveResourceRecordSetGeolocation {
  final String? continentCode;
  final String? countryCode;
  final String? subdivisionCode;

  /// Creates a new [RecordsExclusiveResourceRecordSetGeolocation].
  /// [continentCode] Optional.
  /// [countryCode] Optional.
  /// [subdivisionCode] Optional.
  RecordsExclusiveResourceRecordSetGeolocation({
    this.continentCode,
    this.countryCode,
    this.subdivisionCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'continentCode': ?continentCode,
      'countryCode': ?countryCode,
      'subdivisionCode': ?subdivisionCode,
    };
  }

  factory RecordsExclusiveResourceRecordSetGeolocation.fromMap(
    Map<String, dynamic> map,
  ) {
    return RecordsExclusiveResourceRecordSetGeolocation(
      continentCode: map['continentCode'] == null
          ? null
          : map['continentCode'] as String,
      countryCode: map['countryCode'] == null
          ? null
          : map['countryCode'] as String,
      subdivisionCode: map['subdivisionCode'] == null
          ? null
          : map['subdivisionCode'] as String,
    );
  }
}
