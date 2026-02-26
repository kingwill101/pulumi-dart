// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getWorkloadIdentityPoolKey.
class GetWorkloadIdentityPoolKeyArgs {
  final Input<String> keyId;
  final Input<String> location;
  final Input<String>? project;
  final Input<String> providerId;
  final Input<String> workloadIdentityPoolId;

  GetWorkloadIdentityPoolKeyArgs({
    required this.keyId,
    required this.location,
    this.project,
    required this.providerId,
    required this.workloadIdentityPoolId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['keyId'] = keyId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['providerId'] = providerId;
    map['workloadIdentityPoolId'] = workloadIdentityPoolId;
    return map;
  }

  factory GetWorkloadIdentityPoolKeyArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkloadIdentityPoolKeyArgs(
      keyId: Input.asInput<String>(map['keyId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      providerId: Input.asInput<String>(map['providerId']),
      workloadIdentityPoolId:
          Input.asInput<String>(map['workloadIdentityPoolId']),
    );
  }
}
