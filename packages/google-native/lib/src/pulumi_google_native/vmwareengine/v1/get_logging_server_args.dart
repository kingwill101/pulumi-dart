// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getLoggingServer.
class GetLoggingServerArgs {
  final Input<String> location;
  final Input<String> loggingServerId;
  final Input<String> privateCloudId;
  final Input<String>? project;

  GetLoggingServerArgs({
    required this.location,
    required this.loggingServerId,
    required this.privateCloudId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    map['loggingServerId'] = loggingServerId;
    map['privateCloudId'] = privateCloudId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetLoggingServerArgs.fromMap(Map<String, dynamic> map) {
    return GetLoggingServerArgs(
      location: Input.asInput<String>(map['location']),
      loggingServerId: Input.asInput<String>(map['loggingServerId']),
      privateCloudId: Input.asInput<String>(map['privateCloudId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
