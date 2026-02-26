import 'package:pulumi/pulumi.dart';
import 'duration_response.dart';
import 'instance_group_manager_resize_request_args.dart';
import 'instance_group_manager_resize_request_status_response.dart';
import 'queuing_policy_response.dart';

/// Creates a new resize request that starts provisioning VMs immediately or queues VM creation.
class InstanceGroupManagerResizeRequest extends CustomResource {
  /// The count of instances to create as part of this resize request.
  late final Output<int> count;

  /// The creation timestamp for this resize request in RFC3339 text format.
  late final Output<String> creationTimestamp;

  /// An optional description of this resource.
  late final Output<String> description;
  late final Output<String> instanceGroupManager;

  /// The resource type, which is always compute#instanceGroupManagerResizeRequest for resize requests.
  late final Output<String> kind;

  /// The name of this resize request. The name must be 1-63 characters long, and comply with RFC1035.
  late final Output<String> name;
  late final Output<String> project;

  /// When set, defines queing parameters for the requested deferred capacity. When unset, the request starts provisioning immediately, or fails if immediate provisioning is not possible.
  late final Output<QueuingPolicyResponse> queuingPolicy;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  late final Output<String?> requestId;

  /// Requested run duration for instances that will be created by this request. At the end of the run duration instance will be deleted.
  late final Output<DurationResponse> requestedRunDuration;

  /// The number of instances to be created by this resize request. The group's target size will be increased by this number.
  late final Output<int> resizeBy;

  /// The URL for this resize request. The server defines this URL.
  late final Output<String> selfLink;

  /// Server-defined URL for this resource with the resource id.
  late final Output<String> selfLinkWithId;

  /// [Output only] Current state of the request.
  late final Output<String> state;

  /// [Output only] Status of the request.
  late final Output<InstanceGroupManagerResizeRequestStatusResponse> status;
  late final Output<String> zone;

  InstanceGroupManagerResizeRequest(
    String name, {
    InstanceGroupManagerResizeRequestArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:compute/alpha:InstanceGroupManagerResizeRequest',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.count = Output.createUnknown<int>();
    this.creationTimestamp = Output.createUnknown<String>();
    this.description = Output.createUnknown<String>();
    this.instanceGroupManager = Output.createUnknown<String>();
    this.kind = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.queuingPolicy = Output.createUnknown<QueuingPolicyResponse>();
    this.requestId = Output.createUnknown<String?>();
    this.requestedRunDuration = Output.createUnknown<DurationResponse>();
    this.resizeBy = Output.createUnknown<int>();
    this.selfLink = Output.createUnknown<String>();
    this.selfLinkWithId = Output.createUnknown<String>();
    this.state = Output.createUnknown<String>();
    this.status =
        Output.createUnknown<InstanceGroupManagerResizeRequestStatusResponse>();
    this.zone = Output.createUnknown<String>();
  }
}
