// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'automation_rule.dart';
import 'automation_selector.dart';

/// {@template pulumi_clouddeploy_automation_automation_args_doc}
/// The set of arguments for Automation.
/// {@endtemplate}
/// {@macro pulumi_clouddeploy_automation_automation_args_doc}
class AutomationArgs {
  /// Optional. User annotations. These attributes can only be set and used by the user, and not by Cloud Deploy. Annotations must meet the following constraints: * Annotations are key/value pairs. * Valid annotation keys have two segments: an optional prefix and name, separated by a slash (`/`). * The name segment is required and must be 63 characters or less, beginning and ending with an alphanumeric character (`[a-z0-9A-Z]`) with dashes (`-`), underscores (`_`), dots (`.`), and alphanumerics between. * The prefix is optional. If specified, the prefix must be a DNS subdomain: a series of DNS labels separated by dots(`.`), not longer than 253 characters in total, followed by a slash (`/`). See https://kubernetes.io/docs/concepts/overview/working-with-objects/annotations/#syntax-and-character-set for more details.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>>? annotations;
  /// The delivery_pipeline for the resource
  final pulumi.Input<String> deliveryPipeline;
  /// Optional. Description of the `Automation`. Max length is 255 characters.
  final pulumi.Input<String>? description;
  /// Optional. Labels are attributes that can be set and used by both the user and by Cloud Deploy. Labels must meet the following constraints: * Keys and values can contain only lowercase letters, numeric characters, underscores, and dashes. * All characters must use UTF-8 encoding, and international characters are allowed. * Keys must start with a lowercase letter or international character. * Each resource is limited to a maximum of 64 labels. Both keys and values are additionally constrained to be <= 63 characters.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The location for the resource
  final pulumi.Input<String> location;
  /// Name of the `Automation`.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Required. List of Automation rules associated with the Automation resource. Must have at least one rule and limited to 250 rules per Delivery Pipeline. Note: the order of the rules here is not the same as the order of execution.
  /// Structure is documented below.
  final pulumi.Input<List<AutomationRule>> rules;
  /// Required. Selected resources to which the automation will be applied.
  /// Structure is documented below.
  final pulumi.Input<AutomationSelector> selector;
  /// Required. Email address of the user-managed IAM service account that creates Cloud Deploy release and rollout resources.
  final pulumi.Input<String> serviceAccount;
  /// Optional. When Suspended, automation is deactivated from execution.
  final pulumi.Input<bool>? suspended;

  /// Creates a new [AutomationArgs].
  /// [annotations] Optional. User annotations. These attributes can only be set and used by the user, and not by Cloud Deploy. Annotations must meet the following constraints: * Annotations are key/value pairs. * Valid annotation keys have two segments: an optional prefix and name, separated by a slash (`/`). * The name segment is required and must be 63 characters or less, beginning and ending with an alphanumeric character (`[a-z0-9A-Z]`) with dashes (`-`), underscores (`_`), dots (`.`), and alphanumerics between. * The prefix is optional. If specified, the prefix must be a DNS subdomain: a series of DNS labels separated by dots(`.`), not longer than 253 characters in total, followed by a slash (`/`). See https://kubernetes.io/docs/concepts/overview/working-with-objects/annotations/#syntax-and-character-set for more details.
  /// [deliveryPipeline] The delivery_pipeline for the resource
  /// [description] Optional. Description of the `Automation`. Max length is 255 characters.
  /// [labels] Optional. Labels are attributes that can be set and used by both the user and by Cloud Deploy. Labels must meet the following constraints: * Keys and values can contain only lowercase letters, numeric characters, underscores, and dashes. * All characters must use UTF-8 encoding, and international characters are allowed. * Keys must start with a lowercase letter or international character. * Each resource is limited to a maximum of 64 labels. Both keys and values are additionally constrained to be <= 63 characters.
  /// [location] The location for the resource
  /// [name] Name of the `Automation`.
  /// [project] The ID of the project in which the resource belongs.
  /// [rules] Required. List of Automation rules associated with the Automation resource. Must have at least one rule and limited to 250 rules per Delivery Pipeline. Note: the order of the rules here is not the same as the order of execution.
  /// [selector] Required. Selected resources to which the automation will be applied.
  /// [serviceAccount] Required. Email address of the user-managed IAM service account that creates Cloud Deploy release and rollout resources.
  /// [suspended] Optional. When Suspended, automation is deactivated from execution.
  AutomationArgs({
    Map<String, String>? annotations,
    required String deliveryPipeline,
    String? description,
    Map<String, String>? labels,
    required String location,
    String? name,
    String? project,
    required List<AutomationRule> rules,
    required AutomationSelector selector,
    required String serviceAccount,
    bool? suspended,
  }) :
      annotations = pulumi.Input.asOptionalInput<Map<String, String>>(annotations),
      deliveryPipeline = pulumi.Input.asInput<String>(deliveryPipeline),
      description = pulumi.Input.asOptionalInput<String>(description),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      rules = pulumi.Input.asInput<List<AutomationRule>>(rules),
      selector = pulumi.Input.asInput<AutomationSelector>(selector),
      serviceAccount = pulumi.Input.asInput<String>(serviceAccount),
      suspended = pulumi.Input.asOptionalInput<bool>(suspended);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'deliveryPipeline': deliveryPipeline,
      'description': ?description,
      'labels': ?labels,
      'location': location,
      'name': ?name,
      'project': ?project,
      'rules': pulumi.Input.mapInputValue<List<AutomationRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<AutomationRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'selector': pulumi.Input.mapInputValue<AutomationSelector, Map<String, dynamic>>(selector, (value) => value.toMap()),
      'serviceAccount': serviceAccount,
      'suspended': ?suspended,
    };
  }

  factory AutomationArgs.fromMap(Map<String, dynamic> map) {
    return AutomationArgs(
      annotations: map['annotations'] == null ? null : (map['annotations'] as Map).cast<String, String>(),
      deliveryPipeline: map['deliveryPipeline'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      labels: map['labels'] == null ? null : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      rules: pulumi.Input.decodeList<AutomationRule>(map['rules'], (value) => AutomationRule.fromMap((value as Map).cast<String, dynamic>())),
      selector: AutomationSelector.fromMap((map['selector'] as Map).cast<String, dynamic>()),
      serviceAccount: map['serviceAccount'] as String,
      suspended: map['suspended'] == null ? null : map['suspended'] as bool,
    );
  }
}

