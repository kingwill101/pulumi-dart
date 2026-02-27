// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getUser.
class GetUserAlloydbV1betaArgs {
  final pulumi.Input<String> clusterId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> userId;

  GetUserAlloydbV1betaArgs({
    required this.clusterId,
    required this.location,
    this.project,
    required this.userId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clusterId'] = clusterId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['userId'] = userId;
    return map;
  }

  factory GetUserAlloydbV1betaArgs.fromMap(Map<String, dynamic> map) {
    return GetUserAlloydbV1betaArgs(
      clusterId: pulumi.Input.asInput<String>(map['clusterId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      userId: pulumi.Input.asInput<String>(map['userId']),
    );
  }
}
