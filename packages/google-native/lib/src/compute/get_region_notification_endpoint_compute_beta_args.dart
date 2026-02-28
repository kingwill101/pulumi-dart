// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_beta_get_region_notification_endpoint_compute_beta_args_doc}
/// Arguments for getRegionNotificationEndpoint.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_get_region_notification_endpoint_compute_beta_args_doc}
class GetRegionNotificationEndpointComputeBetaArgs {
  final pulumi.Input<String> notificationEndpoint;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;

  /// Creates a new [GetRegionNotificationEndpointComputeBetaArgs].
  /// [notificationEndpoint] Required.
  /// [project] Optional.
  /// [region] Required.
  GetRegionNotificationEndpointComputeBetaArgs({
    required String notificationEndpoint,
    String? project,
    required String region,
  })  : notificationEndpoint =
            pulumi.Input.asInput<String>(notificationEndpoint),
        project = pulumi.Input.asOptionalInput<String>(project),
        region = pulumi.Input.asInput<String>(region);

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
      notificationEndpoint: map['notificationEndpoint'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] as String,
    );
  }
}
