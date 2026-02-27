import 'package:pulumi/pulumi.dart';
import 'tag_args5.dart';

/// Manages an individual Organizations resource tag. This resource should only be used in cases where Organizations resources are created outside Terraform (e.g., Organizations Accounts implicitly created by AWS Control Tower).
///
/// > **NOTE:** This tagging resource should not be combined with the Terraform resource for managing the parent resource. For example, using `aws.organizations.Account` and `aws.organizations.Tag` to manage tags of the same Organizations account will cause a perpetual difference where the `aws.organizations.Account` resource will try to remove the tag being added by the `aws.organizations.Tag` resource. However, if the parent resource is created in the same configuration (i.e., if you have no other choice), you should add `ignore_changes = [tags]` in the parent resource's lifecycle block. This ensures that Terraform ignores differences in tags managed via the separate tagging resource, avoiding the perpetual difference mentioned above.
///
/// > **NOTE:** This tagging resource does not use the provider `ignore_tags` configuration.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.organizations.Tag` using the Organizations resource identifier and key, separated by a comma (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:organizations/tag:Tag example ou-1234567,ExampleKey
/// ```
class Tag5 extends CustomResource {
  /// Tag name.
  late final Output<String> key;

  /// Id of the Organizations resource to tag.
  late final Output<String> resourceId;

  /// Tag value.
  late final Output<String> value;

  Tag5(
    String name, {
    TagArgs5? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:organizations/tag:Tag',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.key = registerOutput<String>('key');
    this.resourceId = registerOutput<String>('resourceId');
    this.value = registerOutput<String>('value');
  }
}
