// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_definition_template_linked_principal.dart';
import 'policy_definition_template_linked_resource.dart';

class PolicyDefinitionTemplateLinked {
  /// ID of the template.
  final pulumi.Input<String> policyTemplateId;
  /// Principal of the template linked policy. See Principal below.
  final pulumi.Input<PolicyDefinitionTemplateLinkedPrincipal?>? principal;
  /// Resource of the template linked policy. See Resource below.
  final pulumi.Input<PolicyDefinitionTemplateLinkedResource?>? resource;

  /// Creates a new [PolicyDefinitionTemplateLinked].
  /// [policyTemplateId] ID of the template.
  /// [principal] Principal of the template linked policy. See Principal below.
  /// [resource] Resource of the template linked policy. See Resource below.
  const PolicyDefinitionTemplateLinked({
    required this.policyTemplateId,
    this.principal,
    this.resource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policyTemplateId': policyTemplateId,
      'principal': ?pulumi.Input.mapOptionalInputValue<PolicyDefinitionTemplateLinkedPrincipal, Map<String, dynamic>>(principal, (value) => value.toMap()),
      'resource': ?pulumi.Input.mapOptionalInputValue<PolicyDefinitionTemplateLinkedResource, Map<String, dynamic>>(resource, (value) => value.toMap()),
    };
  }

  factory PolicyDefinitionTemplateLinked.fromMap(Map<String, dynamic> map) {
    return PolicyDefinitionTemplateLinked(
      policyTemplateId: pulumi.Input.fromValue(map['policyTemplateId'] as String),
      principal: (() { final guardedValue = map['principal']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PolicyDefinitionTemplateLinkedPrincipal.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resource: (() { final guardedValue = map['resource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PolicyDefinitionTemplateLinkedResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
