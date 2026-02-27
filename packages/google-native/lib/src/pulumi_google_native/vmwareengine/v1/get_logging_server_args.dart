// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getLoggingServer.
class GetLoggingServerArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String> loggingServerId;
  final pulumi.Input<String> privateCloudId;
  final pulumi.Input<String>? project;

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
      location: pulumi.Input.asInput<String>(map['location']),
      loggingServerId: pulumi.Input.asInput<String>(map['loggingServerId']),
      privateCloudId: pulumi.Input.asInput<String>(map['privateCloudId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
