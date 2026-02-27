import 'package:pulumi/pulumi.dart';
import '../resize_request_requested_run_duration/resize_request_requested_run_duration.dart';
import '../resize_request_status/resize_request_status.dart';
import 'resize_request_args.dart';

/// Represents a Managed Instance Group Resize Request
///
/// Resize Requests are the Managed Instance Group implementation of Dynamic Workload Scheduler Flex Start.
///
/// With Dynamic Workload Scheduler in Flex Start mode, you submit a GPU capacity request for your AI/ML jobs by indicating how many you need, a duration, and your preferred zone. Dynamic Workload Scheduler intelligently persists the request; once the capacity becomes available, it automatically provisions your VMs enabling your workloads to run continuously for the entire duration of the capacity allocation.
///
///
/// To get more information about ResizeRequest, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/instanceGroupManagerResizeRequests)
/// * How-to Guides
/// * [About resize requests in a MIG](https://cloud.google.com/compute/docs/instance-groups/about-resize-requests-mig)
///
/// ## Example Usage
///
/// ### Compute Mig Resize Request
///
///
///
///
/// ## Import
///
/// ResizeRequest can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/zones/{{zone}}/instanceGroupManagers/{{instance_group_manager}}/resizeRequests/{{name}}`
///
/// * `{{project}}/{{zone}}/{{instance_group_manager}}/{{name}}`
///
/// * `{{zone}}/{{instance_group_manager}}/{{name}}`
///
/// * `{{instance_group_manager}}/{{name}}`
///
/// When using the `pulumi import` command, ResizeRequest can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/resizeRequest:ResizeRequest default projects/{{project}}/zones/{{zone}}/instanceGroupManagers/{{instance_group_manager}}/resizeRequests/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/resizeRequest:ResizeRequest default {{project}}/{{zone}}/{{instance_group_manager}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/resizeRequest:ResizeRequest default {{zone}}/{{instance_group_manager}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/resizeRequest:ResizeRequest default {{instance_group_manager}}/{{name}}
/// ```
class ResizeRequest extends CustomResource {
  /// The creation timestamp for this resize request in RFC3339 text format.
  late final Output<String> creationTimestamp;

  /// An optional description of this resize-request.
  late final Output<String?> description;

  /// The reference of the instance group manager this ResizeRequest is a part of.
  late final Output<String> instanceGroupManager;

  /// The name of this resize request. The name must be 1-63 characters long, and comply with RFC1035.
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// Requested run duration for instances that will be created by this request. At the end of the run duration instance will be deleted.
  /// Structure is documented below.
  late final Output<ResizeRequestRequestedRunDuration?> requestedRunDuration;

  /// The number of instances to be created by this resize request. The group's target size will be increased by this number.
  late final Output<int> resizeBy;

  /// Current state of the request.
  late final Output<String> state;

  /// Status of the request.
  /// Structure is documented below.
  late final Output<List<ResizeRequestStatus>> statuses;

  /// The reference of the compute zone scoping this request. If it is not provided, the provider zone is used.
  late final Output<String> zone;

  ResizeRequest(
    String name, {
    ResizeRequestArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:compute/resizeRequest:ResizeRequest',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.creationTimestamp = registerOutput<String>('creationTimestamp');
    this.description = registerOutput<String?>('description');
    this.instanceGroupManager = registerOutput<String>('instanceGroupManager');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.requestedRunDuration =
        registerOutput<ResizeRequestRequestedRunDuration?>(
            'requestedRunDuration');
    this.resizeBy = registerOutput<int>('resizeBy');
    this.state = registerOutput<String>('state');
    this.statuses = registerOutput<List<ResizeRequestStatus>>('statuses');
    this.zone = registerOutput<String>('zone');
  }
}
