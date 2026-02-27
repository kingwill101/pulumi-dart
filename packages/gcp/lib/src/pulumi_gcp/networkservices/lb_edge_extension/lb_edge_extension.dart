import 'package:pulumi/pulumi.dart';
import '../lb_edge_extension_extension_chain/lb_edge_extension_extension_chain.dart';
import 'lb_edge_extension_args.dart';

/// LbEdgeExtension is a resource that lets the extension service influence the selection of backend services and Cloud CDN cache keys by modifying request headers.
///
///
/// To get more information about LbEdgeExtension, see:
///
/// * [API documentation](https://cloud.google.com/service-extensions/docs/reference/rest/v1beta1/projects.locations.lbEdgeExtensions)
/// * How-to Guides
/// * [Configure a edge extension](https://cloud.google.com/service-extensions/docs/configure-edge-extensions)
///
/// ## Example Usage
///
/// ### Network Services Lb Edge Extension Basic
///
///
///
///
/// ## Import
///
/// LbEdgeExtension can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/lbEdgeExtensions/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, LbEdgeExtension can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networkservices/lbEdgeExtension:LbEdgeExtension default projects/{{project}}/locations/{{location}}/lbEdgeExtensions/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networkservices/lbEdgeExtension:LbEdgeExtension default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networkservices/lbEdgeExtension:LbEdgeExtension default {{location}}/{{name}}
/// ```
class LbEdgeExtension extends CustomResource {
  /// A human-readable description of the resource.
  late final Output<String?> description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// A set of ordered extension chains that contain the match conditions and extensions to execute.
  /// Match conditions for each extension chain are evaluated in sequence for a given request.
  /// The first extension chain that has a condition that matches the request is executed.
  /// Any subsequent extension chains do not execute. Limited to 5 extension chains per resource.
  /// Structure is documented below.
  late final Output<List<LbEdgeExtensionExtensionChain>> extensionChains;

  /// A list of references to the forwarding rules to which this service extension is attached.
  /// At least one forwarding rule is required. Only one LbEdgeExtension resource can be associated with a forwarding rule.
  late final Output<List<String>> forwardingRules;

  /// Set of labels associated with the LbEdgeExtension resource.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// All forwarding rules referenced by this extension must share the same load balancing scheme.
  /// Possible values are: `EXTERNAL_MANAGED`.
  late final Output<String> loadBalancingScheme;

  /// The location of the edge extension
  late final Output<String> location;

  /// Name of the LbEdgeExtension resource in the following format: projects/{project}/locations/{location}/lbEdgeExtensions/{lbEdgeExtensions}
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  LbEdgeExtension(
    String name, {
    LbEdgeExtensionArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:networkservices/lbEdgeExtension:LbEdgeExtension',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.description = registerOutput<String?>('description');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.extensionChains =
        registerOutput<List<LbEdgeExtensionExtensionChain>>('extensionChains');
    this.forwardingRules = registerOutput<List<String>>('forwardingRules');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.loadBalancingScheme = registerOutput<String>('loadBalancingScheme');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
  }
}
