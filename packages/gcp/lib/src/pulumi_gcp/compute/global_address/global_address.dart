import 'package:pulumi/pulumi.dart';
import 'global_address_args.dart';

/// Represents a Global Address resource. Global addresses are used for
/// HTTP(S) load balancing.
///
///
/// To get more information about GlobalAddress, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/v1/globalAddresses)
/// * How-to Guides
/// * [Reserving a Static External IP Address](https://cloud.google.com/compute/docs/ip-addresses/reserve-static-external-ip-address)
///
/// ## Example Usage
///
/// ### Global Address Basic
///
///
///
/// ### Global Address Private Services Connect
///
///
///
///
/// ## Import
///
/// GlobalAddress can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/global/addresses/{{name}}`
///
/// * `{{project}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, GlobalAddress can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/globalAddress:GlobalAddress default projects/{{project}}/global/addresses/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/globalAddress:GlobalAddress default {{project}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/globalAddress:GlobalAddress default {{name}}
/// ```
class GlobalAddress extends CustomResource {
  /// The IP address or beginning of the address range represented by this
  /// resource. This can be supplied as an input to reserve a specific
  /// address or omitted to allow GCP to choose a valid one for you.
  late final Output<String> address;

  /// The type of the address to reserve.
  /// * EXTERNAL indicates public/external single IP address.
  /// * INTERNAL indicates internal IP ranges belonging to some network.
  /// Default value is `EXTERNAL`.
  /// Possible values are: `EXTERNAL`, `INTERNAL`.
  late final Output<String?> addressType;

  /// Creation timestamp in RFC3339 text format.
  late final Output<String> creationTimestamp;

  /// An optional description of this resource.
  late final Output<String?> description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// The IP Version that will be used by this address. The default value is `IPV4`.
  /// Possible values are: `IPV4`, `IPV6`.
  late final Output<String?> ipVersion;

  /// The fingerprint used for optimistic locking of this resource.  Used
  /// internally during updates.
  late final Output<String> labelFingerprint;

  /// Labels to apply to this address.  A list of key->value pairs.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// Name of the resource. Provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035.  Specifically, the name must be 1-63 characters long and
  /// match the regular expression `a-z?` which means
  /// the first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the last
  /// character, which cannot be a dash.
  late final Output<String> name;

  /// The URL of the network in which to reserve the IP range. The IP range
  /// must be in RFC1918 space. The network cannot be deleted if there are
  /// any reserved IP ranges referring to it.
  /// This should only be set when using an Internal address.
  late final Output<String?> network;

  /// The prefix length of the IP range. If not present, it means the
  /// address field is a single IP address.
  /// This field is not applicable to addresses with addressType=INTERNAL
  /// when purpose=PRIVATE_SERVICE_CONNECT
  late final Output<int> prefixLength;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// The purpose of the resource. Possible values include:
  /// * VPC_PEERING - for peer networks
  /// * PRIVATE_SERVICE_CONNECT - for  Private Service Connect networks
  late final Output<String?> purpose;

  /// The URI of the created resource.
  late final Output<String> selfLink;

  GlobalAddress(
    String name, {
    GlobalAddressArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:compute/globalAddress:GlobalAddress',
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
    this.ipVersion = registerOutput<String?>('ipVersion');
    this.labelFingerprint = registerOutput<String>('labelFingerprint');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.name = registerOutput<String>('name');
    this.network = registerOutput<String?>('network');
    this.prefixLength = registerOutput<int>('prefixLength');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.purpose = registerOutput<String?>('purpose');
    this.selfLink = registerOutput<String>('selfLink');
  }
}
