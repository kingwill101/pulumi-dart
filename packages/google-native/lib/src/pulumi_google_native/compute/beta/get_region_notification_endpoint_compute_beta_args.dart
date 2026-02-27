// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getRegionNotificationEndpoint.
class GetRegionNotificationEndpointComputeBetaArgs {
  final pulumi.Input<String> notificationEndpoint;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;

  GetRegionNotificationEndpointComputeBetaArgs({
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

  factory GetRegionNotificationEndpointComputeBetaArgs.fromMap(
      Map<String, dynamic> map) {
    return GetRegionNotificationEndpointComputeBetaArgs(
      notificationEndpoint:
          pulumi.Input.asInput<String>(map['notificationEndpoint']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      region: pulumi.Input.asInput<String>(map['region']),
    );
  }
}
