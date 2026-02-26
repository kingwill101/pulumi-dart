// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Partition.
class PartitionArgs {
  final Input<String> entityId;

  /// Optional. The etag for this partition.
  final Input<String>? etag;
  final Input<String> lakeId;

  /// Immutable. The location of the entity data within the partition, for example, gs://bucket/path/to/entity/key1=value1/key2=value2. Or projects//datasets//tables/
  final Input<String>? location;
  final Input<String>? project;

  /// Immutable. The set of values representing the partition, which correspond to the partition schema defined in the parent entity.
  final Input<List<String>> values;
  final Input<String>? zone;

  PartitionArgs({
    required this.entityId,
    this.etag,
    required this.lakeId,
    this.location,
    this.project,
    required this.values,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['entityId'] = entityId;
    final etagValue = etag;
    if (etagValue != null) {
      map['etag'] = etagValue;
    }
    map['lakeId'] = lakeId;
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['values'] = values;
    final zoneValue = zone;
    if (zoneValue != null) {
      map['zone'] = zoneValue;
    }
    return map;
  }

  factory PartitionArgs.fromMap(Map<String, dynamic> map) {
    return PartitionArgs(
      entityId: Input.asInput<String>(map['entityId']),
      etag: Input.asOptionalInput<String>(map['etag']),
      lakeId: Input.asInput<String>(map['lakeId']),
      location: Input.asOptionalInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      values: Input.asInput<List<String>>(map['values']),
      zone: Input.asOptionalInput<String>(map['zone']),
    );
  }
}
