import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_endpoint_group_args.dart';

/// Network endpoint groups (NEGs) are zonal resources that represent
/// collections of IP address and port combinations for GCP resources within a
/// single subnet. Each IP address and port combination is called a network
/// endpoint.
///
/// Network endpoint groups can be used as backends in backend services for
/// HTTP(S), TCP proxy, and SSL proxy load balancers. You cannot use NEGs as a
/// backend with internal load balancers. Because NEG backends allow you to
/// specify IP addresses and ports, you can distribute traffic in a granular
/// fashion among applications or containers running within VM instances.
///
/// Recreating a network endpoint group that's in use by another resource will give a
/// `resourceInUseByAnotherResource` error. Use `lifecycle.create_before_destroy`
/// to avoid this type of error.
///
///
/// To get more information about NetworkEndpointGroup, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/beta/networkEndpointGroups)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/load-balancing/docs/negs/)
///
/// ## Example Usage
///
/// ### Network Endpoint Group
///
///
///
/// ### Network Endpoint Group Non Gcp
///
///
///
///
/// ## Import
///
/// NetworkEndpointGroup can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/zones/{{zone}}/networkEndpointGroups/{{name}}`
///
/// * `{{project}}/{{zone}}/{{name}}`
///
/// * `{{zone}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, NetworkEndpointGroup can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/networkEndpointGroup:NetworkEndpointGroup default projects/{{project}}/zones/{{zone}}/networkEndpointGroups/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/networkEndpointGroup:NetworkEndpointGroup default {{project}}/{{zone}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/networkEndpointGroup:NetworkEndpointGroup default {{zone}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/networkEndpointGroup:NetworkEndpointGroup default {{name}}
/// ```
class NetworkEndpointGroup extends pulumi.CustomResource {
  /// The default port used if the port number is not specified in the
  /// network endpoint.
  late final pulumi.Output<int?> defaultPort;

  /// An optional description of this resource. Provide this property when
  /// you create the resource.
  late final pulumi.Output<String?> description;

  /// The uniquely generated identifier for the resource. This identifier is defined by the server.
  late final pulumi.Output<int> generatedId;

  /// Name of the resource; provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035. Specifically, the name must be 1-63 characters long and match
  /// the regular expression `a-z?` which means the
  /// first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the last
  /// character, which cannot be a dash.
  late final pulumi.Output<String> name;

  /// The network to which all network endpoints in the NEG belong.
  /// Uses "default" project network if unspecified.
  late final pulumi.Output<String> network;

  /// Type of network endpoints in this network endpoint group.
  /// NON_GCP_PRIVATE_IP_PORT is used for hybrid connectivity network
  /// endpoint groups (see https://cloud.google.com/load-balancing/docs/hybrid).
  /// Note that NON_GCP_PRIVATE_IP_PORT can only be used with Backend Services
  /// that 1) have the following load balancing schemes: EXTERNAL, EXTERNAL_MANAGED,
  /// INTERNAL_MANAGED, and INTERNAL_SELF_MANAGED and 2) support the RATE or
  /// CONNECTION balancing modes.
  /// Possible values include: GCE_VM_IP, GCE_VM_IP_PORT, NON_GCP_PRIVATE_IP_PORT, INTERNET_IP_PORT, INTERNET_FQDN_PORT, SERVERLESS, and PRIVATE_SERVICE_CONNECT.
  /// Default value is `GCE_VM_IP_PORT`.
  /// Possible values are: `GCE_VM_IP`, `GCE_VM_IP_PORT`, `NON_GCP_PRIVATE_IP_PORT`, `INTERNET_IP_PORT`, `INTERNET_FQDN_PORT`, `SERVERLESS`, `PRIVATE_SERVICE_CONNECT`.
  late final pulumi.Output<String?> networkEndpointType;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The URI of the created resource.
  late final pulumi.Output<String> selfLink;

  /// Number of network endpoints in the network endpoint group.
  late final pulumi.Output<int> size;

  /// Optional subnetwork to which all network endpoints in the NEG belong.
  late final pulumi.Output<String?> subnetwork;

  /// Zone where the network endpoint group is located.
  late final pulumi.Output<String> zone;

  NetworkEndpointGroup(
    String name, {
    NetworkEndpointGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/networkEndpointGroup:NetworkEndpointGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.defaultPort = registerOutput<int?>('defaultPort');
    this.description = registerOutput<String?>('description');
    this.generatedId = registerOutput<int>('generatedId');
    this.name = registerOutput<String>('name');
    this.network = registerOutput<String>('network');
    this.networkEndpointType = registerOutput<String?>('networkEndpointType');
    this.project = registerOutput<String>('project');
    this.selfLink = registerOutput<String>('selfLink');
    this.size = registerOutput<int>('size');
    this.subnetwork = registerOutput<String?>('subnetwork');
    this.zone = registerOutput<String>('zone');
  }
}
