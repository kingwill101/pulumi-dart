import 'package:pulumi/pulumi.dart';
import '../listener_rule_action/listener_rule_action3.dart';
import '../listener_rule_match/listener_rule_match.dart';
import 'listener_rule_args3.dart';

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
class ListenerRule3 extends CustomResource {
  /// The action for the listener rule.
  /// See `action` Block for details.
  late final Output<ListenerRuleAction3> action;

  /// The ARN for the listener rule.
  late final Output<String> arn;

  /// The ID or Amazon Resource Name (ARN) of the listener.
  late final Output<String> listenerIdentifier;

  /// The rule match.
  /// See `match` Block
  late final Output<ListenerRuleMatch> match;

  /// The name of the rule. The name must be unique within the listener. The valid characters are a-z, 0-9, and hyphens (-). You can't use a hyphen as the first or last character, or immediately after another hyphen.
  late final Output<String> name;

  /// The priority assigned to the rule. Each rule for a specific listener must have a unique priority. The lower the priority number the higher the priority.
  ///
  /// The following arguments are optional:
  late final Output<int> priority;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Unique identifier for the listener rule.
  late final Output<String> ruleId;

  /// The ID or Amazon Resource Identifier (ARN) of the service.
  late final Output<String> serviceIdentifier;

  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  ListenerRule3(
    String name, {
    ListenerRuleArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:vpclattice/listenerRule:ListenerRule',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.action = registerOutput<ListenerRuleAction3>('action');
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
