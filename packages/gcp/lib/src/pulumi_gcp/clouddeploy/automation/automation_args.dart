// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../automation_rule/automation_rule.dart';
import '../automation_selector/automation_selector.dart';

/// The set of arguments for Automation.
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

  AutomationArgs({
    this.annotations,
    required this.deliveryPipeline,
    this.description,
    this.labels,
    required this.location,
    this.name,
    this.project,
    required this.rules,
    required this.selector,
    required this.serviceAccount,
    this.suspended,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final annotationsValue = annotations;
    if (annotationsValue != null) {
      map['annotations'] = annotationsValue;
    }
    map['deliveryPipeline'] = deliveryPipeline;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    map['location'] = location;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['rules'] = pulumi.Input.mapInputValue<List<AutomationRule>,
            List<Map<String, dynamic>>>(
        rules,
        (value) =>
            pulumi.Input.encodeList<AutomationRule, Map<String, dynamic>>(
                value, (value) => value.toMap()));
    map['selector'] =
        pulumi.Input.mapInputValue<AutomationSelector, Map<String, dynamic>>(
            selector, (value) => value.toMap());
    map['serviceAccount'] = serviceAccount;
    final suspendedValue = suspended;
    if (suspendedValue != null) {
      map['suspended'] = suspendedValue;
    }
    return map;
  }

  factory AutomationArgs.fromMap(Map<String, dynamic> map) {
    return AutomationArgs(
      annotations:
          pulumi.Input.asOptionalInput<Map<String, String>>(map['annotations']),
      deliveryPipeline: pulumi.Input.asInput<String>(map['deliveryPipeline']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      rules: pulumi.Input.asInput<List<AutomationRule>>(map['rules']),
      selector: pulumi.Input.asInput<AutomationSelector>(map['selector']),
      serviceAccount: pulumi.Input.asInput<String>(map['serviceAccount']),
      suspended: pulumi.Input.asOptionalInput<bool>(map['suspended']),
    );
  }
}
