import 'package:pulumi/pulumi.dart';
import 'public_advertised_prefix_args.dart';

/// Represents a PublicAdvertisedPrefix for use with bring your own IP addresses (BYOIP).
///
///
/// To get more information about PublicAdvertisedPrefix, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/publicAdvertisedPrefixes)
/// * How-to Guides
/// * [Using bring your own IP](https://cloud.google.com/vpc/docs/using-bring-your-own-ip)
///
/// ## Example Usage
///
/// ### Public Advertised Prefixes Basic
///
///
///
/// ### Public Advertised Prefixes Pdp Scope
///
///
///
/// ### Public Advertised Prefixes Ipv6 Access Type
///
///
///
///
/// ## Import
///
/// PublicAdvertisedPrefix can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/global/publicAdvertisedPrefixes/{{name}}`
///
/// * `{{project}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, PublicAdvertisedPrefix can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/publicAdvertisedPrefix:PublicAdvertisedPrefix default projects/{{project}}/global/publicAdvertisedPrefixes/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/publicAdvertisedPrefix:PublicAdvertisedPrefix default {{project}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/publicAdvertisedPrefix:PublicAdvertisedPrefix default {{name}}
/// ```
class PublicAdvertisedPrefix extends CustomResource {
  /// An optional description of this resource.
  late final Output<String?> description;

  /// The IPv4 address to be used for reverse DNS verification.
  late final Output<String?> dnsVerificationIp;

  /// The address range, in CIDR format, represented by this public advertised prefix.
  late final Output<String> ipCidrRange;

  /// The internet access type for IPv6 Public Advertised Prefixes. It can be
  /// set to one of following:
  /// * EXTERNAL: Default access type. The prefix will be announced to the
  /// internet. All children PDPs will have access type as EXTERNAL.
  /// * INTERNAL: The prefix won’t be announced to the internet. Prefix will
  /// be used privately within Google Cloud. All children PDPs will have
  /// access type as INTERNAL.
  /// Possible values are: `EXTERNAL`, `INTERNAL`.
  late final Output<String> ipv6AccessType;

  /// Name of the resource. The name must be 1-63 characters long, and
  /// comply with RFC1035. Specifically, the name must be 1-63 characters
  /// long and match the regular expression `a-z?`
  /// which means the first character must be a lowercase letter, and all
  /// following characters must be a dash, lowercase letter, or digit,
  /// except the last character, which cannot be a dash.
  late final Output<String> name;

  /// Specifies how child public delegated prefix will be scoped. pdpScope
  /// must be one of: GLOBAL, REGIONAL
  /// * REGIONAL: The public delegated prefix is regional only. The
  /// provisioning will take a few minutes.
  /// * GLOBAL: The public delegated prefix is global only. The provisioning
  /// will take ~4 weeks.
  /// Possible values are: `GLOBAL`, `REGIONAL`.
  late final Output<String?> pdpScope;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The URI of the created resource.
  late final Output<String> selfLink;

  /// Output Only. The shared secret to be used for reverse DNS verification.
  late final Output<String> sharedSecret;

  PublicAdvertisedPrefix(
    String name, {
    PublicAdvertisedPrefixArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:compute/publicAdvertisedPrefix:PublicAdvertisedPrefix',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.description = registerOutput<String?>('description');
    this.dnsVerificationIp = registerOutput<String?>('dnsVerificationIp');
    this.ipCidrRange = registerOutput<String>('ipCidrRange');
    this.ipv6AccessType = registerOutput<String>('ipv6AccessType');
    this.name = registerOutput<String>('name');
    this.pdpScope = registerOutput<String?>('pdpScope');
    this.project = registerOutput<String>('project');
    this.selfLink = registerOutput<String>('selfLink');
    this.sharedSecret = registerOutput<String>('sharedSecret');
  }
}
