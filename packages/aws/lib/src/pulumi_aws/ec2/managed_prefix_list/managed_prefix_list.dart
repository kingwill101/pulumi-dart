import 'package:pulumi/pulumi.dart';
import '../managed_prefix_list_entry/managed_prefix_list_entry.dart';
import 'managed_prefix_list_args.dart';

/// Provides a managed prefix list resource.
///
/// > **NOTE on Managed Prefix Lists and Managed Prefix List Entries:** The provider
/// currently provides both a standalone Managed Prefix List Entry resource (a single entry),
/// and a Managed Prefix List resource with entries defined in-line. At this time you
/// cannot use a Managed Prefix List with in-line rules in conjunction with any Managed
/// Prefix List Entry resources. Doing so will cause a conflict of entries and will overwrite entries.
///
/// > **NOTE on `max_entries`:** When you reference a Prefix List in a resource,
/// the maximum number of entries for the prefix lists counts as the same number of rules
/// or entries for the resource. For example, if you create a prefix list with a maximum
/// of 20 entries and you reference that prefix list in a security group rule, this counts
/// as 20 rules for the security group.
///
/// ## Example Usage
///
/// Basic usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Prefix Lists using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/managedPrefixList:ManagedPrefixList default pl-0570a1d2d725c16be
/// ```
class ManagedPrefixList extends CustomResource {
  /// Address family (`IPv4` or `IPv6`) of this prefix list.
  late final Output<String> addressFamily;

  /// ARN of the prefix list.
  late final Output<String> arn;

  /// Configuration block for prefix list entry. Detailed below. Different entries may have overlapping CIDR blocks, but a particular CIDR should not be duplicated.
  late final Output<List<ManagedPrefixListEntry>> entries;

  /// Maximum number of entries that this prefix list can contain.
  late final Output<int> maxEntries;

  /// Name of this resource. The name must not start with `com.amazonaws`.
  late final Output<String> name;

  /// ID of the AWS account that owns this prefix list.
  late final Output<String> ownerId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Map of tags to assign to this resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Latest version of this prefix list.
  late final Output<int> version;

  ManagedPrefixList(
    String name, {
    ManagedPrefixListArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2/managedPrefixList:ManagedPrefixList',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.addressFamily = registerOutput<String>('addressFamily');
    this.arn = registerOutput<String>('arn');
    this.entries = registerOutput<List<ManagedPrefixListEntry>>('entries');
    this.maxEntries = registerOutput<int>('maxEntries');
    this.name = registerOutput<String>('name');
    this.ownerId = registerOutput<String>('ownerId');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.version = registerOutput<int>('version');
  }
}
