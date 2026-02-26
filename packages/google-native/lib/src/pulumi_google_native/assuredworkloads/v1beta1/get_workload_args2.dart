// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getWorkload.
class GetWorkloadArgs2 {
  final Input<String> location;
  final Input<String> organizationId;
  final Input<String> workloadId;

  GetWorkloadArgs2({
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

  factory GetWorkloadArgs2.fromMap(Map<String, dynamic> map) {
    return GetWorkloadArgs2(
      location: Input.asInput<String>(map['location']),
      organizationId: Input.asInput<String>(map['organizationId']),
      workloadId: Input.asInput<String>(map['workloadId']),
    );
  }
}
