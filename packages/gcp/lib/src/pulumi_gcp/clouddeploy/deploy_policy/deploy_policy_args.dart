// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../deploy_policy_rule/deploy_policy_rule.dart';
import '../deploy_policy_selector/deploy_policy_selector.dart';

/// The set of arguments for DeployPolicy.
class DeployPolicyArgs {
  /// User annotations. These attributes can only be set and used by the user, and not by Cloud Deploy. Annotations must meet the following constraints: * Annotations are key/value pairs. * Valid annotation keys have two segments: an optional prefix and name, separated by a slash (`/`). * The name segment is required and must be 63 characters or less, beginning and ending with an alphanumeric character (`[a-z0-9A-Z]`) with dashes (`-`), underscores (`_`), dots (`.`), and alphanumerics between. * The prefix is optional. If specified, the prefix must be a DNS subdomain: a series of DNS labels separated by dots(`.`), not longer than 253 characters in total, followed by a slash (`/`). See https://kubernetes.io/docs/concepts/overview/working-with-objects/annotations/#syntax-and-character-set for more details.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveAnnotations`" pulumi-lang-dotnet="`EffectiveAnnotations`" pulumi-lang-go="`effectiveAnnotations`" pulumi-lang-python="`effective_annotations`" pulumi-lang-yaml="`effectiveAnnotations`" pulumi-lang-java="`effectiveAnnotations`">`effective_annotations`</span> for all of the annotations present on the resource.
  final Input<Map<String, String>>? annotations;

  /// Description of the `DeployPolicy`. Max length is 255 characters.
  final Input<String>? description;

  /// Labels are attributes that can be set and used by both the user and by Cloud Deploy. Labels must meet the following constraints: * Keys and values can contain only lowercase letters, numeric characters, underscores, and dashes. * All characters must use UTF-8 encoding, and international characters are allowed. * Keys must start with a lowercase letter or international character. * Each resource is limited to a maximum of 64 labels. Both keys and values are additionally constrained to be <= 63 characters.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// The location for the resource
  final Input<String> location;

  /// Name of the `DeployPolicy`.
  final Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// Rules to apply. At least one rule must be present.
  /// Structure is documented below.
  final Input<List<DeployPolicyRule>> rules;

  /// Selected resources to which the policy will be applied. At least one selector is required. If one selector matches the resource the policy applies. For example, if there are two selectors and the action being attempted matches one of them, the policy will apply to that action.
  /// Structure is documented below.
  final Input<List<DeployPolicySelector>> selectors;

  /// When suspended, the policy will not prevent actions from occurring, even if the action violates the policy.
  final Input<bool>? suspended;

  DeployPolicyArgs({
    this.annotations,
    this.description,
    this.labels,
    required this.location,
    this.name,
    this.project,
    required this.rules,
    required this.selectors,
    this.suspended,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final annotationsValue = annotations;
    if (annotationsValue != null) {
      map['annotations'] = annotationsValue;
    }
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
    map['rules'] =
        Input.mapInputValue<List<DeployPolicyRule>, List<Map<String, dynamic>>>(
            rules,
            (value) => Input.encodeList<DeployPolicyRule, Map<String, dynamic>>(
                value, (value) => value.toMap()));
    map['selectors'] = Input.mapInputValue<List<DeployPolicySelector>,
            List<Map<String, dynamic>>>(
        selectors,
        (value) => Input.encodeList<DeployPolicySelector, Map<String, dynamic>>(
            value, (value) => value.toMap()));
    final suspendedValue = suspended;
    if (suspendedValue != null) {
      map['suspended'] = suspendedValue;
    }
    return map;
  }

  factory DeployPolicyArgs.fromMap(Map<String, dynamic> map) {
    return DeployPolicyArgs(
      annotations:
          Input.asOptionalInput<Map<String, String>>(map['annotations']),
      description: Input.asOptionalInput<String>(map['description']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      rules: Input.asInput<List<DeployPolicyRule>>(map['rules']),
      selectors: Input.asInput<List<DeployPolicySelector>>(map['selectors']),
      suspended: Input.asOptionalInput<bool>(map['suspended']),
    );
  }
}
