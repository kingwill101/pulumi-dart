import 'package:pulumi/pulumi.dart';
import '../region_resize_request_requested_run_duration/region_resize_request_requested_run_duration.dart';
import '../region_resize_request_status/region_resize_request_status.dart';
import 'region_resize_request_args.dart';

/// Represents a Regional Managed Instance Group Resize Request
///
/// Resize Requests are the Managed Instance Group implementation of Dynamic Workload Scheduler Flex Start.
///
/// With Dynamic Workload Scheduler in Flex Start mode, you submit a GPU capacity request for your AI/ML jobs by indicating how many you need, a duration, and your preferred region. Dynamic Workload Scheduler intelligently persists the request; once the capacity becomes available, it automatically provisions your VMs enabling your workloads to run continuously for the entire duration of the capacity allocation.
///
/// To get more information about RegionResizeRequest, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/beta/regionInstanceGroupManagerResizeRequests)
/// * How-to Guides
/// * [About resize requests in a MIG](https://cloud.google.com/compute/docs/instance-groups/about-resize-requests-mig)
///
/// ## Example Usage
///
/// ### Compute Rmig Resize Request
///
///
///
///
/// ## Import
///
/// RegionResizeRequest can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/regions/{{region}}/instanceGroupManagers/{{instance_group_manager}}/resizeRequests/{{name}}`
///
/// * `{{project}}/{{region}}/{{instance_group_manager}}/{{name}}`
///
/// * `{{region}}/{{instance_group_manager}}/{{name}}`
///
/// * `{{instance_group_manager}}/{{name}}`
///
/// When using the `pulumi import` command, RegionResizeRequest can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/regionResizeRequest:RegionResizeRequest default projects/{{project}}/regions/{{region}}/instanceGroupManagers/{{instance_group_manager}}/resizeRequests/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/regionResizeRequest:RegionResizeRequest default {{project}}/{{region}}/{{instance_group_manager}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/regionResizeRequest:RegionResizeRequest default {{region}}/{{instance_group_manager}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/regionResizeRequest:RegionResizeRequest default {{instance_group_manager}}/{{name}}
/// ```
class RegionResizeRequest extends CustomResource {
  /// The creation timestamp for this resize request in RFC3339 text format.
  late final Output<String> creationTimestamp;

  /// An optional description of this resize-request.
  late final Output<String?> description;

  /// The reference of the regional instance group manager this ResizeRequest is a part of.
  late final Output<String> instanceGroupManager;

  /// The name of this resize request. The name must be 1-63 characters long, and comply with RFC1035.
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The reference of the compute region scoping this request. If it is not provided, the provider region is used.
  late final Output<String> region;

  /// Requested run duration for instances that will be created by this request. At the end of the run duration instances will be deleted.
  /// Structure is documented below.
  late final Output<RegionResizeRequestRequestedRunDuration?>
      requestedRunDuration;

  /// The number of instances to be created by this resize request. The group's target size will be increased by this number.
  late final Output<int> resizeBy;

  /// Current state of the request.
  late final Output<String> state;

  /// Status of the request.
  /// Structure is documented below.
  late final Output<List<RegionResizeRequestStatus>> statuses;

  RegionResizeRequest(
    String name, {
    RegionResizeRequestArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:compute/regionResizeRequest:RegionResizeRequest',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.creationTimestamp = registerOutput<String>('creationTimestamp');
    this.description = registerOutput<String?>('description');
    this.instanceGroupManager = registerOutput<String>('instanceGroupManager');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.region = registerOutput<String>('region');
    this.requestedRunDuration =
        registerOutput<RegionResizeRequestRequestedRunDuration?>(
            'requestedRunDuration');
    this.resizeBy = registerOutput<int>('resizeBy');
    this.state = registerOutput<String>('state');
    this.statuses = registerOutput<List<RegionResizeRequestStatus>>('statuses');
  }
}
