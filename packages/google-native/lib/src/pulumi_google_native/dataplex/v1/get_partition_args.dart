// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getPartition.
class GetPartitionArgs {
  final pulumi.Input<String> entityId;
  final pulumi.Input<String> lakeId;
  final pulumi.Input<String> location;
  final pulumi.Input<String> partitionId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> zone;

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
      entityId: pulumi.Input.asInput<String>(map['entityId']),
      lakeId: pulumi.Input.asInput<String>(map['lakeId']),
      location: pulumi.Input.asInput<String>(map['location']),
      partitionId: pulumi.Input.asInput<String>(map['partitionId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      zone: pulumi.Input.asInput<String>(map['zone']),
    );
  }
}
