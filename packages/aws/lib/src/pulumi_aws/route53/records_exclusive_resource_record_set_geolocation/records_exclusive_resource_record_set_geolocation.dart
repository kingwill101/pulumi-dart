// ignore_for_file: unused_element, unnecessary_cast

class RecordsExclusiveResourceRecordSetGeolocation {
  final String? continentCode;
  final String? countryCode;
  final String? subdivisionCode;

  RecordsExclusiveResourceRecordSetGeolocation({
    this.continentCode,
    this.countryCode,
    this.subdivisionCode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final continentCodeValue = continentCode;
    if (continentCodeValue != null) {
      map['continentCode'] = continentCodeValue;
    }
    final countryCodeValue = countryCode;
    if (countryCodeValue != null) {
      map['countryCode'] = countryCodeValue;
    }
    final subdivisionCodeValue = subdivisionCode;
    if (subdivisionCodeValue != null) {
      map['subdivisionCode'] = subdivisionCodeValue;
    }
    return map;
  }

  factory RecordsExclusiveResourceRecordSetGeolocation.fromMap(
      Map<String, dynamic> map) {
    return RecordsExclusiveResourceRecordSetGeolocation(
      continentCode:
          map['continentCode'] == null ? null : map['continentCode'] as String,
      countryCode:
          map['countryCode'] == null ? null : map['countryCode'] as String,
      subdivisionCode: map['subdivisionCode'] == null
          ? null
          : map['subdivisionCode'] as String,
    );
  }
}
