// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getWorkloadIdentityPool.
class GetWorkloadIdentityPoolArgs {
  final Input<String> location;
  final Input<String>? project;
  final Input<String> workloadIdentityPoolId;

  GetWorkloadIdentityPoolArgs({
    required this.location,
    this.project,
    required this.workloadIdentityPoolId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['workloadIdentityPoolId'] = workloadIdentityPoolId;
    return map;
  }

  factory GetWorkloadIdentityPoolArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkloadIdentityPoolArgs(
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      workloadIdentityPoolId:
          Input.asInput<String>(map['workloadIdentityPoolId']),
    );
  }
}
