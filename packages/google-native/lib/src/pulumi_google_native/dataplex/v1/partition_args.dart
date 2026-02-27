// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Partition.
class PartitionArgs {
  final pulumi.Input<String> entityId;

  /// Optional. The etag for this partition.
  final pulumi.Input<String>? etag;
  final pulumi.Input<String> lakeId;

  /// Immutable. The location of the entity data within the partition, for example, gs://bucket/path/to/entity/key1=value1/key2=value2. Or projects//datasets//tables/
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;

  /// Immutable. The set of values representing the partition, which correspond to the partition schema defined in the parent entity.
  final pulumi.Input<List<String>> values;
  final pulumi.Input<String>? zone;

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
      entityId: pulumi.Input.asInput<String>(map['entityId']),
      etag: pulumi.Input.asOptionalInput<String>(map['etag']),
      lakeId: pulumi.Input.asInput<String>(map['lakeId']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      values: pulumi.Input.asInput<List<String>>(map['values']),
      zone: pulumi.Input.asOptionalInput<String>(map['zone']),
    );
  }
}
