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
  DestinationOptionsModelProperties({
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
      fileFormat: map['fileFormat'] == null ? null : (map['fileFormat']! as String).input(),
      hiveCompatiblePartitions: map['hiveCompatiblePartitions'] == null ? null : (map['hiveCompatiblePartitions']! as bool).input(),
      perHourPartition: map['perHourPartition'] == null ? null : (map['perHourPartition']! as bool).input(),
    );
  }
}

