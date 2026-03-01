// ignore_for_file: unused_element, unnecessary_cast


class GetStateConfigurationsConfiguration {
  /// The configuration mode.
  final String configureMode;
  /// The creation time.
  final String createTime;
  /// The description.
  final String description;
  /// The ID of the State Configuration.
  final String id;
  /// The parameters.
  final String parameters;
  /// The ID of the resource group.
  final String resourceGroupId;
  /// The schedule expression.
  final String scheduleExpression;
  /// The schedule type.
  final String scheduleType;
  /// The ID of the final state configuration.
  final String stateConfigurationId;
  /// The tag of the resource.
  final Map<String, String> tags;
  /// The target resource.
  final String targets;
  /// The ID of the template.
  final String templateId;
  /// The name of the template.
  final String templateName;
  /// The version of the template.
  final String templateVersion;
  /// The time when the configuration is updated.
  final String updateTime;

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
      configureMode: map['configureMode'] as String,
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      id: map['id'] as String,
      parameters: map['parameters'] as String,
      resourceGroupId: map['resourceGroupId'] as String,
      scheduleExpression: map['scheduleExpression'] as String,
      scheduleType: map['scheduleType'] as String,
      stateConfigurationId: map['stateConfigurationId'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      targets: map['targets'] as String,
      templateId: map['templateId'] as String,
      templateName: map['templateName'] as String,
      templateVersion: map['templateVersion'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}

