import 'package:pulumi/pulumi.dart' as pulumi;
import 'listener_rule_action.dart';
import 'listener_rule_args.dart';
import 'listener_rule_condition.dart';
import 'listener_rule_state.dart';
import 'listener_rule_transform.dart';

/// Provides a Load Balancer Listener Rule resource.
///
/// &gt; **Note:** `aws.alb.ListenerRule` is known as `aws.lb.ListenerRule`. The functionality is identical.
///
/// #### Required
///
/// - `arn` (String) ARN of the load balancer listener rule.
///
///
/// Using `pulumi import`, import rules using their ARN. For example:
///
/// ```sh
/// $ pulumi import aws:alb/listenerRule:ListenerRule front_end arn:aws:elasticloadbalancing:us-west-2:187416307283:listener-rule/app/test/8e4497da625e2d8a/9ab28ade35828f96/67b3d2d36dd7c26b
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
  /// A map of tags to assign to the resource. .If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// Configuration block that defines the transform to apply to requests matching this rule. See Transform Blocks below for more details. Once specified, to remove the transform from the rule, remove the `transform` block from the configuration.
  late final pulumi.Output<List<ListenerRuleTransform>?> transforms;

  /// Creates a new [ListenerRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ListenerRule]. {@macro pulumi_alb_listener_rule_listener_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ListenerRule(
    String name, {
    ListenerRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:alb/listenerRule:ListenerRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    actions = registerOutput<List<ListenerRuleAction>>('actions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ListenerRuleAction>(guardedValue, (value) => ListenerRuleAction.fromMap((value as Map).cast<String, dynamic>())); });
    arn = registerOutput<String>('arn');
    conditions = registerOutput<List<ListenerRuleCondition>>('conditions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ListenerRuleCondition>(guardedValue, (value) => ListenerRuleCondition.fromMap((value as Map).cast<String, dynamic>())); });
    listenerArn = registerOutput<String>('listenerArn');
    priority = registerOutput<int>('priority');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    transforms = registerOutput<List<ListenerRuleTransform>?>('transforms', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ListenerRuleTransform>(guardedValue, (value) => ListenerRuleTransform.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Gets an existing [ListenerRule] resource's state with the given [name] and [id].
  static ListenerRule get(
    String name,
    pulumi.Input<String> id, {
    ListenerRuleState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ListenerRule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ListenerRule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:alb/listenerRule:ListenerRule',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    actions = registerOutput<List<ListenerRuleAction>>('actions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ListenerRuleAction>(guardedValue, (value) => ListenerRuleAction.fromMap((value as Map).cast<String, dynamic>())); });
    arn = registerOutput<String>('arn');
    conditions = registerOutput<List<ListenerRuleCondition>>('conditions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ListenerRuleCondition>(guardedValue, (value) => ListenerRuleCondition.fromMap((value as Map).cast<String, dynamic>())); });
    listenerArn = registerOutput<String>('listenerArn');
    priority = registerOutput<int>('priority');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    transforms = registerOutput<List<ListenerRuleTransform>?>('transforms', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ListenerRuleTransform>(guardedValue, (value) => ListenerRuleTransform.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Creates a typed reference to an existing [ListenerRule] resource.
  ListenerRule.reference(String urn)
    : super(
        'aws:alb/listenerRule:ListenerRule',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    actions = registerOutput<List<ListenerRuleAction>>('actions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ListenerRuleAction>(guardedValue, (value) => ListenerRuleAction.fromMap((value as Map).cast<String, dynamic>())); });
    arn = registerOutput<String>('arn');
    conditions = registerOutput<List<ListenerRuleCondition>>('conditions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ListenerRuleCondition>(guardedValue, (value) => ListenerRuleCondition.fromMap((value as Map).cast<String, dynamic>())); });
    listenerArn = registerOutput<String>('listenerArn');
    priority = registerOutput<int>('priority');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    transforms = registerOutput<List<ListenerRuleTransform>?>('transforms', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ListenerRuleTransform>(guardedValue, (value) => ListenerRuleTransform.fromMap((value as Map).cast<String, dynamic>())); });
  }
}
