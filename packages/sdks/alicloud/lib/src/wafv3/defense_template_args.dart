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
    required this.defenseScene,
    required this.defenseTemplateName,
    this.description,
    required this.instanceId,
    this.resourceGroups,
    this.resourceManagerResourceGroupId,
    this.resources,
    required this.status,
    required this.templateOrigin,
    required this.templateType,
  });

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
      defenseScene: (map['defenseScene'] as String).input(),
      defenseTemplateName: (map['defenseTemplateName'] as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      instanceId: (map['instanceId'] as String).input(),
      resourceGroups: map['resourceGroups'] == null ? null : ((map['resourceGroups']! as List).cast<String>()).input(),
      resourceManagerResourceGroupId: map['resourceManagerResourceGroupId'] == null ? null : (map['resourceManagerResourceGroupId']! as String).input(),
      resources: map['resources'] == null ? null : ((map['resources']! as List).cast<String>()).input(),
      status: (map['status'] as String).input(),
      templateOrigin: (map['templateOrigin'] as String).input(),
      templateType: (map['templateType'] as String).input(),
    );
  }
}

