// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRecordsResourceRecordSetGeolocation {
  /// The two-letter code for the continent.
  final pulumi.Input<String> continentCode;
  /// The two-letter code for a country.
  final pulumi.Input<String> countryCode;
  /// The two-letter code for a state of the United States.
  final pulumi.Input<String> subdivisionCode;

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
    return <String, dynamic>{
      'continentCode': continentCode,
      'countryCode': countryCode,
      'subdivisionCode': subdivisionCode,
    };
  }

  factory GetRecordsResourceRecordSetGeolocation.fromMap(Map<String, dynamic> map) {
    return GetRecordsResourceRecordSetGeolocation(
      continentCode: pulumi.Input.fromValue(map['continentCode'] as String),
      countryCode: pulumi.Input.fromValue(map['countryCode'] as String),
      subdivisionCode: pulumi.Input.fromValue(map['subdivisionCode'] as String),
    );
  }
}

