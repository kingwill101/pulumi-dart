// ignore_for_file: unused_element, unnecessary_cast


/// Definition of DestinationOptionsModelProperties
class DestinationOptionsModelPropertiesResponse {
  /// Property fileFormat
  final String? fileFormat;
  /// Property hiveCompatiblePartitions
  final bool? hiveCompatiblePartitions;
  /// Property perHourPartition
  final bool? perHourPartition;

  /// Creates a new [DestinationOptionsModelPropertiesResponse].
  /// [fileFormat] Property fileFormat
  /// [hiveCompatiblePartitions] Property hiveCompatiblePartitions
  /// [perHourPartition] Property perHourPartition
  DestinationOptionsModelPropertiesResponse({
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

  factory DestinationOptionsModelPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return DestinationOptionsModelPropertiesResponse(
      fileFormat: map['fileFormat'] == null ? null : map['fileFormat'] as String,
      hiveCompatiblePartitions: map['hiveCompatiblePartitions'] == null ? null : map['hiveCompatiblePartitions'] as bool,
      perHourPartition: map['perHourPartition'] == null ? null : map['perHourPartition'] as bool,
    );
  }
}

