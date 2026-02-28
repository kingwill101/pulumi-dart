// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataplex_v1_partition_args_doc}
/// The set of arguments for Partition.
/// {@endtemplate}
/// {@macro pulumi_dataplex_v1_partition_args_doc}
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

  /// Creates a new [PartitionArgs].
  /// [entityId] Required.
  /// [etag] Optional. The etag for this partition.
  /// [lakeId] Required.
  /// [location] Immutable. The location of the entity data within the partition, for example, gs://bucket/path/to/entity/key1=value1/key2=value2. Or projects//datasets//tables/
  /// [project] Optional.
  /// [values] Immutable. The set of values representing the partition, which correspond to the partition schema defined in the parent entity.
  /// [zone] Optional.
  PartitionArgs({
    required String entityId,
    String? etag,
    required String lakeId,
    String? location,
    String? project,
    required List<String> values,
    String? zone,
  })  : entityId = pulumi.Input.asInput<String>(entityId),
        etag = pulumi.Input.asOptionalInput<String>(etag),
        lakeId = pulumi.Input.asInput<String>(lakeId),
        location = pulumi.Input.asOptionalInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project),
        values = pulumi.Input.asInput<List<String>>(values),
        zone = pulumi.Input.asOptionalInput<String>(zone);

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
      entityId: map['entityId'] as String,
      etag: map['etag'] == null ? null : map['etag'] as String,
      lakeId: map['lakeId'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      values: (map['values'] as List).cast<String>(),
      zone: map['zone'] == null ? null : map['zone'] as String,
    );
  }
}
