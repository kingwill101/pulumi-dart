import 'package:pulumi/pulumi.dart';
import 'address_args.dart';

/// Represents an Address resource.
///
/// Each virtual machine instance has an ephemeral internal IP address and,
/// optionally, an external IP address. To communicate between instances on
/// the same network, you can use an instance's internal IP address. To
/// communicate with the Internet and instances outside of the same network,
/// you must specify the instance's external IP address.
///
/// Internal IP addresses are ephemeral and only belong to an instance for
/// the lifetime of the instance; if the instance is deleted and recreated,
/// the instance is assigned a new internal IP address, either by Compute
/// Engine or by you. External IP addresses can be either ephemeral or
/// static.
///
///
/// To get more information about Address, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/beta/addresses)
/// * How-to Guides
/// * [Reserving a Static External IP Address](https://cloud.google.com/compute/docs/instances-and-network)
/// * [Reserving a Static Internal IP Address](https://cloud.google.com/compute/docs/ip-addresses/reserve-static-internal-ip-address)
///
/// ## Example Usage
///
/// ### Address Basic
///
///
///
/// ### Address With Subnetwork
///
///
///
/// ### Address With Gce Endpoint
///
///
///
/// ### Instance With Ip
///
///
///
/// ### Compute Address Ipsec Interconnect
///
///
///
/// ## Import
///
/// Address can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/regions/{{region}}/addresses/{{name}}`
///
/// * `{{project}}/{{region}}/{{name}}`
///
/// * `{{region}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, Address can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/address:Address default projects/{{project}}/regions/{{region}}/addresses/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/address:Address default {{project}}/{{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/address:Address default {{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/address:Address default {{name}}
/// ```
class Address extends CustomResource {
  /// The static external IP address represented by this resource.
  /// The IP address must be inside the specified subnetwork,
  /// if any. Set by the API if undefined.
  late final Output<String> address;

  /// The type of address to reserve.
  /// Note: if you set this argument's value as `INTERNAL` you need to leave the `network_tier` argument unset in that resource block.
  /// Default value is `EXTERNAL`.
  /// Possible values are: `INTERNAL`, `EXTERNAL`.
  late final Output<String?> addressType;

  /// Creation timestamp in RFC3339 text format.
  late final Output<String> creationTimestamp;

  /// An optional description of this resource.
  late final Output<String?> description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// Reference to the source of external IPv4 addresses, like a PublicDelegatedPrefix(PDP) for BYOIP.
  /// The PDP must support enhanced IPv4 allocations.
  /// Use one of the following formats to specify a PDP when reserving an external IPv4 address using BYOIP.
  /// Full resource URL, as in:
  /// * `https://www.googleapis.com/compute/v1/projects/{{projectId}}/regions/{{region}}/publicDelegatedPrefixes/{{pdp-name}}`
  /// Partial URL, as in:
  /// * `projects/{{projectId}}/regions/region/publicDelegatedPrefixes/{{pdp-name}}`
  /// * `regions/{{region}}/publicDelegatedPrefixes/{{pdp-name}}`
  late final Output<String?> ipCollection;

  /// The IP Version that will be used by this address. The default value is `IPV4`.
  /// Possible values are: `IPV4`, `IPV6`.
  late final Output<String?> ipVersion;

  /// The endpoint type of this address, which should be VM or NETLB. This is
  /// used for deciding which type of endpoint this address can be used after
  /// the external IPv6 address reservation.
  /// Possible values are: `VM`, `NETLB`.
  late final Output<String?> ipv6EndpointType;

  /// The fingerprint used for optimistic locking of this resource.  Used
  /// internally during updates.
  late final Output<String> labelFingerprint;

  /// Labels to apply to this address.  A list of key->value pairs.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// Name of the resource. The name must be 1-63 characters long, and
  /// comply with RFC1035. Specifically, the name must be 1-63 characters
  /// long and match the regular expression `a-z?`
  /// which means the first character must be a lowercase letter, and all
  /// following characters must be a dash, lowercase letter, or digit,
  /// except the last character, which cannot be a dash.
  late final Output<String> name;

  /// The URL of the network in which to reserve the address. This field
  /// can only be used with INTERNAL type with the VPC_PEERING and
  /// IPSEC_INTERCONNECT purposes.
  late final Output<String?> network;

  /// The networking tier used for configuring this address. If this field is not
  /// specified, it is assumed to be PREMIUM.
  /// This argument should not be used when configuring Internal addresses, because [network tier cannot be set for internal traffic; it's always Premium](https://cloud.google.com/network-tiers/docs/overview).
  /// Possible values are: `PREMIUM`, `STANDARD`.
  late final Output<String> networkTier;

  /// The prefix length if the resource represents an IP range.
  late final Output<int> prefixLength;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// The purpose of this resource, which can be one of the following values.
  /// * GCE_ENDPOINT for addresses that are used by VM instances, alias IP
  /// ranges, load balancers, and similar resources.
  /// * SHARED_LOADBALANCER_VIP for an address that can be used by multiple
  /// internal load balancers.
  /// * VPC_PEERING for addresses that are reserved for VPC peer networks.
  /// * IPSEC_INTERCONNECT for addresses created from a private IP range that
  /// are reserved for a VLAN attachment in an HA VPN over Cloud Interconnect
  /// configuration. These addresses are regional resources.
  /// * PRIVATE_SERVICE_CONNECT for a private network address that is used to
  /// configure Private Service Connect. Only global internal addresses can use
  /// this purpose.
  /// This should only be set when using an Internal address.
  late final Output<String> purpose;

  /// The Region in which the created address should reside.
  /// If it is not provided, the provider region is used.
  late final Output<String> region;

  /// The URI of the created resource.
  late final Output<String> selfLink;

  /// The URL of the subnetwork in which to reserve the address. If an IP
  /// address is specified, it must be within the subnetwork's IP range.
  /// This field can only be used with INTERNAL type with
  /// GCE_ENDPOINT/DNS_RESOLVER purposes.
  late final Output<String> subnetwork;

  /// The URLs of the resources that are using this address.
  late final Output<List<String>> users;

  Address(
    String name, {
    AddressArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:compute/address:Address',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.address = registerOutput<String>('address');
    this.addressType = registerOutput<String?>('addressType');
    this.creationTimestamp = registerOutput<String>('creationTimestamp');
    this.description = registerOutput<String?>('description');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.ipCollection = registerOutput<String?>('ipCollection');
    this.ipVersion = registerOutput<String?>('ipVersion');
    this.ipv6EndpointType = registerOutput<String?>('ipv6EndpointType');
    this.labelFingerprint = registerOutput<String>('labelFingerprint');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.name = registerOutput<String>('name');
    this.network = registerOutput<String?>('network');
    this.networkTier = registerOutput<String>('networkTier');
    this.prefixLength = registerOutput<int>('prefixLength');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.purpose = registerOutput<String>('purpose');
    this.region = registerOutput<String>('region');
    this.selfLink = registerOutput<String>('selfLink');
    this.subnetwork = registerOutput<String>('subnetwork');
    this.users = registerOutput<List<String>>('users');
  }
}
