import 'package:pulumi/pulumi.dart' as pulumi;
import 'protection_group_args.dart';

/// Creates a grouping of protected resources so they can be handled as a collective.
/// This resource grouping improves the accuracy of detection and reduces false positives. For more information see
/// [Managing AWS Shield Advanced protection groups](https://docs.aws.amazon.com/waf/latest/developerguide/manage-protection-group.html)
///
/// ## Example Usage
///
/// ### Create protection group for all resources
///
///
///
/// ### Create protection group for arbitrary number of resources
///
///
///
/// ### Create protection group for a type of resource
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Shield protection group resources using their protection group id. For example:
///
/// ```sh
/// $ pulumi import aws:shield/protectionGroup:ProtectionGroup example example
/// ```
class ProtectionGroup extends pulumi.CustomResource {
  /// Defines how AWS Shield combines resource data for the group in order to detect, mitigate, and report events.
  late final pulumi.Output<String> aggregation;

  /// The Amazon Resource Names (ARNs) of the resources to include in the protection group. You must set this when you set `pattern` to ARBITRARY and you must not set it for any other `pattern` setting.
  late final pulumi.Output<List<String>?> members;

  /// The criteria to use to choose the protected resources for inclusion in the group.
  late final pulumi.Output<String> pattern;

  /// The ARN (Amazon Resource Name) of the protection group.
  late final pulumi.Output<String> protectionGroupArn;

  /// The name of the protection group.
  late final pulumi.Output<String> protectionGroupId;

  /// The resource type to include in the protection group. You must set this when you set `pattern` to BY_RESOURCE_TYPE and you must not set it for any other `pattern` setting.
  late final pulumi.Output<String?> resourceType;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  ProtectionGroup(
    String name, {
    ProtectionGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:shield/protectionGroup:ProtectionGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.aggregation = registerOutput<String>('aggregation');
    this.members = registerOutput<List<String>?>('members');
    this.pattern = registerOutput<String>('pattern');
    this.protectionGroupArn = registerOutput<String>('protectionGroupArn');
    this.protectionGroupId = registerOutput<String>('protectionGroupId');
    this.resourceType = registerOutput<String?>('resourceType');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
