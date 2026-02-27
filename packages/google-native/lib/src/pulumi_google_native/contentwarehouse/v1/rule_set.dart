import 'package:pulumi/pulumi.dart' hide Config;
import 'google_cloud_contentwarehouse_v1_rule_response.dart';
import 'rule_set_args.dart';

/// Creates a ruleset.
class RuleSet extends CustomResource {
  /// Short description of the rule-set.
  late final Output<String> description;
  late final Output<String> location;

  /// The resource name of the rule set. Managed internally. Format: projects/{project_number}/locations/{location}/ruleSet/{rule_set_id}. The name is ignored when creating a rule set.
  late final Output<String> name;
  late final Output<String> project;

  /// List of rules given by the customer.
  late final Output<List<GoogleCloudContentwarehouseV1RuleResponse>> rules;

  /// Source of the rules i.e., customer name.
  late final Output<String> source;

  RuleSet(
    String name, {
    RuleSetArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:contentwarehouse/v1:RuleSet',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.description = registerOutput<String>('description');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.rules =
        registerOutput<List<GoogleCloudContentwarehouseV1RuleResponse>>(
            'rules');
    this.source = registerOutput<String>('source');
  }
}
