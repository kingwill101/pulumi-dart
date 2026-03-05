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
      defenseScene: (() { final guardedValue = map['defenseScene']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defenseTemplateId: (() { final guardedValue = map['defenseTemplateId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      defenseTemplateName: (() { final guardedValue = map['defenseTemplateName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceId: (() { final guardedValue = map['instanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroups: (() { final guardedValue = map['resourceGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      resourceManagerResourceGroupId: (() { final guardedValue = map['resourceManagerResourceGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resources: (() { final guardedValue = map['resources']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      templateOrigin: (() { final guardedValue = map['templateOrigin']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      templateType: (() { final guardedValue = map['templateType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

