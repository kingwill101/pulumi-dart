import 'package:pulumi/pulumi.dart';
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
class OrganizationalUnit extends CustomResource {
  /// List of child accounts for this Organizational Unit. Does not return account information for child Organizational Units. All elements have these attributes:
  late final Output<List<OrganizationalUnitAccount>> accounts;

  /// ARN of the organizational unit
  late final Output<String> arn;

  /// The name for the organizational unit
  late final Output<String> name;

  /// ID of the parent organizational unit, which may be the root
  late final Output<String> parentId;

  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  OrganizationalUnit(
    String name, {
    OrganizationalUnitArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:organizations/organizationalUnit:OrganizationalUnit',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.accounts = registerOutput<List<OrganizationalUnitAccount>>('accounts');
    this.arn = registerOutput<String>('arn');
    this.name = registerOutput<String>('name');
    this.parentId = registerOutput<String>('parentId');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
