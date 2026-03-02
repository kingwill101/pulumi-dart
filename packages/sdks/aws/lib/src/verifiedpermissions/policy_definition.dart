// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_definition_static.dart';
import 'policy_definition_template_linked.dart';

class PolicyDefinition {
  /// The static policy statement. See Static below.
  final pulumi.Input<PolicyDefinitionStatic>? static;
  /// The template linked policy. See Template Linked below.
  final pulumi.Input<PolicyDefinitionTemplateLinked>? templateLinked;

  /// Creates a new [PolicyDefinition].
  /// [static] The static policy statement. See Static below.
  /// [templateLinked] The template linked policy. See Template Linked below.
  PolicyDefinition({
    this.static,
    this.templateLinked,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'static': ?pulumi.Input.mapOptionalInputValue<PolicyDefinitionStatic, Map<String, dynamic>>(static, (value) => value.toMap()),
      'templateLinked': ?pulumi.Input.mapOptionalInputValue<PolicyDefinitionTemplateLinked, Map<String, dynamic>>(templateLinked, (value) => value.toMap()),
    };
  }

  factory PolicyDefinition.fromMap(Map<String, dynamic> map) {
    return PolicyDefinition(
      static: map['static'] == null ? null : (PolicyDefinitionStatic.fromMap((map['static'] as Map).cast<String, dynamic>())).input(),
      templateLinked: map['templateLinked'] == null ? null : (PolicyDefinitionTemplateLinked.fromMap((map['templateLinked'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

