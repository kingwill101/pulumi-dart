// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getWorkloadIdentityPool.
class GetWorkloadIdentityPoolArgs {
  /// The project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final Input<String>? project;

  /// The id of the pool which is the
  /// final component of the resource name.
  ///
  /// - - -
  final Input<String> workloadIdentityPoolId;

  GetWorkloadIdentityPoolArgs({
    this.project,
    required this.workloadIdentityPoolId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['workloadIdentityPoolId'] = workloadIdentityPoolId;
    return map;
  }

  factory GetWorkloadIdentityPoolArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkloadIdentityPoolArgs(
      project: Input.asOptionalInput<String>(map['project']),
      workloadIdentityPoolId:
          Input.asInput<String>(map['workloadIdentityPoolId']),
    );
  }
}
