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
    pulumi.Output<String>? defenseScene,
    pulumi.Output<int>? defenseTemplateId,
    pulumi.Output<String>? defenseTemplateName,
    pulumi.Output<String>? description,
    pulumi.Output<String>? instanceId,
    pulumi.Output<List<String>>? resourceGroups,
    pulumi.Output<String>? resourceManagerResourceGroupId,
    pulumi.Output<List<String>>? resources,
    pulumi.Output<String>? status,
    pulumi.Output<String>? templateOrigin,
    pulumi.Output<String>? templateType,
  }) :
      defenseScene = pulumi.Input.asOptionalInput<String>(defenseScene),
      defenseTemplateId = pulumi.Input.asOptionalInput<int>(defenseTemplateId),
      defenseTemplateName = pulumi.Input.asOptionalInput<String>(defenseTemplateName),
      description = pulumi.Input.asOptionalInput<String>(description),
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId),
      resourceGroups = pulumi.Input.asOptionalInput<List<String>>(resourceGroups),
      resourceManagerResourceGroupId = pulumi.Input.asOptionalInput<String>(resourceManagerResourceGroupId),
      resources = pulumi.Input.asOptionalInput<List<String>>(resources),
      status = pulumi.Input.asOptionalInput<String>(status),
      templateOrigin = pulumi.Input.asOptionalInput<String>(templateOrigin),
      templateType = pulumi.Input.asOptionalInput<String>(templateType);

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
      defenseScene: map['defenseScene'] == null ? null : pulumi.Output.create<String>(map['defenseScene'] as String),
      defenseTemplateId: map['defenseTemplateId'] == null ? null : pulumi.Output.create<int>(map['defenseTemplateId'] as int),
      defenseTemplateName: map['defenseTemplateName'] == null ? null : pulumi.Output.create<String>(map['defenseTemplateName'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      instanceId: map['instanceId'] == null ? null : pulumi.Output.create<String>(map['instanceId'] as String),
      resourceGroups: map['resourceGroups'] == null ? null : pulumi.Output.create<List<String>>((map['resourceGroups'] as List).cast<String>()),
      resourceManagerResourceGroupId: map['resourceManagerResourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceManagerResourceGroupId'] as String),
      resources: map['resources'] == null ? null : pulumi.Output.create<List<String>>((map['resources'] as List).cast<String>()),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      templateOrigin: map['templateOrigin'] == null ? null : pulumi.Output.create<String>(map['templateOrigin'] as String),
      templateType: map['templateType'] == null ? null : pulumi.Output.create<String>(map['templateType'] as String),
    );
  }
}

