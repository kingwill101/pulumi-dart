import 'package:pulumi/pulumi.dart' as pulumi;
import '../listener_rule_action/listener_rule_action_vpclattice.dart';
import '../listener_rule_match/listener_rule_match.dart';
import 'listener_rule_vpclattice_args.dart';

/// Resource for managing an AWS VPC Lattice Listener Rule.
///
/// ## Example Usage
///
///
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import VPC Lattice Listener Rule using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:vpclattice/listenerRule:ListenerRule example service123/listener456/rule789
/// ```
class ListenerRuleVpclattice extends pulumi.CustomResource {
  /// The action for the listener rule.
  /// See `action` Block for details.
  late final pulumi.Output<ListenerRuleActionVpclattice> action;

  /// The ARN for the listener rule.
  late final pulumi.Output<String> arn;

  /// The ID or Amazon Resource Name (ARN) of the listener.
  late final pulumi.Output<String> listenerIdentifier;

  /// The rule match.
  /// See `match` Block
  late final pulumi.Output<ListenerRuleMatch> match;

  /// The name of the rule. The name must be unique within the listener. The valid characters are a-z, 0-9, and hyphens (-). You can't use a hyphen as the first or last character, or immediately after another hyphen.
  late final pulumi.Output<String> name;

  /// The priority assigned to the rule. Each rule for a specific listener must have a unique priority. The lower the priority number the higher the priority.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<int> priority;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Unique identifier for the listener rule.
  late final pulumi.Output<String> ruleId;

  /// The ID or Amazon Resource Identifier (ARN) of the service.
  late final pulumi.Output<String> serviceIdentifier;

  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  ListenerRuleVpclattice(
    String name, {
    ListenerRuleVpclatticeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:vpclattice/listenerRule:ListenerRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.action = registerOutput<ListenerRuleActionVpclattice>('action');
    this.arn = registerOutput<String>('arn');
    this.listenerIdentifier = registerOutput<String>('listenerIdentifier');
    this.match = registerOutput<ListenerRuleMatch>('match');
    this.name = registerOutput<String>('name');
    this.priority = registerOutput<int>('priority');
    this.region = registerOutput<String>('region');
    this.ruleId = registerOutput<String>('ruleId');
    this.serviceIdentifier = registerOutput<String>('serviceIdentifier');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
