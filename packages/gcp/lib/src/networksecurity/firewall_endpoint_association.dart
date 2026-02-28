import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_endpoint_association_args.dart';

/// Firewall endpoint association links a firewall endpoint to a VPC network in
/// the same zone. After you define this association, Cloud Firewall forwards the
/// zonal workload traffic in your VPC network that requires layer 7 inspection to
/// the attached firewall endpoint.
///
///
/// To get more information about FirewallEndpointAssociation, see:
///
/// * [API documentation](https://cloud.google.com/firewall/docs/reference/network-security/rest/v1/projects.locations.firewallEndpointAssociations#FirewallEndpointAssociation)
/// * How-to Guides
/// * [Create and associate firewall endpoints](https://cloud.google.com/firewall/docs/configure-firewall-endpoints)
/// * [Firewall endpoint overview](https://cloud.google.com/firewall/docs/about-firewall-endpoints)
///
/// > **Warning:** If you are using User ADCs (Application Default Credentials) with this resource,
/// you must specify a `billing_project_id` and set `user_project_override` to true
/// in the provider configuration. Otherwise the ACM API will return a 403 error.
/// Your account must have the `serviceusage.services.use` permission on the
/// `billing_project_id` you defined.
///
/// ## Example Usage
///
/// ## Import
///
/// FirewallEndpointAssociation can be imported using any of these accepted formats:
///
/// * `{{parent}}/locations/{{location}}/firewallEndpointAssociations/{{name}}`
///
/// When using the `pulumi import` command, FirewallEndpointAssociation can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networksecurity/firewallEndpointAssociation:FirewallEndpointAssociation default {{parent}}/locations/{{location}}/firewallEndpointAssociations/{{name}}
/// ```
class FirewallEndpointAssociation extends pulumi.CustomResource {
  /// Time the firewall endpoint was created in UTC.
  late final pulumi.Output<String> createTime;
  /// Whether the association is disabled. True indicates that traffic will not be intercepted.
  /// > **Note:** The API will reject the request if this value is set to true when creating the resource,
  /// otherwise on an update the association can be disabled.
  late final pulumi.Output<bool?> disabled;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// The URL of the firewall endpoint that is being associated.
  late final pulumi.Output<String> firewallEndpoint;
  /// A map of key/value label pairs to assign to the resource.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// The location (zone) of the firewall endpoint association.
  late final pulumi.Output<String> location;
  /// The name of the firewall endpoint association resource.
  late final pulumi.Output<String> name;
  /// The URL of the network that is being associated.
  late final pulumi.Output<String> network;
  /// The name of the parent this firewall endpoint association belongs to.
  /// Format: projects/{project_id}.
  late final pulumi.Output<String?> parent;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// Whether reconciling is in progress, recommended per https://google.aip.dev/128.
  late final pulumi.Output<bool> reconciling;
  /// Server-defined URL of this resource.
  late final pulumi.Output<String> selfLink;
  /// The current state of the endpoint.
  late final pulumi.Output<String> state;
  /// The URL of the TlsInspectionPolicy that is being associated.
  late final pulumi.Output<String?> tlsInspectionPolicy;
  /// Time the firewall endpoint was updated in UTC.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [FirewallEndpointAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FirewallEndpointAssociation]. {@macro pulumi_networksecurity_firewall_endpoint_association_firewall_endpoint_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FirewallEndpointAssociation(
    String name, {
    FirewallEndpointAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:networksecurity/firewallEndpointAssociation:FirewallEndpointAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.disabled = registerOutput<bool?>('disabled');
    this.effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    this.firewallEndpoint = registerOutput<String>('firewallEndpoint');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.network = registerOutput<String>('network');
    this.parent = registerOutput<String?>('parent');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.reconciling = registerOutput<bool>('reconciling');
    this.selfLink = registerOutput<String>('selfLink');
    this.state = registerOutput<String>('state');
    this.tlsInspectionPolicy = registerOutput<String?>('tlsInspectionPolicy');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
