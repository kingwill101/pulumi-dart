// ignore_for_file: unused_element, unnecessary_cast

import 'policy_definition_static.dart';
import 'policy_definition_template_linked.dart';

class PolicyDefinition {
  /// The static policy statement. See Static below.
  final PolicyDefinitionStatic? static;

  /// The template linked policy. See Template Linked below.
  final PolicyDefinitionTemplateLinked? templateLinked;

  /// Creates a new [PolicyDefinition].
  /// [static] The static policy statement. See Static below.
  /// [templateLinked] The template linked policy. See Template Linked below.
  PolicyDefinition({
    this.static,
    this.templateLinked,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final staticValue = static;
    if (staticValue != null) {
      map['static'] = staticValue.toMap();
    }
    final templateLinkedValue = templateLinked;
    if (templateLinkedValue != null) {
      map['templateLinked'] = templateLinkedValue.toMap();
    }
    return map;
  }

  factory PolicyDefinition.fromMap(Map<String, dynamic> map) {
    return PolicyDefinition(
      static: map['static'] == null
          ? null
          : PolicyDefinitionStatic.fromMap(
              (map['static'] as Map).cast<String, dynamic>()),
      templateLinked: map['templateLinked'] == null
          ? null
          : PolicyDefinitionTemplateLinked.fromMap(
              (map['templateLinked'] as Map).cast<String, dynamic>()),
    );
  }
}
