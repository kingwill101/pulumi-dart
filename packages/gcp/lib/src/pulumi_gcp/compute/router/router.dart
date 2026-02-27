import 'package:pulumi/pulumi.dart' as pulumi;
import '../router_bgp/router_bgp.dart';
import '../router_md5_authentication_keys/router_md5_authentication_keys.dart';
import '../router_params/router_params.dart';
import 'router_args.dart';

/// Represents a Router resource.
///
///
/// To get more information about Router, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/routers)
/// * How-to Guides
/// * [Google Cloud Router](https://cloud.google.com/router/docs/)
///
/// ## Example Usage
///
/// ### Router Basic
///
///
///
/// ### Compute Router Encrypted Interconnect
///
///
///
/// ### Router Ncc Gw
///
///
///
///
/// ## Import
///
/// Router can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/regions/{{region}}/routers/{{name}}`
///
/// * `{{project}}/{{region}}/{{name}}`
///
/// * `{{region}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, Router can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/router:Router default projects/{{project}}/regions/{{region}}/routers/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/router:Router default {{project}}/{{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/router:Router default {{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/router:Router default {{name}}
/// ```
class Router extends pulumi.CustomResource {
  /// BGP information specific to this router.
  /// Structure is documented below.
  late final pulumi.Output<RouterBgp?> bgp;

  /// Creation timestamp in RFC3339 text format.
  late final pulumi.Output<String> creationTimestamp;

  /// An optional description of this resource.
  late final pulumi.Output<String?> description;

  /// Indicates if a router is dedicated for use with encrypted VLAN
  /// attachments (interconnectAttachments).
  late final pulumi.Output<bool?> encryptedInterconnectRouter;

  /// Keys used for MD5 authentication.
  /// Structure is documented below.
  late final pulumi.Output<RouterMd5AuthenticationKeys?> md5AuthenticationKeys;

  /// Name of the resource. The name must be 1-63 characters long, and
  /// comply with RFC1035. Specifically, the name must be 1-63 characters
  /// long and match the regular expression `a-z?`
  /// which means the first character must be a lowercase letter, and all
  /// following characters must be a dash, lowercase letter, or digit,
  /// except the last character, which cannot be a dash.
  late final pulumi.Output<String> name;

  /// A URI of an NCC Gateway spoke
  late final pulumi.Output<String?> nccGateway;

  /// A reference to the network to which this router belongs.
  late final pulumi.Output<String?> network;

  /// Additional params passed with the request, but not persisted as part of resource payload
  /// Structure is documented below.
  late final pulumi.Output<RouterParams?> params;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Region where the router resides.
  late final pulumi.Output<String> region;

  /// The URI of the created resource.
  late final pulumi.Output<String> selfLink;

  Router(
    String name, {
    RouterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/router:Router',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.bgp = registerOutput<RouterBgp?>('bgp');
    this.creationTimestamp = registerOutput<String>('creationTimestamp');
    this.description = registerOutput<String?>('description');
    this.encryptedInterconnectRouter =
        registerOutput<bool?>('encryptedInterconnectRouter');
    this.md5AuthenticationKeys =
        registerOutput<RouterMd5AuthenticationKeys?>('md5AuthenticationKeys');
    this.name = registerOutput<String>('name');
    this.nccGateway = registerOutput<String?>('nccGateway');
    this.network = registerOutput<String?>('network');
    this.params = registerOutput<RouterParams?>('params');
    this.project = registerOutput<String>('project');
    this.region = registerOutput<String>('region');
    this.selfLink = registerOutput<String>('selfLink');
  }
}
