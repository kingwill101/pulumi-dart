// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getWorkload.
class GetWorkloadArgs {
  final Input<String> location;
  final Input<String> organizationId;
  final Input<String> workloadId;

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
      location: Input.asInput<String>(map['location']),
      organizationId: Input.asInput<String>(map['organizationId']),
      workloadId: Input.asInput<String>(map['workloadId']),
    );
  }
}
