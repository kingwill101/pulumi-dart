import 'package:pulumi/pulumi.dart' as pulumi;
import 'target_instance_args.dart';

/// Creates a TargetInstance resource in the specified project and zone using the data included in the request.
class TargetInstance extends pulumi.CustomResource {
  /// Creation timestamp in RFC3339 text format.
  late final pulumi.Output<String> creationTimestamp;
  /// An optional description of this resource. Provide this property when you create the resource.
  late final pulumi.Output<String> description;
  /// A URL to the virtual machine instance that handles traffic for this target instance. When creating a target instance, you can provide the fully-qualified URL or a valid partial URL to the desired virtual machine. For example, the following are all valid URLs: - https://www.googleapis.com/compute/v1/projects/project/zones/zone /instances/instance - projects/project/zones/zone/instances/instance - zones/zone/instances/instance
  late final pulumi.Output<String> instance;
  /// The type of the resource. Always compute#targetInstance for target instances.
  late final pulumi.Output<String> kind;
  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  late final pulumi.Output<String> name;
  /// Must have a value of NO_NAT. Protocol forwarding delivers packets while preserving the destination IP address of the forwarding rule referencing the target instance.
  late final pulumi.Output<String> natPolicy;
  /// The URL of the network this target instance uses to forward traffic. If not specified, the traffic will be forwarded to the network that the default network interface belongs to.
  late final pulumi.Output<String> network;
  late final pulumi.Output<String> project;
  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  late final pulumi.Output<String?> requestId;
  /// The resource URL for the security policy associated with this target instance.
  late final pulumi.Output<String> securityPolicy;
  /// Server-defined URL for the resource.
  late final pulumi.Output<String> selfLink;
  /// Server-defined URL for this resource with the resource id.
  late final pulumi.Output<String> selfLinkWithId;
  late final pulumi.Output<String> zone;

  /// Creates a new [TargetInstance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TargetInstance]. {@macro pulumi_compute_alpha_target_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TargetInstance(
    String name, {
    TargetInstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:compute/alpha:TargetInstance',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.creationTimestamp = registerOutput<String>('creationTimestamp');
    this.description = registerOutput<String>('description');
    this.instance = registerOutput<String>('instance');
    this.kind = registerOutput<String>('kind');
    this.name = registerOutput<String>('name');
    this.natPolicy = registerOutput<String>('natPolicy');
    this.network = registerOutput<String>('network');
    this.project = registerOutput<String>('project');
    this.requestId = registerOutput<String?>('requestId');
    this.securityPolicy = registerOutput<String>('securityPolicy');
    this.selfLink = registerOutput<String>('selfLink');
    this.selfLinkWithId = registerOutput<String>('selfLinkWithId');
    this.zone = registerOutput<String>('zone');
  }
}
