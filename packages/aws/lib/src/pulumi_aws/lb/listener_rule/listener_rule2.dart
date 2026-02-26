import 'package:pulumi/pulumi.dart';
import '../listener_rule_action/listener_rule_action2.dart';
import '../listener_rule_condition/listener_rule_condition2.dart';
import '../listener_rule_transform/listener_rule_transform2.dart';
import 'listener_rule_args2.dart';

/// Provides a Load Balancer Listener Rule resource.
///
/// > **Note:** <span pulumi-lang-nodejs="`aws.alb.ListenerRule`" pulumi-lang-dotnet="`aws.alb.ListenerRule`" pulumi-lang-go="`alb.ListenerRule`" pulumi-lang-python="`alb.ListenerRule`" pulumi-lang-yaml="`aws.alb.ListenerRule`" pulumi-lang-java="`aws.alb.ListenerRule`">`aws.alb.ListenerRule`</span> is known as <span pulumi-lang-nodejs="`aws.lb.ListenerRule`" pulumi-lang-dotnet="`aws.lb.ListenerRule`" pulumi-lang-go="`lb.ListenerRule`" pulumi-lang-python="`lb.ListenerRule`" pulumi-lang-yaml="`aws.lb.ListenerRule`" pulumi-lang-java="`aws.lb.ListenerRule`">`aws.lb.ListenerRule`</span>. The functionality is identical.
///
/// #### Required
///
/// - <span pulumi-lang-nodejs="`arn`" pulumi-lang-dotnet="`Arn`" pulumi-lang-go="`arn`" pulumi-lang-python="`arn`" pulumi-lang-yaml="`arn`" pulumi-lang-java="`arn`">`arn`</span> (String) Amazon Resource Name (ARN) of the load balancer listener rule.
///
///
/// Using `pulumi import`, import rules using their ARN. For example:
///
/// ```sh
/// $ pulumi import aws:lb/listenerRule:ListenerRule front_end arn:aws:elasticloadbalancing:us-west-2:187416307283:listener-rule/app/test/8e4497da625e2d8a/9ab28ade35828f96/67b3d2d36dd7c26b
/// ```
class ListenerRule2 extends CustomResource {
  /// An Action block. Action blocks are documented below.
  late final Output<List<ListenerRuleAction2>> actions;

  /// The ARN of the rule (matches <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>)
  late final Output<String> arn;

  /// A Condition block. Multiple condition blocks of different types can be set and all must be satisfied for the rule to match. Condition blocks are documented below.
  late final Output<List<ListenerRuleCondition2>> conditions;

  /// The ARN of the listener to which to attach the rule.
  late final Output<String> listenerArn;

  /// The priority for the rule between <span pulumi-lang-nodejs="`1`" pulumi-lang-dotnet="`1`" pulumi-lang-go="`1`" pulumi-lang-python="`1`" pulumi-lang-yaml="`1`" pulumi-lang-java="`1`">`1`</span> and <span pulumi-lang-nodejs="`50000`" pulumi-lang-dotnet="`50000`" pulumi-lang-go="`50000`" pulumi-lang-python="`50000`" pulumi-lang-yaml="`50000`" pulumi-lang-java="`50000`">`50000`</span>. Leaving it unset will automatically set the rule with next available priority after currently existing highest rule. A listener can't have multiple rules with the same priority.
  late final Output<int> priority;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A map of tags to assign to the resource. .If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Configuration block that defines the transform to apply to requests matching this rule. See Transform Blocks below for more details. Once specified, to remove the transform from the rule, remove the <span pulumi-lang-nodejs="`transform`" pulumi-lang-dotnet="`Transform`" pulumi-lang-go="`transform`" pulumi-lang-python="`transform`" pulumi-lang-yaml="`transform`" pulumi-lang-java="`transform`">`transform`</span> block from the configuration.
  late final Output<List<ListenerRuleTransform2>?> transforms;

  ListenerRule2(
    String name, {
    ListenerRuleArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:lb/listenerRule:ListenerRule',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.actions = Output.createUnknown<List<ListenerRuleAction2>>();
    this.arn = Output.createUnknown<String>();
    this.conditions = Output.createUnknown<List<ListenerRuleCondition2>>();
    this.listenerArn = Output.createUnknown<String>();
    this.priority = Output.createUnknown<int>();
    this.region = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.transforms = Output.createUnknown<List<ListenerRuleTransform2>?>();
  }
}
