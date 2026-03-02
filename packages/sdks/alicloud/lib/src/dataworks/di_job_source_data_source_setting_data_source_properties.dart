// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DiJobSourceDataSourceSettingDataSourceProperties {
  /// Data Source Encoding
  final pulumi.Input<String>? encoding;
  /// Data Source Time Zone
  final pulumi.Input<String>? timezone;

  /// Creates a new [DiJobSourceDataSourceSettingDataSourceProperties].
  /// [encoding] Data Source Encoding
  /// [timezone] Data Source Time Zone
  DiJobSourceDataSourceSettingDataSourceProperties({
    this.encoding,
    this.timezone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encoding': ?encoding,
      'timezone': ?timezone,
    };
  }

  factory DiJobSourceDataSourceSettingDataSourceProperties.fromMap(Map<String, dynamic> map) {
    return DiJobSourceDataSourceSettingDataSourceProperties(
      encoding: map['encoding'] == null ? null : (map['encoding'] as String).input(),
      timezone: map['timezone'] == null ? null : (map['timezone'] as String).input(),
    );
  }
}

