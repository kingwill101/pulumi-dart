// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DefenseTemplate resources.
class DefenseTemplateState {
  /// The WAF protection scenario to be created. Valid values:
  final pulumi.Input<String>? defenseScene;
  /// Template ID
  final pulumi.Input<int>? defenseTemplateId;
  /// The name of the protection rule template.
  final pulumi.Input<String>? defenseTemplateName;
  /// The description of the protection rule template.
  final pulumi.Input<String>? description;
  /// The ID of the Web Application Firewall (WAF) instance.
  final pulumi.Input<String>? instanceId;
  /// The name of the protected object group. After a protection template resource is created, you can modify the bound protection object group.
  final pulumi.Input<List<String>>? resourceGroups;
  final pulumi.Input<String>? resourceManagerResourceGroupId;
  /// The list of protected objects to be bound. After a protection template resource is created, you can modify the bound protected objects.
  final pulumi.Input<List<String>>? resources;
  /// The status of the protection rule template. Valid values:
  final pulumi.Input<String>? status;
  /// The origin of the protection rule template that you want to create. Set the value to `custom`. The value specifies that the protection rule template is a custom template.
  final pulumi.Input<String>? templateOrigin;
  /// The type of the protection rule template. Valid values:
  /// - **user_default:** default template.
  /// - **user_custom:** custom template.
  final pulumi.Input<String>? templateType;

  /// Creates a new [DefenseTemplateState].
  /// [defenseScene] The WAF protection scenario to be created. Valid values:
  /// [defenseTemplateId] Template ID
  /// [defenseTemplateName] The name of the protection rule template.
  /// [description] The description of the protection rule template.
  /// [instanceId] The ID of the Web Application Firewall (WAF) instance.
  /// [resourceGroups] The name of the protected object group. After a protection template resource is created, you can modify the bound protection object group.
  /// [resourceManagerResourceGroupId] Optional.
  /// [resources] The list of protected objects to be bound. After a protection template resource is created, you can modify the bound protected objects.
  /// [status] The status of the protection rule template. Valid values:
  /// [templateOrigin] The origin of the protection rule template that you want to create. Set the value to `custom`. The value specifies that the protection rule template is a custom template.
  /// [templateType] The type of the protection rule template. Valid values:
  DefenseTemplateState({
    this.defenseScene,
    this.defenseTemplateId,
    this.defenseTemplateName,
    this.description,
    this.instanceId,
    this.resourceGroups,
    this.resourceManagerResourceGroupId,
    this.resources,
    this.status,
    this.templateOrigin,
    this.templateType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defenseScene': ?defenseScene,
      'defenseTemplateId': ?defenseTemplateId,
      'defenseTemplateName': ?defenseTemplateName,
      'description': ?description,
      'instanceId': ?instanceId,
      'resourceGroups': ?resourceGroups,
      'resourceManagerResourceGroupId': ?resourceManagerResourceGroupId,
      'resources': ?resources,
      'status': ?status,
      'templateOrigin': ?templateOrigin,
      'templateType': ?templateType,
    };
  }

  factory DefenseTemplateState.fromMap(Map<String, dynamic> map) {
    return DefenseTemplateState(
      defenseScene: map['defenseScene'] == null ? null : (map['defenseScene'] as String).input(),
      defenseTemplateId: map['defenseTemplateId'] == null ? null : (map['defenseTemplateId'] as int).input(),
      defenseTemplateName: map['defenseTemplateName'] == null ? null : (map['defenseTemplateName'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      instanceId: map['instanceId'] == null ? null : (map['instanceId'] as String).input(),
      resourceGroups: map['resourceGroups'] == null ? null : ((map['resourceGroups'] as List).cast<String>()).input(),
      resourceManagerResourceGroupId: map['resourceManagerResourceGroupId'] == null ? null : (map['resourceManagerResourceGroupId'] as String).input(),
      resources: map['resources'] == null ? null : ((map['resources'] as List).cast<String>()).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      templateOrigin: map['templateOrigin'] == null ? null : (map['templateOrigin'] as String).input(),
      templateType: map['templateType'] == null ? null : (map['templateType'] as String).input(),
    );
  }
}

