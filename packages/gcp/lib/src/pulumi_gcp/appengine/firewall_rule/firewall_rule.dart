import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_rule_args.dart';

/// A single firewall rule that is evaluated against incoming traffic
/// and provides an action to take on matched requests.
///
///
/// To get more information about FirewallRule, see:
///
/// * [API documentation](https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1/apps.firewall.ingressRules)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/appengine/docs/standard/python/creating-firewalls#creating_firewall_rules)
///
/// ## Example Usage
///
/// ### App Engine Firewall Rule Basic
///
///
///
///
/// ## Import
///
/// FirewallRule can be imported using any of these accepted formats:
///
/// * `apps/{{project}}/firewall/ingressRules/{{priority}}`
///
/// * `{{project}}/{{priority}}`
///
/// * `{{priority}}`
///
/// When using the `pulumi import` command, FirewallRule can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:appengine/firewallRule:FirewallRule default apps/{{project}}/firewall/ingressRules/{{priority}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:appengine/firewallRule:FirewallRule default {{project}}/{{priority}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:appengine/firewallRule:FirewallRule default {{priority}}
/// ```
class FirewallRule extends pulumi.CustomResource {
  /// The action to take if this rule matches.
  /// Possible values are: `UNSPECIFIED_ACTION`, `ALLOW`, `DENY`.
  late final pulumi.Output<String> action;

  /// An optional string description of this rule.
  late final pulumi.Output<String?> description;

  /// A positive integer that defines the order of rule evaluation.
  /// Rules with the lowest priority are evaluated first.
  /// A default rule at priority Int32.MaxValue matches all IPv4 and
  /// IPv6 traffic when no previous rule matches. Only the action of
  /// this rule can be modified by the user.
  late final pulumi.Output<int?> priority;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// IP address or range, defined using CIDR notation, of requests that this rule applies to.
  late final pulumi.Output<String> sourceRange;

  FirewallRule(
    String name, {
    FirewallRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:appengine/firewallRule:FirewallRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.action = registerOutput<String>('action');
    this.description = registerOutput<String?>('description');
    this.priority = registerOutput<int?>('priority');
    this.project = registerOutput<String>('project');
    this.sourceRange = registerOutput<String>('sourceRange');
  }
}
