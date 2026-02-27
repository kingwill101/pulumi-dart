import 'package:pulumi/pulumi.dart' as pulumi;
import '../routing_rule_action/routing_rule_action.dart';
import '../routing_rule_condition/routing_rule_condition.dart';
import 'routing_rule_args.dart';

/// Resource for managing an AWS API Gateway V2 Routing Rule.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import API Gateway V2 Routing Rule using the `routing_rule_arn`. For example:
///
/// ```sh
/// $ pulumi import aws:apigatewayv2/routingRule:RoutingRule example arn:aws:apigateway:us-east-1:123456789012:/domainnames/example.com/routingrules/rule1
/// ```
class RoutingRule extends pulumi.CustomResource {
  /// Configuration of resulting action based on matching routing rules condition. See below.
  late final pulumi.Output<List<RoutingRuleAction>> actions;

  /// Conditions configuration. See below.
  late final pulumi.Output<List<RoutingRuleCondition>> conditions;

  /// Domain name. Must be between 1 and 512 characters in length.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> domainName;

  /// The order of rule evaluation. Priority is evaluated from the lowest value to the highest value. Rules can't have the same priority. Value must be between 1 and 1,000,000.
  late final pulumi.Output<int> priority;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// ARN of the Routing Rule.
  late final pulumi.Output<String> routingRuleArn;

  /// ID of the Routing Rule.
  late final pulumi.Output<String> routingRuleId;

  RoutingRule(
    String name, {
    RoutingRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:apigatewayv2/routingRule:RoutingRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.actions = registerOutput<List<RoutingRuleAction>>('actions');
    this.conditions = registerOutput<List<RoutingRuleCondition>>('conditions');
    this.domainName = registerOutput<String>('domainName');
    this.priority = registerOutput<int>('priority');
    this.region = registerOutput<String>('region');
    this.routingRuleArn = registerOutput<String>('routingRuleArn');
    this.routingRuleId = registerOutput<String>('routingRuleId');
  }
}
