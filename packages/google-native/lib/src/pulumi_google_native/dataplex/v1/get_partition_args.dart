// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getPartition.
class GetPartitionArgs {
  final Input<String> entityId;
  final Input<String> lakeId;
  final Input<String> location;
  final Input<String> partitionId;
  final Input<String>? project;
  final Input<String> zone;

  GetPartitionArgs({
    required this.entityId,
    required this.lakeId,
    required this.location,
    required this.partitionId,
    this.project,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['entityId'] = entityId;
    map['lakeId'] = lakeId;
    map['location'] = location;
    map['partitionId'] = partitionId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['zone'] = zone;
    return map;
  }

  factory GetPartitionArgs.fromMap(Map<String, dynamic> map) {
    return GetPartitionArgs(
      entityId: Input.asInput<String>(map['entityId']),
      lakeId: Input.asInput<String>(map['lakeId']),
      location: Input.asInput<String>(map['location']),
      partitionId: Input.asInput<String>(map['partitionId']),
      project: Input.asOptionalInput<String>(map['project']),
      zone: Input.asInput<String>(map['zone']),
    );
  }
}
