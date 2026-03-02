// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PolicyDefinitionTemplateLinkedResource {
  /// The entity ID of the resource.
  final pulumi.Input<String> entityId;
  /// The entity type of the resource.
  final pulumi.Input<String> entityType;

  /// Creates a new [PolicyDefinitionTemplateLinkedResource].
  /// [entityId] The entity ID of the resource.
  /// [entityType] The entity type of the resource.
  PolicyDefinitionTemplateLinkedResource({
    required this.entityId,
    required this.entityType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entityId': entityId,
      'entityType': entityType,
    };
  }

  factory PolicyDefinitionTemplateLinkedResource.fromMap(Map<String, dynamic> map) {
    return PolicyDefinitionTemplateLinkedResource(
      entityId: (map['entityId'] as String).input(),
      entityType: (map['entityType'] as String).input(),
    );
  }
}

