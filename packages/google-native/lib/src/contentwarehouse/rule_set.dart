import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_contentwarehouse_v1_rule_response.dart';
import 'rule_set_args.dart';

/// Creates a ruleset.
class RuleSet extends pulumi.CustomResource {
  /// Short description of the rule-set.
  late final pulumi.Output<String> description;
  late final pulumi.Output<String> location;

  /// The resource name of the rule set. Managed internally. Format: projects/{project_number}/locations/{location}/ruleSet/{rule_set_id}. The name is ignored when creating a rule set.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// List of rules given by the customer.
  late final pulumi.Output<List<GoogleCloudContentwarehouseV1RuleResponse>>
  rules;

  /// Source of the rules i.e., customer name.
  late final pulumi.Output<String> source;

  /// Creates a new [RuleSet].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RuleSet]. {@macro pulumi_contentwarehouse_v1_rule_set_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RuleSet(
    String name, {
    RuleSetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:contentwarehouse/v1:RuleSet',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.description = registerOutput<String>('description');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.rules =
        registerOutput<List<GoogleCloudContentwarehouseV1RuleResponse>>(
          'rules',
        );
    this.source = registerOutput<String>('source');
  }
}
