import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_group_namespace_args.dart';

/// Manages an Amazon Managed Service for Prometheus (AMP) Rule Group Namespace
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import the prometheus rule group namespace using the arn. For example:
///
/// ```sh
/// $ pulumi import aws:amp/ruleGroupNamespace:RuleGroupNamespace demo arn:aws:aps:us-west-2:123456789012:rulegroupsnamespace/IDstring/namespace_name
/// ```
class RuleGroupNamespace extends pulumi.CustomResource {
  /// The ARN of the rule group namespace.
  late final pulumi.Output<String> arn;

  /// the rule group namespace data that you want to be applied. See more [in AWS Docs](https://docs.aws.amazon.com/prometheus/latest/userguide/AMP-Ruler.html).
  late final pulumi.Output<String> data;

  /// The name of the rule group namespace.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// ID of the prometheus workspace the rule group namespace should be linked to.
  late final pulumi.Output<String> workspaceId;

  RuleGroupNamespace(
    String name, {
    RuleGroupNamespaceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:amp/ruleGroupNamespace:RuleGroupNamespace',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.data = registerOutput<String>('data');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.workspaceId = registerOutput<String>('workspaceId');
  }
}
