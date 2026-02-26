import 'package:pulumi/pulumi.dart';
import 'autoscaler_args2.dart';
import 'autoscaler_status_details_response2.dart';
import 'autoscaling_policy_response2.dart';

/// Creates an autoscaler in the specified project using the data included in the request.
class Autoscaler2 extends CustomResource {
  /// The configuration parameters for the autoscaling algorithm. You can define one or more signals for an autoscaler: cpuUtilization, customMetricUtilizations, and loadBalancingUtilization. If none of these are specified, the default will be to autoscale based on cpuUtilization to 0.6 or 60%.
  late final Output<AutoscalingPolicyResponse2> autoscalingPolicy;

  /// Creation timestamp in RFC3339 text format.
  late final Output<String> creationTimestamp;

  /// An optional description of this resource. Provide this property when you create the resource.
  late final Output<String> description;

  /// Type of the resource. Always compute#autoscaler for autoscalers.
  late final Output<String> kind;

  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  late final Output<String> name;
  late final Output<String> project;

  /// Target recommended MIG size (number of instances) computed by autoscaler. Autoscaler calculates the recommended MIG size even when the autoscaling policy mode is different from ON. This field is empty when autoscaler is not connected to an existing managed instance group or autoscaler did not generate its prediction.
  late final Output<int> recommendedSize;

  /// URL of the region where the instance group resides (for autoscalers living in regional scope).
  late final Output<String> region;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  late final Output<String?> requestId;

  /// Status information of existing scaling schedules.
  late final Output<Map<String, String>> scalingScheduleStatus;

  /// Server-defined URL for the resource.
  late final Output<String> selfLink;

  /// The status of the autoscaler configuration. Current set of possible values: - PENDING: Autoscaler backend hasn't read new/updated configuration. - DELETING: Configuration is being deleted. - ACTIVE: Configuration is acknowledged to be effective. Some warnings might be present in the statusDetails field. - ERROR: Configuration has errors. Actionable for users. Details are present in the statusDetails field. New values might be added in the future.
  late final Output<String> status;

  /// Human-readable details about the current state of the autoscaler. Read the documentation for Commonly returned status messages for examples of status messages you might encounter.
  late final Output<List<AutoscalerStatusDetailsResponse2>> statusDetails;

  /// URL of the managed instance group that this autoscaler will scale. This field is required when creating an autoscaler.
  late final Output<String> target;
  late final Output<String> zone;

  Autoscaler2(
    String name, {
    AutoscalerArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:compute/beta:Autoscaler',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.autoscalingPolicy = Output.createUnknown<AutoscalingPolicyResponse2>();
    this.creationTimestamp = Output.createUnknown<String>();
    this.description = Output.createUnknown<String>();
    this.kind = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.recommendedSize = Output.createUnknown<int>();
    this.region = Output.createUnknown<String>();
    this.requestId = Output.createUnknown<String?>();
    this.scalingScheduleStatus = Output.createUnknown<Map<String, String>>();
    this.selfLink = Output.createUnknown<String>();
    this.status = Output.createUnknown<String>();
    this.statusDetails =
        Output.createUnknown<List<AutoscalerStatusDetailsResponse2>>();
    this.target = Output.createUnknown<String>();
    this.zone = Output.createUnknown<String>();
  }
}
