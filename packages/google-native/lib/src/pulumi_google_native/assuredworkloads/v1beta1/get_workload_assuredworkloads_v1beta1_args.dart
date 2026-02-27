// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getWorkload.
class GetWorkloadAssuredworkloadsV1beta1Args {
  final pulumi.Input<String> location;
  final pulumi.Input<String> organizationId;
  final pulumi.Input<String> workloadId;

  GetWorkloadAssuredworkloadsV1beta1Args({
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

  factory GetWorkloadAssuredworkloadsV1beta1Args.fromMap(
      Map<String, dynamic> map) {
    return GetWorkloadAssuredworkloadsV1beta1Args(
      location: pulumi.Input.asInput<String>(map['location']),
      organizationId: pulumi.Input.asInput<String>(map['organizationId']),
      workloadId: pulumi.Input.asInput<String>(map['workloadId']),
    );
  }
}
