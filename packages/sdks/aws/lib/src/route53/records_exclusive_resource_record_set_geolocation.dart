// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RecordsExclusiveResourceRecordSetGeolocation {
  final pulumi.Input<String>? continentCode;
  final pulumi.Input<String>? countryCode;
  final pulumi.Input<String>? subdivisionCode;

  /// Creates a new [RecordsExclusiveResourceRecordSetGeolocation].
  /// [continentCode] Optional.
  /// [countryCode] Optional.
  /// [subdivisionCode] Optional.
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

