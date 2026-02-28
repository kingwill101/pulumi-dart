// ignore_for_file: unused_element, unnecessary_cast

import 'policy_definition_template_linked_principal.dart';
import 'policy_definition_template_linked_resource.dart';

class PolicyDefinitionTemplateLinked {
  /// The ID of the template.
  final String policyTemplateId;

  /// The principal of the template linked policy.
  final PolicyDefinitionTemplateLinkedPrincipal? principal;

  /// The resource of the template linked policy.
  final PolicyDefinitionTemplateLinkedResource? resource;

  /// Creates a new [PolicyDefinitionTemplateLinked].
  /// [policyTemplateId] The ID of the template.
  /// [principal] The principal of the template linked policy.
  /// [resource] The resource of the template linked policy.
  PolicyDefinitionTemplateLinked({
    required this.policyTemplateId,
    this.principal,
    this.resource,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['policyTemplateId'] = policyTemplateId;
    final principalValue = principal;
    if (principalValue != null) {
      map['principal'] = principalValue.toMap();
    }
    final resourceValue = resource;
    if (resourceValue != null) {
      map['resource'] = resourceValue.toMap();
    }
    return map;
  }

  factory PolicyDefinitionTemplateLinked.fromMap(Map<String, dynamic> map) {
    return PolicyDefinitionTemplateLinked(
      policyTemplateId: map['policyTemplateId'] as String,
      principal: map['principal'] == null
          ? null
          : PolicyDefinitionTemplateLinkedPrincipal.fromMap(
              (map['principal'] as Map).cast<String, dynamic>()),
      resource: map['resource'] == null
          ? null
          : PolicyDefinitionTemplateLinkedResource.fromMap(
              (map['resource'] as Map).cast<String, dynamic>()),
    );
  }
}
