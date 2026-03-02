// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetStateConfigurationsConfiguration {
  /// The configuration mode.
  final pulumi.Input<String> configureMode;
  /// The creation time.
  final pulumi.Input<String> createTime;
  /// The description.
  final pulumi.Input<String> description;
  /// The ID of the State Configuration.
  final pulumi.Input<String> id;
  /// The parameters.
  final pulumi.Input<String> parameters;
  /// The ID of the resource group.
  final pulumi.Input<String> resourceGroupId;
  /// The schedule expression.
  final pulumi.Input<String> scheduleExpression;
  /// The schedule type.
  final pulumi.Input<String> scheduleType;
  /// The ID of the final state configuration.
  final pulumi.Input<String> stateConfigurationId;
  /// The tag of the resource.
  final pulumi.Input<Map<String, String>> tags;
  /// The target resource.
  final pulumi.Input<String> targets;
  /// The ID of the template.
  final pulumi.Input<String> templateId;
  /// The name of the template.
  final pulumi.Input<String> templateName;
  /// The version of the template.
  final pulumi.Input<String> templateVersion;
  /// The time when the configuration is updated.
  final pulumi.Input<String> updateTime;

  /// Creates a new [GetStateConfigurationsConfiguration].
  /// [configureMode] The configuration mode.
  /// [createTime] The creation time.
  /// [description] The description.
  /// [id] The ID of the State Configuration.
  /// [parameters] The parameters.
  /// [resourceGroupId] The ID of the resource group.
  /// [scheduleExpression] The schedule expression.
  /// [scheduleType] The schedule type.
  /// [stateConfigurationId] The ID of the final state configuration.
  /// [tags] The tag of the resource.
  /// [targets] The target resource.
  /// [templateId] The ID of the template.
  /// [templateName] The name of the template.
  /// [templateVersion] The version of the template.
  /// [updateTime] The time when the configuration is updated.
  GetStateConfigurationsConfiguration({
    required this.configureMode,
    required this.createTime,
    required this.description,
    required this.id,
    required this.parameters,
    required this.resourceGroupId,
    required this.scheduleExpression,
    required this.scheduleType,
    required this.stateConfigurationId,
    required this.tags,
    required this.targets,
    required this.templateId,
    required this.templateName,
    required this.templateVersion,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configureMode': configureMode,
      'createTime': createTime,
      'description': description,
      'id': id,
      'parameters': parameters,
      'resourceGroupId': resourceGroupId,
      'scheduleExpression': scheduleExpression,
      'scheduleType': scheduleType,
      'stateConfigurationId': stateConfigurationId,
      'tags': tags,
      'targets': targets,
      'templateId': templateId,
      'templateName': templateName,
      'templateVersion': templateVersion,
      'updateTime': updateTime,
    };
  }

  factory GetStateConfigurationsConfiguration.fromMap(Map<String, dynamic> map) {
    return GetStateConfigurationsConfiguration(
      configureMode: (map['configureMode'] as String).input(),
      createTime: (map['createTime'] as String).input(),
      description: (map['description'] as String).input(),
      id: (map['id'] as String).input(),
      parameters: (map['parameters'] as String).input(),
      resourceGroupId: (map['resourceGroupId'] as String).input(),
      scheduleExpression: (map['scheduleExpression'] as String).input(),
      scheduleType: (map['scheduleType'] as String).input(),
      stateConfigurationId: (map['stateConfigurationId'] as String).input(),
      tags: ((map['tags'] as Map).cast<String, String>()).input(),
      targets: (map['targets'] as String).input(),
      templateId: (map['templateId'] as String).input(),
      templateName: (map['templateName'] as String).input(),
      templateVersion: (map['templateVersion'] as String).input(),
      updateTime: (map['updateTime'] as String).input(),
    );
  }
}

