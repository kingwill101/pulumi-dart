// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getProvider.
class GetProviderArgs {
  final Input<String> location;
  final Input<String>? project;
  final Input<String> providerId;
  final Input<String> workloadIdentityPoolId;

  GetProviderArgs({
    required this.location,
    this.project,
    required this.providerId,
    required this.workloadIdentityPoolId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['providerId'] = providerId;
    map['workloadIdentityPoolId'] = workloadIdentityPoolId;
    return map;
  }

  factory GetProviderArgs.fromMap(Map<String, dynamic> map) {
    return GetProviderArgs(
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      providerId: Input.asInput<String>(map['providerId']),
      workloadIdentityPoolId:
          Input.asInput<String>(map['workloadIdentityPoolId']),
    );
  }
}
