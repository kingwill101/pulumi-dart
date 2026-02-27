import 'package:pulumi/pulumi.dart';
import '../public_delegated_prefix_public_delegated_sub_prefix/public_delegated_prefix_public_delegated_sub_prefix.dart';
import 'public_delegated_prefix_args.dart';

/// Represents a PublicDelegatedPrefix for use with bring your own IP addresses (BYOIP).
///
///
/// To get more information about PublicDelegatedPrefix, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/publicDelegatedPrefixes)
/// * How-to Guides
/// * [Using bring your own IP](https://cloud.google.com/vpc/docs/using-bring-your-own-ip)
///
/// ## Example Usage
///
/// ### Public Delegated Prefixes Basic
///
///
///
/// ### Public Delegated Prefixes Ipv6
///
///
///
/// ### Public Delegated Prefix Ipv6 Subnet Mode
///
///
///
/// ### Public Delegated Prefix Internal Ipv6 Subnet Mode
///
///
///
///
/// ## Import
///
/// PublicDelegatedPrefix can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/regions/{{region}}/publicDelegatedPrefixes/{{name}}`
///
/// * `{{project}}/{{region}}/{{name}}`
///
/// * `{{region}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, PublicDelegatedPrefix can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/publicDelegatedPrefix:PublicDelegatedPrefix default projects/{{project}}/regions/{{region}}/publicDelegatedPrefixes/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/publicDelegatedPrefix:PublicDelegatedPrefix default {{project}}/{{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/publicDelegatedPrefix:PublicDelegatedPrefix default {{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/publicDelegatedPrefix:PublicDelegatedPrefix default {{name}}
/// ```
class PublicDelegatedPrefix extends CustomResource {
  /// The allocatable prefix length supported by this public delegated prefix. This field is optional and cannot be set for prefixes in DELEGATION mode. It cannot be set for IPv4 prefixes either, and it always defaults to 32.
  late final Output<int> allocatablePrefixLength;

  /// An optional description of this resource.
  late final Output<String?> description;

  /// (Output)
  /// Whether this PublicDelegatedSubPrefix supports enhanced IPv4 allocations.
  /// Applicable for IPv4 sub-PDPs only.
  late final Output<bool> enableEnhancedIpv4Allocation;

  /// The IP address range, in CIDR format, represented by this public delegated prefix.
  late final Output<String> ipCidrRange;

  /// (Output)
  /// The internet access type for IPv6 Public Delegated Prefixes. Inherited
  /// from parent prefix and can be one of following:
  /// * EXTERNAL: The prefix will be announced to the internet. All children
  /// PDPs will have access type as EXTERNAL.
  /// * INTERNAL: The prefix won’t be announced to the internet. Prefix will
  /// be used privately within Google Cloud. All children PDPs will have
  /// access type as INTERNAL.
  late final Output<String> ipv6AccessType;

  /// If true, the prefix will be live migrated.
  late final Output<bool?> isLiveMigration;

  /// Specifies the mode of this IPv6 PDP. MODE must be one of:
  /// * DELEGATION
  /// * EXTERNAL_IPV6_FORWARDING_RULE_CREATION
  /// * EXTERNAL_IPV6_SUBNETWORK_CREATION
  /// * INTERNAL_IPV6_SUBNETWORK_CREATION
  /// Possible values are: `DELEGATION`, `EXTERNAL_IPV6_FORWARDING_RULE_CREATION`, `EXTERNAL_IPV6_SUBNETWORK_CREATION`, `INTERNAL_IPV6_SUBNETWORK_CREATION`.
  late final Output<String?> mode;

  /// Name of the resource. The name must be 1-63 characters long, and
  /// comply with RFC1035. Specifically, the name must be 1-63 characters
  /// long and match the regular expression `a-z?`
  /// which means the first character must be a lowercase letter, and all
  /// following characters must be a dash, lowercase letter, or digit,
  /// except the last character, which cannot be a dash.
  late final Output<String> name;

  /// The URL of parent prefix. Either PublicAdvertisedPrefix or PublicDelegatedPrefix.
  late final Output<String> parentPrefix;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// List of sub public delegated fixes for BYO IP functionality.
  /// Each item in this array represents a sub prefix that can be
  /// used to create addresses or further allocations.
  /// Structure is documented below.
  late final Output<List<PublicDelegatedPrefixPublicDelegatedSubPrefix>>
      publicDelegatedSubPrefixs;

  /// A region where the prefix will reside.
  late final Output<String> region;

  /// The URI of the created resource.
  late final Output<String> selfLink;

  PublicDelegatedPrefix(
    String name, {
    PublicDelegatedPrefixArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:compute/publicDelegatedPrefix:PublicDelegatedPrefix',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.allocatablePrefixLength =
        registerOutput<int>('allocatablePrefixLength');
    this.description = registerOutput<String?>('description');
    this.enableEnhancedIpv4Allocation =
        registerOutput<bool>('enableEnhancedIpv4Allocation');
    this.ipCidrRange = registerOutput<String>('ipCidrRange');
    this.ipv6AccessType = registerOutput<String>('ipv6AccessType');
    this.isLiveMigration = registerOutput<bool?>('isLiveMigration');
    this.mode = registerOutput<String?>('mode');
    this.name = registerOutput<String>('name');
    this.parentPrefix = registerOutput<String>('parentPrefix');
    this.project = registerOutput<String>('project');
    this.publicDelegatedSubPrefixs =
        registerOutput<List<PublicDelegatedPrefixPublicDelegatedSubPrefix>>(
            'publicDelegatedSubPrefixs');
    this.region = registerOutput<String>('region');
    this.selfLink = registerOutput<String>('selfLink');
  }
}
