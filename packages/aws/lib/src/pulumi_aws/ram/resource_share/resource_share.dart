import 'package:pulumi/pulumi.dart';
import 'resource_share_args.dart';

/// Manages a Resource Access Manager (RAM) Resource Share. To associate principals with the share, see the `aws.ram.PrincipalAssociation` resource. To associate resources with the share, see the `aws.ram.ResourceAssociation` resource.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import resource shares using the `arn` of the resource share. For example:
///
/// ```sh
/// $ pulumi import aws:ram/resourceShare:ResourceShare example arn:aws:ram:eu-west-1:123456789012:resource-share/73da1ab9-b94a-4ba3-8eb4-45917f7f4b12
/// ```
class ResourceShare extends CustomResource {
  /// Indicates whether principals outside your organization can be associated with a resource share.
  late final Output<bool?> allowExternalPrincipals;

  /// The Amazon Resource Name (ARN) of the resource share.
  late final Output<String> arn;

  /// The name of the resource share.
  late final Output<String> name;

  /// Specifies the Amazon Resource Names (ARNs) of the RAM permission to associate with the resource share. If you do not specify an ARN for the permission, RAM automatically attaches the default version of the permission for each resource type. You can associate only one permission with each resource type included in the resource share.
  late final Output<List<String>> permissionArns;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A map of tags to assign to the resource share. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  ResourceShare(
    String name, {
    ResourceShareArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ram/resourceShare:ResourceShare',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.allowExternalPrincipals =
        registerOutput<bool?>('allowExternalPrincipals');
    this.arn = registerOutput<String>('arn');
    this.name = registerOutput<String>('name');
    this.permissionArns = registerOutput<List<String>>('permissionArns');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
