// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getWorkload.
class GetWorkloadArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String> organizationId;
  final pulumi.Input<String> workloadId;

  GetWorkloadArgs({
    required this.location,
    required this.organizationId,
    required this.workloadId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    map['organizationId'] = organizationId;
    map['workloadId'] = workloadId;
    return map;
  }

  factory GetWorkloadArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkloadArgs(
      location: pulumi.Input.asInput<String>(map['location']),
      organizationId: pulumi.Input.asInput<String>(map['organizationId']),
      workloadId: pulumi.Input.asInput<String>(map['workloadId']),
    );
  }
}
