// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_v1_get_region_notification_endpoint_compute_v1_args_doc}
/// Arguments for getRegionNotificationEndpoint.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_get_region_notification_endpoint_compute_v1_args_doc}
class GetRegionNotificationEndpointComputeV1Args {
  final pulumi.Input<String> notificationEndpoint;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;

  /// Creates a new [GetRegionNotificationEndpointComputeV1Args].
  /// [notificationEndpoint] Required.
  /// [project] Optional.
  /// [region] Required.
  GetRegionNotificationEndpointComputeV1Args({
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

  factory GetRegionNotificationEndpointComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetRegionNotificationEndpointComputeV1Args(
      notificationEndpoint: map['notificationEndpoint'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] as String,
    );
  }
}

