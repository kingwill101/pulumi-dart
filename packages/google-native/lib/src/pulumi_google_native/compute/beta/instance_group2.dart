import 'package:pulumi/pulumi.dart' hide Config;
import 'instance_group_args2.dart';
import 'named_port_response2.dart';

/// Creates an instance group in the specified project using the parameters that are included in the request.
class InstanceGroup2 extends CustomResource {
  /// The creation timestamp for this instance group in RFC3339 text format.
  late final Output<String> creationTimestamp;

  /// An optional description of this resource. Provide this property when you create the resource.
  late final Output<String> description;

  /// The fingerprint of the named ports. The system uses this fingerprint to detect conflicts when multiple users change the named ports concurrently.
  late final Output<String> fingerprint;

  /// The resource type, which is always compute#instanceGroup for instance groups.
  late final Output<String> kind;

  /// The name of the instance group. The name must be 1-63 characters long, and comply with RFC1035.
  late final Output<String> name;

  /// Assigns a name to a port number. For example: {name: "http", port: 80} This allows the system to reference ports by the assigned name instead of a port number. Named ports can also contain multiple ports. For example: [{name: "app1", port: 8080}, {name: "app1", port: 8081}, {name: "app2", port: 8082}] Named ports apply to all instances in this instance group.
  late final Output<List<NamedPortResponse2>> namedPorts;

  /// The URL of the network to which all instances in the instance group belong. If your instance has multiple network interfaces, then the network and subnetwork fields only refer to the network and subnet used by your primary interface (nic0).
  late final Output<String> network;
  late final Output<String> project;

  /// The URL of the region where the instance group is located (for regional resources).
  late final Output<String> region;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  late final Output<String?> requestId;

  /// The URL for this instance group. The server generates this URL.
  late final Output<String> selfLink;

  /// The total number of instances in the instance group.
  late final Output<int> size;

  /// The URL of the subnetwork to which all instances in the instance group belong. If your instance has multiple network interfaces, then the network and subnetwork fields only refer to the network and subnet used by your primary interface (nic0).
  late final Output<String> subnetwork;
  late final Output<String> zone;

  InstanceGroup2(
    String name, {
    InstanceGroupArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:compute/beta:InstanceGroup',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.creationTimestamp = registerOutput<String>('creationTimestamp');
    this.description = registerOutput<String>('description');
    this.fingerprint = registerOutput<String>('fingerprint');
    this.kind = registerOutput<String>('kind');
    this.name = registerOutput<String>('name');
    this.namedPorts = registerOutput<List<NamedPortResponse2>>('namedPorts');
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
