// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_alpha_get_region_notification_endpoint_args_doc}
/// Arguments for getRegionNotificationEndpoint.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_get_region_notification_endpoint_args_doc}
class GetRegionNotificationEndpointArgs {
  final pulumi.Input<String> notificationEndpoint;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;

  /// Creates a new [GetRegionNotificationEndpointArgs].
  /// [notificationEndpoint] Required.
  /// [project] Optional.
  /// [region] Required.
  GetRegionNotificationEndpointArgs({
    required String notificationEndpoint,
    String? project,
    required String region,
  }) :
      notificationEndpoint = pulumi.Input.asInput<String>(notificationEndpoint),
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'notificationEndpoint': notificationEndpoint,
      'project': ?project,
      'region': region,
    };
  }

  factory GetRegionNotificationEndpointArgs.fromMap(Map<String, dynamic> map) {
    return GetRegionNotificationEndpointArgs(
      notificationEndpoint: map['notificationEndpoint'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] as String,
    );
  }
}

