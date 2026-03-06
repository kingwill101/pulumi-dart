// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DiJobJobSettingsColumnDataTypeSetting {
  /// The destination type of the mapping relationship
  final pulumi.Input<String>? destinationDataType;
  /// The source type of the mapping type
  final pulumi.Input<String>? sourceDataType;

  /// Creates a new [DiJobJobSettingsColumnDataTypeSetting].
  /// [destinationDataType] The destination type of the mapping relationship
  /// [sourceDataType] The source type of the mapping type
  const DiJobJobSettingsColumnDataTypeSetting({
    this.destinationDataType,
    this.sourceDataType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationDataType': ?destinationDataType,
      'sourceDataType': ?sourceDataType,
    };
  }

  factory DiJobJobSettingsColumnDataTypeSetting.fromMap(Map<String, dynamic> map) {
    return DiJobJobSettingsColumnDataTypeSetting(
      destinationDataType: (() { final guardedValue = map['destinationDataType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceDataType: (() { final guardedValue = map['sourceDataType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

