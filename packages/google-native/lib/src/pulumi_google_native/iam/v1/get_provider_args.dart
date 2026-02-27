// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getProvider.
class GetProviderArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> providerId;
  final pulumi.Input<String> workloadIdentityPoolId;

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
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      providerId: pulumi.Input.asInput<String>(map['providerId']),
      workloadIdentityPoolId:
          pulumi.Input.asInput<String>(map['workloadIdentityPoolId']),
    );
  }
}
