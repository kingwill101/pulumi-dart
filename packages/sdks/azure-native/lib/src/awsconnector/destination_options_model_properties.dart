// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of DestinationOptionsModelProperties
class DestinationOptionsModelProperties {
  /// Property fileFormat
  final pulumi.Input<String>? fileFormat;
  /// Property hiveCompatiblePartitions
  final pulumi.Input<bool>? hiveCompatiblePartitions;
  /// Property perHourPartition
  final pulumi.Input<bool>? perHourPartition;

  /// Creates a new [DestinationOptionsModelProperties].
  /// [fileFormat] Property fileFormat
  /// [hiveCompatiblePartitions] Property hiveCompatiblePartitions
  /// [perHourPartition] Property perHourPartition
  const DestinationOptionsModelProperties({
    this.fileFormat,
    this.hiveCompatiblePartitions,
    this.perHourPartition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fileFormat': ?fileFormat,
      'hiveCompatiblePartitions': ?hiveCompatiblePartitions,
      'perHourPartition': ?perHourPartition,
    };
  }

  factory DestinationOptionsModelProperties.fromMap(Map<String, dynamic> map) {
    return DestinationOptionsModelProperties(
      fileFormat: (() { final guardedValue = map['fileFormat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hiveCompatiblePartitions: (() { final guardedValue = map['hiveCompatiblePartitions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      perHourPartition: (() { final guardedValue = map['perHourPartition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

