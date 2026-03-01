// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataplex_v1_get_partition_args_doc}
/// Arguments for getPartition.
/// {@endtemplate}
/// {@macro pulumi_dataplex_v1_get_partition_args_doc}
class GetPartitionArgs {
  final pulumi.Input<String> entityId;
  final pulumi.Input<String> lakeId;
  final pulumi.Input<String> location;
  final pulumi.Input<String> partitionId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> zone;

  /// Creates a new [GetPartitionArgs].
  /// [entityId] Required.
  /// [lakeId] Required.
  /// [location] Required.
  /// [partitionId] Required.
  /// [project] Optional.
  /// [zone] Required.
  GetPartitionArgs({
    required String entityId,
    required String lakeId,
    required String location,
    required String partitionId,
    String? project,
    required String zone,
  }) : entityId = pulumi.Input.asInput<String>(entityId),
       lakeId = pulumi.Input.asInput<String>(lakeId),
       location = pulumi.Input.asInput<String>(location),
       partitionId = pulumi.Input.asInput<String>(partitionId),
       project = pulumi.Input.asOptionalInput<String>(project),
       zone = pulumi.Input.asInput<String>(zone);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entityId': entityId,
      'lakeId': lakeId,
      'location': location,
      'partitionId': partitionId,
      'project': ?project,
      'zone': zone,
    };
  }

  factory GetPartitionArgs.fromMap(Map<String, dynamic> map) {
    return GetPartitionArgs(
      entityId: map['entityId'] as String,
      lakeId: map['lakeId'] as String,
      location: map['location'] as String,
      partitionId: map['partitionId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      zone: map['zone'] as String,
    );
  }
}
