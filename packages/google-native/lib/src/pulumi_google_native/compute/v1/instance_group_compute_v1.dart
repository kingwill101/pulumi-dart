import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_group_compute_v1_args.dart';
import 'named_port_response_compute_v1.dart';

/// Creates an instance group in the specified project using the parameters that are included in the request.
class InstanceGroupComputeV1 extends pulumi.CustomResource {
  /// The creation timestamp for this instance group in RFC3339 text format.
  late final pulumi.Output<String> creationTimestamp;

  /// An optional description of this resource. Provide this property when you create the resource.
  late final pulumi.Output<String> description;

  /// The fingerprint of the named ports. The system uses this fingerprint to detect conflicts when multiple users change the named ports concurrently.
  late final pulumi.Output<String> fingerprint;

  /// The resource type, which is always compute#instanceGroup for instance groups.
  late final pulumi.Output<String> kind;

  /// The name of the instance group. The name must be 1-63 characters long, and comply with RFC1035.
  late final pulumi.Output<String> name;

  /// Assigns a name to a port number. For example: {name: "http", port: 80} This allows the system to reference ports by the assigned name instead of a port number. Named ports can also contain multiple ports. For example: [{name: "app1", port: 8080}, {name: "app1", port: 8081}, {name: "app2", port: 8082}] Named ports apply to all instances in this instance group.
  late final pulumi.Output<List<NamedPortResponseComputeV1>> namedPorts;

  /// The URL of the network to which all instances in the instance group belong. If your instance has multiple network interfaces, then the network and subnetwork fields only refer to the network and subnet used by your primary interface (nic0).
  late final pulumi.Output<String> network;
  late final pulumi.Output<String> project;

  /// The URL of the region where the instance group is located (for regional resources).
  late final pulumi.Output<String> region;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  late final pulumi.Output<String?> requestId;

  /// The URL for this instance group. The server generates this URL.
  late final pulumi.Output<String> selfLink;

  /// The total number of instances in the instance group.
  late final pulumi.Output<int> size;

  /// The URL of the subnetwork to which all instances in the instance group belong. If your instance has multiple network interfaces, then the network and subnetwork fields only refer to the network and subnet used by your primary interface (nic0).
  late final pulumi.Output<String> subnetwork;
  late final pulumi.Output<String> zone;

  InstanceGroupComputeV1(
    String name, {
    InstanceGroupComputeV1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:compute/v1:InstanceGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.creationTimestamp = registerOutput<String>('creationTimestamp');
    this.description = registerOutput<String>('description');
    this.fingerprint = registerOutput<String>('fingerprint');
    this.kind = registerOutput<String>('kind');
    this.name = registerOutput<String>('name');
    this.namedPorts =
        registerOutput<List<NamedPortResponseComputeV1>>('namedPorts');
    this.network = registerOutput<String>('network');
    this.project = registerOutput<String>('project');
    this.region = registerOutput<String>('region');
    this.requestId = registerOutput<String?>('requestId');
    this.selfLink = registerOutput<String>('selfLink');
    this.size = registerOutput<int>('size');
    this.subnetwork = registerOutput<String>('subnetwork');
    this.zone = registerOutput<String>('zone');
  }
}
