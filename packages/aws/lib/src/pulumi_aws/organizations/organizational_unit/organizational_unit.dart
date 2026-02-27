import 'package:pulumi/pulumi.dart' as pulumi;
import '../organizational_unit_account/organizational_unit_account.dart';
import 'organizational_unit_args.dart';

/// Provides a resource to create an organizational unit.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `id` (String) ID of the organizational unit.
///
/// #### Optional
///
/// * `account_id` (String) AWS Account where this resource is managed.
///
///
/// Using `pulumi import`, import AWS Organizations Organizational Units using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:organizations/organizationalUnit:OrganizationalUnit example ou-1234567
/// ```
class OrganizationalUnit extends pulumi.CustomResource {
  /// List of child accounts for this Organizational Unit. Does not return account information for child Organizational Units. All elements have these attributes:
  late final pulumi.Output<List<OrganizationalUnitAccount>> accounts;

  /// ARN of the organizational unit
  late final pulumi.Output<String> arn;

  /// The name for the organizational unit
  late final pulumi.Output<String> name;

  /// ID of the parent organizational unit, which may be the root
  late final pulumi.Output<String> parentId;

  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  OrganizationalUnit(
    String name, {
    OrganizationalUnitArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:organizations/organizationalUnit:OrganizationalUnit',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accounts = registerOutput<List<OrganizationalUnitAccount>>('accounts');
    this.arn = registerOutput<String>('arn');
    this.name = registerOutput<String>('name');
    this.parentId = registerOutput<String>('parentId');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
