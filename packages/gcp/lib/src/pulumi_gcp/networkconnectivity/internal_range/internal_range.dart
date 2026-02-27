import 'package:pulumi/pulumi.dart' as pulumi;
import '../internal_range_allocation_options/internal_range_allocation_options.dart';
import '../internal_range_migration/internal_range_migration.dart';
import 'internal_range_args.dart';

/// The internal range resource for IPAM operations within a VPC network. Used to represent a private address range along with behavioral characterstics of that range (its usage and peering behavior). Networking resources can link to this range if they are created as belonging to it.
///
///
/// To get more information about InternalRange, see:
///
/// * [API documentation](https://cloud.google.com/network-connectivity/docs/reference/networkconnectivity/rest/v1/projects.locations.internalRanges)
/// * How-to Guides
/// * [Use internal ranges](https://cloud.google.com/vpc/docs/create-use-internal-ranges)
///
/// ## Example Usage
///
/// ### Network Connectivity Internal Ranges Basic
///
///
///
/// ### Network Connectivity Internal Ranges Automatic Reservation
///
///
///
/// ### Network Connectivity Internal Ranges External Ranges
///
///
///
/// ### Network Connectivity Internal Ranges Reserve With Overlap
///
///
///
/// ### Network Connectivity Internal Ranges Migration
///
///
///
/// ### Network Connectivity Internal Ranges Allocation Algoritms
///
///
///
/// ### Network Connectivity Internal Ranges Allocation Algoritms Random First N
///
///
///
///
/// ## Import
///
/// InternalRange can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/global/internalRanges/{{name}}`
///
/// * `{{project}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, InternalRange can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networkconnectivity/internalRange:InternalRange default projects/{{project}}/locations/global/internalRanges/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networkconnectivity/internalRange:InternalRange default {{project}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networkconnectivity/internalRange:InternalRange default {{name}}
/// ```
class InternalRange extends pulumi.CustomResource {
  /// Options for automatically allocating a free range with a size given by prefixLength.
  /// Structure is documented below.
  late final pulumi.Output<InternalRangeAllocationOptions?> allocationOptions;

  /// An optional description of this resource.
  late final pulumi.Output<String?> description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// Optional. List of IP CIDR ranges to be excluded. Resulting reserved Internal Range will not overlap with any CIDR blocks mentioned in this list.
  /// Only IPv4 CIDR ranges are supported.
  late final pulumi.Output<List<String>?> excludeCidrRanges;

  /// Immutable ranges cannot have their fields modified, except for labels and description.
  late final pulumi.Output<bool?> immutable;

  /// The IP range that this internal range defines.
  /// NOTE: IPv6 ranges are limited to usage=EXTERNAL_TO_VPC and peering=FOR_SELF
  /// NOTE: For IPv6 Ranges this field is compulsory, i.e. the address range must be specified explicitly.
  late final pulumi.Output<String> ipCidrRange;

  /// User-defined labels.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// Specification for migration with source and target resource names.
  /// Structure is documented below.
  late final pulumi.Output<InternalRangeMigration?> migration;

  /// The name of the policy based route.
  late final pulumi.Output<String> name;

  /// Fully-qualified URL of the network that this route applies to, for example: projects/my-project/global/networks/my-network.
  late final pulumi.Output<String> network;

  /// Optional. Types of resources that are allowed to overlap with the current internal range.
  /// Each value may be one of: `OVERLAP_ROUTE_RANGE`, `OVERLAP_EXISTING_SUBNET_RANGE`.
  late final pulumi.Output<List<String>?> overlaps;

  /// The type of peering set for this internal range.
  /// Possible values are: `FOR_SELF`, `FOR_PEER`, `NOT_SHARED`.
  late final pulumi.Output<String> peering;

  /// An alternate to ipCidrRange. Can be set when trying to create a reservation that automatically finds a free range of the given size.
  /// If both ipCidrRange and prefixLength are set, there is an error if the range sizes do not match. Can also be used during updates to change the range size.
  /// NOTE: For IPv6 this field only works if ip_cidr_range is set as well, and both fields must match. In other words, with IPv6 this field only works as
  /// a redundant parameter.
  late final pulumi.Output<int?> prefixLength;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// Optional. Can be set to narrow down or pick a different address space while searching for a free range.
  /// If not set, defaults to the "10.0.0.0/8" address space. This can be used to search in other rfc-1918 address spaces like "172.16.0.0/12" and "192.168.0.0/16" or non-rfc-1918 address spaces used in the VPC.
  late final pulumi.Output<List<String>?> targetCidrRanges;

  /// The type of usage set for this InternalRange.
  /// Possible values are: `FOR_VPC`, `EXTERNAL_TO_VPC`, `FOR_MIGRATION`.
  late final pulumi.Output<String> usage;

  /// Output only. The list of resources that refer to this internal range.
  /// Resources that use the internal range for their range allocation are referred to as users of the range.
  /// Other resources mark themselves as users while doing so by creating a reference to this internal range. Having a user, based on this reference, prevents deletion of the internal range referred to. Can be empty.
  late final pulumi.Output<List<String>> users;

  InternalRange(
    String name, {
    InternalRangeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:networkconnectivity/internalRange:InternalRange',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.allocationOptions =
        registerOutput<InternalRangeAllocationOptions?>('allocationOptions');
    this.description = registerOutput<String?>('description');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.excludeCidrRanges = registerOutput<List<String>?>('excludeCidrRanges');
    this.immutable = registerOutput<bool?>('immutable');
    this.ipCidrRange = registerOutput<String>('ipCidrRange');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.migration = registerOutput<InternalRangeMigration?>('migration');
    this.name = registerOutput<String>('name');
    this.network = registerOutput<String>('network');
    this.overlaps = registerOutput<List<String>?>('overlaps');
    this.peering = registerOutput<String>('peering');
    this.prefixLength = registerOutput<int?>('prefixLength');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.targetCidrRanges = registerOutput<List<String>?>('targetCidrRanges');
    this.usage = registerOutput<String>('usage');
    this.users = registerOutput<List<String>>('users');
  }
}
