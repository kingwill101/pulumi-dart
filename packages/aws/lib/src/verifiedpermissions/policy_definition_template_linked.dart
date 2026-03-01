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
    return <String, dynamic>{
      'policyTemplateId': policyTemplateId,
      'principal': ?principal == null ? null : principal!.toMap(),
      'resource': ?resource == null ? null : resource!.toMap(),
    };
  }

  factory PolicyDefinitionTemplateLinked.fromMap(Map<String, dynamic> map) {
    return PolicyDefinitionTemplateLinked(
      policyTemplateId: map['policyTemplateId'] as String,
      principal: map['principal'] == null
          ? null
          : PolicyDefinitionTemplateLinkedPrincipal.fromMap(
              (map['principal'] as Map).cast<String, dynamic>(),
            ),
      resource: map['resource'] == null
          ? null
          : PolicyDefinitionTemplateLinkedResource.fromMap(
              (map['resource'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
