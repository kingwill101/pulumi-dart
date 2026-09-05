// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RecordsExclusiveResourceRecordSetGeolocation {
  /// Two-letter continent code.
  /// See the [AWS documentation](http://docs.aws.amazon.com/Route53/latest/APIReference/API_GetGeoLocation.html) for valid values.
  final pulumi.Input<String?>? continentCode;
  /// Two-letter country code.
  /// See the ISO standard linked from the [AWS documentation](http://docs.aws.amazon.com/Route53/latest/APIReference/API_GetGeoLocation.html) for valid values.
  final pulumi.Input<String?>? countryCode;
  /// Subdivision code.
  final pulumi.Input<String?>? subdivisionCode;

  /// Creates a new [RecordsExclusiveResourceRecordSetGeolocation].
  /// [continentCode] Two-letter continent code.
  /// [countryCode] Two-letter country code.
  /// [subdivisionCode] Subdivision code.
  const RecordsExclusiveResourceRecordSetGeolocation({
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

  factory RecordsExclusiveResourceRecordSetGeolocation.fromMap(Map<String, dynamic> map) {
    return RecordsExclusiveResourceRecordSetGeolocation(
      continentCode: (() { final guardedValue = map['continentCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      countryCode: (() { final guardedValue = map['countryCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subdivisionCode: (() { final guardedValue = map['subdivisionCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
