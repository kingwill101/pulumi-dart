import 'package:pulumi/pulumi.dart' hide Config;
import 'duration_response2.dart';
import 'instance_group_manager_resize_request_args2.dart';
import 'instance_group_manager_resize_request_status_response2.dart';

/// Creates a new resize request that starts provisioning VMs immediately or queues VM creation.
class InstanceGroupManagerResizeRequest2 extends CustomResource {
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

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  late final Output<String?> requestId;

  /// Requested run duration for instances that will be created by this request. At the end of the run duration instance will be deleted.
  late final Output<DurationResponse2> requestedRunDuration;

  /// The number of instances to be created by this resize request. The group's target size will be increased by this number.
  late final Output<int> resizeBy;

  /// The URL for this resize request. The server defines this URL.
  late final Output<String> selfLink;

  /// Server-defined URL for this resource with the resource id.
  late final Output<String> selfLinkWithId;

  /// [Output only] Current state of the request.
  late final Output<String> state;

  /// [Output only] Status of the request.
  late final Output<InstanceGroupManagerResizeRequestStatusResponse2> status;
  late final Output<String> zone;

  InstanceGroupManagerResizeRequest2(
    String name, {
    InstanceGroupManagerResizeRequestArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:compute/beta:InstanceGroupManagerResizeRequest',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.count = registerOutput<int>('count');
    this.creationTimestamp = registerOutput<String>('creationTimestamp');
    this.description = registerOutput<String>('description');
    this.instanceGroupManager = registerOutput<String>('instanceGroupManager');
    this.kind = registerOutput<String>('kind');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.requestId = registerOutput<String?>('requestId');
    this.requestedRunDuration =
        registerOutput<DurationResponse2>('requestedRunDuration');
    this.resizeBy = registerOutput<int>('resizeBy');
    this.selfLink = registerOutput<String>('selfLink');
    this.selfLinkWithId = registerOutput<String>('selfLinkWithId');
    this.state = registerOutput<String>('state');
    this.status =
        registerOutput<InstanceGroupManagerResizeRequestStatusResponse2>(
            'status');
    this.zone = registerOutput<String>('zone');
  }
}
