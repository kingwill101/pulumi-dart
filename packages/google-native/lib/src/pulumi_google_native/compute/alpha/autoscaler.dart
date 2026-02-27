import 'package:pulumi/pulumi.dart' as pulumi;
import 'autoscaler_args.dart';
import 'autoscaler_status_details_response.dart';
import 'autoscaling_policy_response.dart';

/// Creates an autoscaler in the specified project using the data included in the request.
class Autoscaler extends pulumi.CustomResource {
  /// The configuration parameters for the autoscaling algorithm. You can define one or more signals for an autoscaler: cpuUtilization, customMetricUtilizations, and loadBalancingUtilization. If none of these are specified, the default will be to autoscale based on cpuUtilization to 0.6 or 60%.
  late final pulumi.Output<AutoscalingPolicyResponse> autoscalingPolicy;

  /// Creation timestamp in RFC3339 text format.
  late final pulumi.Output<String> creationTimestamp;

  /// An optional description of this resource. Provide this property when you create the resource.
  late final pulumi.Output<String> description;

  /// Type of the resource. Always compute#autoscaler for autoscalers.
  late final pulumi.Output<String> kind;

  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// Target recommended MIG size (number of instances) computed by autoscaler. Autoscaler calculates the recommended MIG size even when the autoscaling policy mode is different from ON. This field is empty when autoscaler is not connected to an existing managed instance group or autoscaler did not generate its prediction.
  late final pulumi.Output<int> recommendedSize;

  /// URL of the region where the instance group resides (for autoscalers living in regional scope).
  late final pulumi.Output<String> region;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  late final pulumi.Output<String?> requestId;

  /// Status information of existing scaling schedules.
  late final pulumi.Output<Map<String, String>> scalingScheduleStatus;

  /// Server-defined URL for the resource.
  late final pulumi.Output<String> selfLink;

  /// Server-defined URL for this resource with the resource id.
  late final pulumi.Output<String> selfLinkWithId;

  /// The status of the autoscaler configuration. Current set of possible values: - PENDING: Autoscaler backend hasn't read new/updated configuration. - DELETING: Configuration is being deleted. - ACTIVE: Configuration is acknowledged to be effective. Some warnings might be present in the statusDetails field. - ERROR: Configuration has errors. Actionable for users. Details are present in the statusDetails field. New values might be added in the future.
  late final pulumi.Output<String> status;

  /// Human-readable details about the current state of the autoscaler. Read the documentation for Commonly returned status messages for examples of status messages you might encounter.
  late final pulumi.Output<List<AutoscalerStatusDetailsResponse>> statusDetails;

  /// URL of the managed instance group that this autoscaler will scale. This field is required when creating an autoscaler.
  late final pulumi.Output<String> target;
  late final pulumi.Output<String> zone;

  Autoscaler(
    String name, {
    AutoscalerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:compute/alpha:Autoscaler',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.autoscalingPolicy =
        registerOutput<AutoscalingPolicyResponse>('autoscalingPolicy');
    this.creationTimestamp = registerOutput<String>('creationTimestamp');
    this.description = registerOutput<String>('description');
    this.kind = registerOutput<String>('kind');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.recommendedSize = registerOutput<int>('recommendedSize');
    this.region = registerOutput<String>('region');
    this.requestId = registerOutput<String?>('requestId');
    this.scalingScheduleStatus =
        registerOutput<Map<String, String>>('scalingScheduleStatus');
    this.selfLink = registerOutput<String>('selfLink');
    this.selfLinkWithId = registerOutput<String>('selfLinkWithId');
    this.status = registerOutput<String>('status');
    this.statusDetails =
        registerOutput<List<AutoscalerStatusDetailsResponse>>('statusDetails');
    this.target = registerOutput<String>('target');
    this.zone = registerOutput<String>('zone');
  }
}
