// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getWorkloadIdentityPoolProvider.
class GetWorkloadIdentityPoolProviderArgs {
  /// The project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final Input<String>? project;

  /// The id of the pool which is the
  /// final component of the pool resource name.
  final Input<String> workloadIdentityPoolId;

  /// The id of the provider which is the
  /// final component of the resource name.
  ///
  /// - - -
  final Input<String> workloadIdentityPoolProviderId;

  GetWorkloadIdentityPoolProviderArgs({
    this.project,
    required this.workloadIdentityPoolId,
    required this.workloadIdentityPoolProviderId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['workloadIdentityPoolId'] = workloadIdentityPoolId;
    map['workloadIdentityPoolProviderId'] = workloadIdentityPoolProviderId;
    return map;
  }

  factory GetWorkloadIdentityPoolProviderArgs.fromMap(
      Map<String, dynamic> map) {
    return GetWorkloadIdentityPoolProviderArgs(
      project: Input.asOptionalInput<String>(map['project']),
      workloadIdentityPoolId:
          Input.asInput<String>(map['workloadIdentityPoolId']),
      workloadIdentityPoolProviderId:
          Input.asInput<String>(map['workloadIdentityPoolProviderId']),
    );
  }
}
