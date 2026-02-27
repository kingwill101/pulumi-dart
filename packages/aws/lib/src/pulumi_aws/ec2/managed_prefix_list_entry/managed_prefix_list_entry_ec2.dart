import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_prefix_list_entry_args.dart';

/// Use the `aws_prefix_list_entry` resource to manage a managed prefix list entry.
///
/// > **NOTE:** Pulumi currently provides two resources for managing Managed Prefix Lists and Managed Prefix List Entries. The standalone resource, Managed Prefix List Entry, is used to manage a single entry. The Managed Prefix List resource is used to manage multiple entries defined in-line. It is important to note that you cannot use a Managed Prefix List with in-line rules in conjunction with any Managed Prefix List Entry resources. This will result in a conflict of entries and will cause the entries to be overwritten.
///
/// > **NOTE:** To improve execution times on larger updates, it is recommended to use the inline `entry` block as part of the Managed Prefix List resource when creating a prefix list with more than 100 entries. You can find more information about the resource here.
///
/// ## Example Usage
///
/// Basic usage.
///
///
///
/// ## Import
///
/// Using `pulumi import`, import prefix list entries using `prefix_list_id` and `cidr` separated by a comma (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:ec2/managedPrefixListEntry:ManagedPrefixListEntry default pl-0570a1d2d725c16be,10.0.3.0/24
/// ```
class ManagedPrefixListEntryEc2 extends pulumi.CustomResource {
  /// CIDR block of this entry.
  late final pulumi.Output<String> cidr;

  /// Description of this entry. Please note that due to API limitations, updating only the description of an entry will require recreating the entry.
  late final pulumi.Output<String?> description;

  /// The ID of the prefix list.
  late final pulumi.Output<String> prefixListId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  ManagedPrefixListEntryEc2(
    String name, {
    ManagedPrefixListEntryArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/managedPrefixListEntry:ManagedPrefixListEntry',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.cidr = registerOutput<String>('cidr');
    this.description = registerOutput<String?>('description');
    this.prefixListId = registerOutput<String>('prefixListId');
    this.region = registerOutput<String>('region');
  }
}
