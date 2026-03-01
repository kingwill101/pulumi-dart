import 'package:pulumi/pulumi.dart' as pulumi;
import 'listener_rule_action.dart';
import 'listener_rule_args.dart';
import 'listener_rule_condition.dart';
import 'listener_rule_transform.dart';

/// Provides a Load Balancer Listener Rule resource.
///
/// > **Note:** `aws.alb.ListenerRule` is known as `aws.lb.ListenerRule`. The functionality is identical.
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the load balancer listener rule.
///
///
/// Using `pulumi import`, import rules using their ARN. For example:
///
/// ```sh
/// $ pulumi import aws:lb/listenerRule:ListenerRule front_end arn:aws:elasticloadbalancing:us-west-2:187416307283:listener-rule/app/test/8e4497da625e2d8a/9ab28ade35828f96/67b3d2d36dd7c26b
/// ```
class ListenerRule extends pulumi.CustomResource {
  /// An Action block. Action blocks are documented below.
  late final pulumi.Output<List<ListenerRuleAction>> actions;

  /// The ARN of the rule (matches `id`)
  late final pulumi.Output<String> arn;

  /// A Condition block. Multiple condition blocks of different types can be set and all must be satisfied for the rule to match. Condition blocks are documented below.
  late final pulumi.Output<List<ListenerRuleCondition>> conditions;

  /// The ARN of the listener to which to attach the rule.
  late final pulumi.Output<String> listenerArn;

  /// The priority for the rule between `1` and `50000`. Leaving it unset will automatically set the rule with next available priority after currently existing highest rule. A listener can't have multiple rules with the same priority.
  late final pulumi.Output<int> priority;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Configuration block that defines the transform to apply to requests matching this rule. See Transform Blocks below for more details. Once specified, to remove the transform from the rule, remove the `transform` block from the configuration.
  late final pulumi.Output<List<ListenerRuleTransform>?> transforms;

  /// Creates a new [ListenerRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ListenerRule]. {@macro pulumi_lb_listener_rule_listener_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ListenerRule(
    String name, {
    ListenerRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:lb/listenerRule:ListenerRule',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.actions = registerOutput<List<ListenerRuleAction>>('actions');
    this.arn = registerOutput<String>('arn');
    this.conditions = registerOutput<List<ListenerRuleCondition>>('conditions');
    this.listenerArn = registerOutput<String>('listenerArn');
    this.priority = registerOutput<int>('priority');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.transforms = registerOutput<List<ListenerRuleTransform>?>(
      'transforms',
    );
  }
}
