import 'package:pulumi/pulumi.dart';
import '../lb_route_extension_extension_chain/lb_route_extension_extension_chain.dart';
import 'lb_route_extension_args.dart';

/// LbRouteExtension is a resource that lets you control where traffic is routed to for a given request.
///
///
/// To get more information about LbRouteExtension, see:
///
/// * [API documentation](https://cloud.google.com/service-extensions/docs/reference/rest/v1/projects.locations.lbRouteExtensions)
/// * How-to Guides
/// * [Configure a route extension](https://cloud.google.com/service-extensions/docs/configure-callout#configure_a_route_extension)
///
/// ## Example Usage
///
/// ## Import
///
/// LbRouteExtension can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/lbRouteExtensions/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, LbRouteExtension can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networkservices/lbRouteExtension:LbRouteExtension default projects/{{project}}/locations/{{location}}/lbRouteExtensions/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networkservices/lbRouteExtension:LbRouteExtension default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networkservices/lbRouteExtension:LbRouteExtension default {{location}}/{{name}}
/// ```
class LbRouteExtension extends CustomResource {
  /// A human-readable description of the resource.
  late final Output<String?> description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// A set of ordered extension chains that contain the match conditions and extensions to execute.
  /// Match conditions for each extension chain are evaluated in sequence for a given request.
  /// The first extension chain that has a condition that matches the request is executed.
  /// Any subsequent extension chains do not execute. Limited to 5 extension chains per resource.
  /// Further information can be found at https://cloud.google.com/service-extensions/docs/reference/rest/v1/ExtensionChain
  /// Structure is documented below.
  late final Output<List<LbRouteExtensionExtensionChain>> extensionChains;

  /// A list of references to the forwarding rules to which this service extension is attached to.
  /// At least one forwarding rule is required. There can be only one LbRouteExtension resource per forwarding rule.
  late final Output<List<String>> forwardingRules;

  /// Set of labels associated with the LbRouteExtension resource.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// All backend services and forwarding rules referenced by this extension must share the same load balancing scheme.
  /// For more information, refer to [Choosing a load balancer](https://cloud.google.com/load-balancing/docs/backend-service) and
  /// [Supported application load balancers](https://cloud.google.com/service-extensions/docs/callouts-overview#supported-lbs).
  /// Possible values are: `INTERNAL_MANAGED`, `EXTERNAL_MANAGED`.
  late final Output<String> loadBalancingScheme;

  /// The location of the route extension
  late final Output<String> location;

  /// Name of the LbRouteExtension resource in the following format: projects/{project}/locations/{location}/lbRouteExtensions/{lbRouteExtension}
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  LbRouteExtension(
    String name, {
    LbRouteExtensionArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:networkservices/lbRouteExtension:LbRouteExtension',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.description = Output.createUnknown<String?>();
    this.effectiveLabels = Output.createUnknown<Map<String, String>>();
    this.extensionChains =
        Output.createUnknown<List<LbRouteExtensionExtensionChain>>();
    this.forwardingRules = Output.createUnknown<List<String>>();
    this.labels = Output.createUnknown<Map<String, String>?>();
    this.loadBalancingScheme = Output.createUnknown<String>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.pulumiLabels = Output.createUnknown<Map<String, String>>();
  }
}
