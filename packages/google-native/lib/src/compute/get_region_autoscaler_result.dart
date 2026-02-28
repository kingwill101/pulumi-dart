// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'autoscaler_status_details_response.dart';
import 'autoscaling_policy_response.dart';

/// Result data returned by getRegionAutoscaler.
class GetRegionAutoscalerResult {
  /// The configuration parameters for the autoscaling algorithm. You can define one or more signals for an autoscaler: cpuUtilization, customMetricUtilizations, and loadBalancingUtilization. If none of these are specified, the default will be to autoscale based on cpuUtilization to 0.6 or 60%.
  final AutoscalingPolicyResponse autoscalingPolicy;

  /// Creation timestamp in RFC3339 text format.
  final String creationTimestamp;

  /// An optional description of this resource. Provide this property when you create the resource.
  final String description;

  /// Type of the resource. Always compute#autoscaler for autoscalers.
  final String kind;

  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final String name;

  /// Target recommended MIG size (number of instances) computed by autoscaler. Autoscaler calculates the recommended MIG size even when the autoscaling policy mode is different from ON. This field is empty when autoscaler is not connected to an existing managed instance group or autoscaler did not generate its prediction.
  final int recommendedSize;

  /// URL of the region where the instance group resides (for autoscalers living in regional scope).
  final String region;

  /// Status information of existing scaling schedules.
  final Map<String, String> scalingScheduleStatus;

  /// Server-defined URL for the resource.
  final String selfLink;

  /// Server-defined URL for this resource with the resource id.
  final String selfLinkWithId;

  /// The status of the autoscaler configuration. Current set of possible values: - PENDING: Autoscaler backend hasn't read new/updated configuration. - DELETING: Configuration is being deleted. - ACTIVE: Configuration is acknowledged to be effective. Some warnings might be present in the statusDetails field. - ERROR: Configuration has errors. Actionable for users. Details are present in the statusDetails field. New values might be added in the future.
  final String status;

  /// Human-readable details about the current state of the autoscaler. Read the documentation for Commonly returned status messages for examples of status messages you might encounter.
  final List<AutoscalerStatusDetailsResponse> statusDetails;

  /// URL of the managed instance group that this autoscaler will scale. This field is required when creating an autoscaler.
  final String target;

  /// URL of the zone where the instance group resides (for autoscalers living in zonal scope).
  final String zone;

  /// Creates a new [GetRegionAutoscalerResult].
  /// [autoscalingPolicy] The configuration parameters for the autoscaling algorithm. You can define one or more signals for an autoscaler: cpuUtilization, customMetricUtilizations, and loadBalancingUtilization. If none of these are specified, the default will be to autoscale based on cpuUtilization to 0.6 or 60%.
  /// [creationTimestamp] Creation timestamp in RFC3339 text format.
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [kind] Type of the resource. Always compute#autoscaler for autoscalers.
  /// [name] Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [recommendedSize] Target recommended MIG size (number of instances) computed by autoscaler. Autoscaler calculates the recommended MIG size even when the autoscaling policy mode is different from ON. This field is empty when autoscaler is not connected to an existing managed instance group or autoscaler did not generate its prediction.
  /// [region] URL of the region where the instance group resides (for autoscalers living in regional scope).
  /// [scalingScheduleStatus] Status information of existing scaling schedules.
  /// [selfLink] Server-defined URL for the resource.
  /// [selfLinkWithId] Server-defined URL for this resource with the resource id.
  /// [status] The status of the autoscaler configuration. Current set of possible values: - PENDING: Autoscaler backend hasn't read new/updated configuration. - DELETING: Configuration is being deleted. - ACTIVE: Configuration is acknowledged to be effective. Some warnings might be present in the statusDetails field. - ERROR: Configuration has errors. Actionable for users. Details are present in the statusDetails field. New values might be added in the future.
  /// [statusDetails] Human-readable details about the current state of the autoscaler. Read the documentation for Commonly returned status messages for examples of status messages you might encounter.
  /// [target] URL of the managed instance group that this autoscaler will scale. This field is required when creating an autoscaler.
  /// [zone] URL of the zone where the instance group resides (for autoscalers living in zonal scope).
  GetRegionAutoscalerResult({
    required this.autoscalingPolicy,
    required this.creationTimestamp,
    required this.description,
    required this.kind,
    required this.name,
    required this.recommendedSize,
    required this.region,
    required this.scalingScheduleStatus,
    required this.selfLink,
    required this.selfLinkWithId,
    required this.status,
    required this.statusDetails,
    required this.target,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['autoscalingPolicy'] = autoscalingPolicy.toMap();
    map['creationTimestamp'] = creationTimestamp;
    map['description'] = description;
    map['kind'] = kind;
    map['name'] = name;
    map['recommendedSize'] = recommendedSize;
    map['region'] = region;
    map['scalingScheduleStatus'] = scalingScheduleStatus;
    map['selfLink'] = selfLink;
    map['selfLinkWithId'] = selfLinkWithId;
    map['status'] = status;
    map['statusDetails'] = pulumi.Input.encodeList<
        AutoscalerStatusDetailsResponse,
        Map<String, dynamic>>(statusDetails, (value) => value.toMap());
    map['target'] = target;
    map['zone'] = zone;
    return map;
  }

  factory GetRegionAutoscalerResult.fromMap(Map<String, dynamic> map) {
    return GetRegionAutoscalerResult(
      autoscalingPolicy: AutoscalingPolicyResponse.fromMap(
          (map['autoscalingPolicy'] as Map).cast<String, dynamic>()),
      creationTimestamp: map['creationTimestamp'] as String,
      description: map['description'] as String,
      kind: map['kind'] as String,
      name: map['name'] as String,
      recommendedSize: map['recommendedSize'] as int,
      region: map['region'] as String,
      scalingScheduleStatus:
          (map['scalingScheduleStatus'] as Map).cast<String, String>(),
      selfLink: map['selfLink'] as String,
      selfLinkWithId: map['selfLinkWithId'] as String,
      status: map['status'] as String,
      statusDetails: pulumi.Input.decodeList<AutoscalerStatusDetailsResponse>(
          map['statusDetails'],
          (value) => AutoscalerStatusDetailsResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      target: map['target'] as String,
      zone: map['zone'] as String,
    );
  }
}
