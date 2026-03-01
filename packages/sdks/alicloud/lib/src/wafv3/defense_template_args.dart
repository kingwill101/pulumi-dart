// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_wafv3_defense_template_defense_template_args_doc}
/// The set of arguments for DefenseTemplate.
/// {@endtemplate}
/// {@macro pulumi_wafv3_defense_template_defense_template_args_doc}
class DefenseTemplateArgs {
  /// The WAF protection scenario to be created. Valid values:
  final pulumi.Input<String> defenseScene;
  /// The name of the protection rule template.
  final pulumi.Input<String> defenseTemplateName;
  /// The description of the protection rule template.
  final pulumi.Input<String>? description;
  /// The ID of the Web Application Firewall (WAF) instance.
  final pulumi.Input<String> instanceId;
  /// The name of the protected object group. After a protection template resource is created, you can modify the bound protection object group.
  final pulumi.Input<List<String>>? resourceGroups;
  final pulumi.Input<String>? resourceManagerResourceGroupId;
  /// The list of protected objects to be bound. After a protection template resource is created, you can modify the bound protected objects.
  final pulumi.Input<List<String>>? resources;
  /// The status of the protection rule template. Valid values:
  final pulumi.Input<String> status;
  /// The origin of the protection rule template that you want to create. Set the value to `custom`. The value specifies that the protection rule template is a custom template.
  final pulumi.Input<String> templateOrigin;
  /// The type of the protection rule template. Valid values:
  /// - **user_default:** default template.
  /// - **user_custom:** custom template.
  final pulumi.Input<String> templateType;

  /// Creates a new [DefenseTemplateArgs].
  /// [defenseScene] The WAF protection scenario to be created. Valid values:
  /// [defenseTemplateName] The name of the protection rule template.
  /// [description] The description of the protection rule template.
  /// [instanceId] The ID of the Web Application Firewall (WAF) instance.
  /// [resourceGroups] The name of the protected object group. After a protection template resource is created, you can modify the bound protection object group.
  /// [resourceManagerResourceGroupId] Optional.
  /// [resources] The list of protected objects to be bound. After a protection template resource is created, you can modify the bound protected objects.
  /// [status] The status of the protection rule template. Valid values:
  /// [templateOrigin] The origin of the protection rule template that you want to create. Set the value to `custom`. The value specifies that the protection rule template is a custom template.
  /// [templateType] The type of the protection rule template. Valid values:
  DefenseTemplateArgs({
    required pulumi.Output<String> defenseScene,
    required pulumi.Output<String> defenseTemplateName,
    pulumi.Output<String>? description,
    required pulumi.Output<String> instanceId,
    pulumi.Output<List<String>>? resourceGroups,
    pulumi.Output<String>? resourceManagerResourceGroupId,
    pulumi.Output<List<String>>? resources,
    required pulumi.Output<String> status,
    required pulumi.Output<String> templateOrigin,
    required pulumi.Output<String> templateType,
  }) :
      defenseScene = pulumi.Input.asInput<String>(defenseScene),
      defenseTemplateName = pulumi.Input.asInput<String>(defenseTemplateName),
      description = pulumi.Input.asOptionalInput<String>(description),
      instanceId = pulumi.Input.asInput<String>(instanceId),
      resourceGroups = pulumi.Input.asOptionalInput<List<String>>(resourceGroups),
      resourceManagerResourceGroupId = pulumi.Input.asOptionalInput<String>(resourceManagerResourceGroupId),
      resources = pulumi.Input.asOptionalInput<List<String>>(resources),
      status = pulumi.Input.asInput<String>(status),
      templateOrigin = pulumi.Input.asInput<String>(templateOrigin),
      templateType = pulumi.Input.asInput<String>(templateType);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defenseScene': defenseScene,
      'defenseTemplateName': defenseTemplateName,
      'description': ?description,
      'instanceId': instanceId,
      'resourceGroups': ?resourceGroups,
      'resourceManagerResourceGroupId': ?resourceManagerResourceGroupId,
      'resources': ?resources,
      'status': status,
      'templateOrigin': templateOrigin,
      'templateType': templateType,
    };
  }

  factory DefenseTemplateArgs.fromMap(Map<String, dynamic> map) {
    return DefenseTemplateArgs(
      defenseScene: pulumi.Output.create<String>(map['defenseScene'] as String),
      defenseTemplateName: pulumi.Output.create<String>(map['defenseTemplateName'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      instanceId: pulumi.Output.create<String>(map['instanceId'] as String),
      resourceGroups: map['resourceGroups'] == null ? null : pulumi.Output.create<List<String>>((map['resourceGroups'] as List).cast<String>()),
      resourceManagerResourceGroupId: map['resourceManagerResourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceManagerResourceGroupId'] as String),
      resources: map['resources'] == null ? null : pulumi.Output.create<List<String>>((map['resources'] as List).cast<String>()),
      status: pulumi.Output.create<String>(map['status'] as String),
      templateOrigin: pulumi.Output.create<String>(map['templateOrigin'] as String),
      templateType: pulumi.Output.create<String>(map['templateType'] as String),
    );
  }
}

