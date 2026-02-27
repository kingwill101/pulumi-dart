// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getRegionNotificationEndpoint.
class GetRegionNotificationEndpointArgs {
  final Input<String> notificationEndpoint;
  final Input<String>? project;
  final Input<String> region;

  GetRegionNotificationEndpointArgs({
    required this.notificationEndpoint,
    this.project,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['notificationEndpoint'] = notificationEndpoint;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['region'] = region;
    return map;
  }

  factory GetRegionNotificationEndpointArgs.fromMap(Map<String, dynamic> map) {
    return GetRegionNotificationEndpointArgs(
      notificationEndpoint: Input.asInput<String>(map['notificationEndpoint']),
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asInput<String>(map['region']),
    );
  }
}
