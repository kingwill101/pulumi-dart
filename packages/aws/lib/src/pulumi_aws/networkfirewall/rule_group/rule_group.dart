import 'package:pulumi/pulumi.dart' as pulumi;
import '../rule_group_encryption_configuration/rule_group_encryption_configuration.dart';
import '../rule_group_rule_group/rule_group_rule_group.dart';
import 'rule_group_args.dart';

/// Provides an AWS Network Firewall Rule Group Resource
///
/// ## Example Usage
///
/// ### Stateful Inspection for denying access to a domain
///
///
///
/// ### Stateful Inspection for permitting packets from a source IP address
///
///
///
/// ### Stateful Inspection for blocking packets from going to an intended destination
///
///
///
/// ### Stateful Inspection from rules specifications defined in Suricata flat format
///
///
///
/// ### Stateful Inspection from rule group specifications using rule variables and Suricata format rules
///
///
///
/// ### Stateless Inspection with a Custom Action
///
///
///
/// ### IP Set References to the Rule Group
///
///
///
/// ### Example with S3 as source for the suricata rules
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Network Firewall Rule Groups using their `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:networkfirewall/ruleGroup:RuleGroup example arn:aws:network-firewall:us-west-1:123456789012:stateful-rulegroup/example
/// ```
class RuleGroup extends pulumi.CustomResource {
  /// The Amazon Resource Name (ARN) that identifies the rule group.
  late final pulumi.Output<String> arn;

  /// The maximum number of operating resources that this rule group can use. For a stateless rule group, the capacity required is the sum of the capacity requirements of the individual rules. For a stateful rule group, the minimum capacity required is the number of individual rules.
  late final pulumi.Output<int> capacity;

  /// A friendly description of the rule group.
  late final pulumi.Output<String?> description;

  /// KMS encryption configuration settings. See Encryption Configuration below for details.
  late final pulumi.Output<RuleGroupEncryptionConfiguration?>
      encryptionConfiguration;

  /// A friendly name of the rule group.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// A configuration block that defines the rule group rules. Required unless `rules` is specified. See Rule Group below for details.
  late final pulumi.Output<RuleGroupRuleGroup> ruleGroup;

  /// The stateful rule group rules specifications in Suricata file format, with one rule per line. Use this to import your existing Suricata compatible rule groups. Required unless `rule_group` is specified.
  late final pulumi.Output<String?> rules;

  /// A map of key:value pairs to associate with the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Whether the rule group is stateless (containing stateless rules) or stateful (containing stateful rules). Valid values include: `STATEFUL` or `STATELESS`.
  late final pulumi.Output<String> type;

  /// A string token used when updating the rule group.
  late final pulumi.Output<String> updateToken;

  RuleGroup(
    String name, {
    RuleGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:networkfirewall/ruleGroup:RuleGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.capacity = registerOutput<int>('capacity');
    this.description = registerOutput<String?>('description');
    this.encryptionConfiguration =
        registerOutput<RuleGroupEncryptionConfiguration?>(
            'encryptionConfiguration');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.ruleGroup = registerOutput<RuleGroupRuleGroup>('ruleGroup');
    this.rules = registerOutput<String?>('rules');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.type = registerOutput<String>('type');
    this.updateToken = registerOutput<String>('updateToken');
  }
}
