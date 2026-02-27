import 'package:pulumi/pulumi.dart' as pulumi;
import 'target_instance_args.dart';

/// Represents a TargetInstance resource which defines an endpoint instance
/// that terminates traffic of certain protocols. In particular, they are used
/// in Protocol Forwarding, where forwarding rules can send packets to a
/// non-NAT'ed target instance. Each target instance contains a single
/// virtual machine instance that receives and handles traffic from the
/// corresponding forwarding rules.
///
///
/// To get more information about TargetInstance, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/v1/targetInstances)
/// * How-to Guides
/// * [Using Protocol Forwarding](https://cloud.google.com/compute/docs/protocol-forwarding)
///
/// ## Example Usage
///
/// ### Target Instance Basic
///
///
///
/// ### Target Instance Custom Network
///
///
///
/// ### Target Instance With Security Policy
///
///
///
///
/// ## Import
///
/// TargetInstance can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/zones/{{zone}}/targetInstances/{{name}}`
///
/// * `{{project}}/{{zone}}/{{name}}`
///
/// * `{{zone}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, TargetInstance can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/targetInstance:TargetInstance default projects/{{project}}/zones/{{zone}}/targetInstances/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/targetInstance:TargetInstance default {{project}}/{{zone}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/targetInstance:TargetInstance default {{zone}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/targetInstance:TargetInstance default {{name}}
/// ```
class TargetInstance extends pulumi.CustomResource {
  /// Creation timestamp in RFC3339 text format.
  late final pulumi.Output<String> creationTimestamp;

  /// An optional description of this resource.
  late final pulumi.Output<String?> description;

  /// The Compute instance VM handling traffic for this target instance.
  /// Accepts the instance self-link, relative path
  /// (e.g. `projects/project/zones/zone/instances/instance`) or name. If
  /// name is given, the zone will default to the given zone or
  /// the provider-default zone and the project will default to the
  /// provider-level project.
  late final pulumi.Output<String> instance;

  /// Name of the resource. Provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035. Specifically, the name must be 1-63 characters long and match
  /// the regular expression `a-z?` which means the
  /// first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the last
  /// character, which cannot be a dash.
  late final pulumi.Output<String> name;

  /// NAT option controlling how IPs are NAT'ed to the instance.
  /// Currently only NO_NAT (default value) is supported.
  /// Default value is `NO_NAT`.
  /// Possible values are: `NO_NAT`.
  late final pulumi.Output<String?> natPolicy;

  /// The URL of the network this target instance uses to forward traffic. If not specified, the traffic will be forwarded to the network that the default network interface belongs to.
  late final pulumi.Output<String?> network;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The resource URL for the security policy associated with this target instance.
  late final pulumi.Output<String?> securityPolicy;

  /// The URI of the created resource.
  late final pulumi.Output<String> selfLink;

  /// URL of the zone where the target instance resides.
  late final pulumi.Output<String> zone;

  TargetInstance(
    String name, {
    TargetInstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/targetInstance:TargetInstance',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.creationTimestamp = registerOutput<String>('creationTimestamp');
    this.description = registerOutput<String?>('description');
    this.instance = registerOutput<String>('instance');
    this.name = registerOutput<String>('name');
    this.natPolicy = registerOutput<String?>('natPolicy');
    this.network = registerOutput<String?>('network');
    this.project = registerOutput<String>('project');
    this.securityPolicy = registerOutput<String?>('securityPolicy');
    this.selfLink = registerOutput<String>('selfLink');
    this.zone = registerOutput<String>('zone');
  }
}
