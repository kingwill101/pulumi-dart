// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getUser.
class GetUserArgs {
  final Input<String> clusterId;
  final Input<String> location;
  final Input<String>? project;
  final Input<String> userId;

  GetUserArgs({
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

  factory GetUserArgs.fromMap(Map<String, dynamic> map) {
    return GetUserArgs(
      clusterId: Input.asInput<String>(map['clusterId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      userId: Input.asInput<String>(map['userId']),
    );
  }
}
