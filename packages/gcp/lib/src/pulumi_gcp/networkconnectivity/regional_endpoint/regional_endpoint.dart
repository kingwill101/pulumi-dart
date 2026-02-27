import 'package:pulumi/pulumi.dart' as pulumi;
import 'regional_endpoint_args.dart';

/// Regional Private Service Connect (PSC) endpoint resource.
///
///
/// To get more information about RegionalEndpoint, see:
///
/// * [API documentation](https://cloud.google.com/network-connectivity/docs/reference/networkconnectivity/rest/v1/projects.locations.regionalEndpoints)
/// * How-to Guides
/// * [Access regional Google APIs through endpoints](https://cloud.google.com/vpc/docs/access-regional-google-apis-endpoints)
///
/// ## Example Usage
///
/// ### Network Connectivity Regional Endpoint Regional Access
///
///
///
/// ### Network Connectivity Regional Endpoint Global Access
///
///
///
///
/// ## Import
///
/// RegionalEndpoint can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/regionalEndpoints/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, RegionalEndpoint can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networkconnectivity/regionalEndpoint:RegionalEndpoint default projects/{{project}}/locations/{{location}}/regionalEndpoints/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networkconnectivity/regionalEndpoint:RegionalEndpoint default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networkconnectivity/regionalEndpoint:RegionalEndpoint default {{location}}/{{name}}
/// ```
class RegionalEndpoint extends pulumi.CustomResource {
  /// The access type of this regional endpoint. This field is reflected in the PSC Forwarding Rule configuration to enable global access.
  /// Possible values are: `GLOBAL`, `REGIONAL`.
  late final pulumi.Output<String> accessType;

  /// The IP Address of the Regional Endpoint. When no address is provided, an IP from the subnetwork is allocated. Use one of the following formats: * IPv4 address as in `10.0.0.1` * Address resource URI as in `projects/{project}/regions/{region}/addresses/{address_name}`
  /// > **Note:** This field accepts both a reference to a Compute Address resource, which is the resource name of which format is given in the description, and IP literal value. If the user chooses to input a reserved address value; they need to make sure that the reserved address is in IPv4 version, its purpose is GCE_ENDPOINT, its type is INTERNAL and its status is RESERVED. If the user chooses to input an IP literal, they need to make sure that it's a valid IPv4 address (x.x.x.x) within the subnetwork.
  late final pulumi.Output<String> address;

  /// Time when the RegionalEndpoint was created.
  late final pulumi.Output<String> createTime;

  /// A description of this resource.
  late final pulumi.Output<String?> description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// User-defined labels.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// The location of the RegionalEndpoint.
  late final pulumi.Output<String> location;

  /// The name of the RegionalEndpoint.
  late final pulumi.Output<String> name;

  /// The name of the VPC network for this private regional endpoint. Format: `projects/{project}/global/networks/{network}`
  late final pulumi.Output<String> network;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The resource reference of the PSC Forwarding Rule created on behalf of the customer. Format: `//compute.googleapis.com/projects/{project}/regions/{region}/forwardingRules/{forwarding_rule_name}`
  late final pulumi.Output<String> pscForwardingRule;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// The name of the subnetwork from which the IP address will be allocated. Format: `projects/{project}/regions/{region}/subnetworks/{subnetwork}`
  late final pulumi.Output<String> subnetwork;

  /// The service endpoint this private regional endpoint connects to. Format: `{apiname}.{region}.rep.googleapis.com` Example: \"cloudkms.us-central1.rep.googleapis.com\".
  late final pulumi.Output<String> targetGoogleApi;

  /// Time when the RegionalEndpoint was updated.
  late final pulumi.Output<String> updateTime;

  RegionalEndpoint(
    String name, {
    RegionalEndpointArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:networkconnectivity/regionalEndpoint:RegionalEndpoint',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accessType = registerOutput<String>('accessType');
    this.address = registerOutput<String>('address');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.network = registerOutput<String>('network');
    this.project = registerOutput<String>('project');
    this.pscForwardingRule = registerOutput<String>('pscForwardingRule');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.subnetwork = registerOutput<String>('subnetwork');
    this.targetGoogleApi = registerOutput<String>('targetGoogleApi');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
