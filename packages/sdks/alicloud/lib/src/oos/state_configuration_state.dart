// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering StateConfiguration resources.
class StateConfigurationState {
  /// Configuration mode. Valid values: `ApplyAndAutoCorrect`, `ApplyAndMonitor`, `ApplyOnly`.
  final pulumi.Input<String>? configureMode;
  /// The description of the resource.
  final pulumi.Input<String>? description;
  /// The parameter of the Template. This field is in the format of JSON strings. For detailed definition instructions, please refer to [Metadata types that are supported by a configuration list](https://www.alibabacloud.com/help/en/doc-detail/208276.html).
  final pulumi.Input<String>? parameters;
  /// The ID of the resource group.
  final pulumi.Input<String>? resourceGroupId;
  /// Timing expression.
  final pulumi.Input<String>? scheduleExpression;
  /// Timing type. Valid values: `rate`.
  final pulumi.Input<String>? scheduleType;
  /// The tag of the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The Target resources.  This field is in the format of JSON strings. For detailed definition instructions, please refer to [Parameter](https://www.alibabacloud.com/help/en/doc-detail/120674.html).
  final pulumi.Input<String>? targets;
  /// The name of the template.
  final pulumi.Input<String>? templateName;
  /// The version number. If you do not specify this parameter, the system uses the latest version.
  final pulumi.Input<String>? templateVersion;

  /// Creates a new [StateConfigurationState].
  /// [configureMode] Configuration mode. Valid values: `ApplyAndAutoCorrect`, `ApplyAndMonitor`, `ApplyOnly`.
  /// [description] The description of the resource.
  /// [parameters] The parameter of the Template. This field is in the format of JSON strings. For detailed definition instructions, please refer to [Metadata types that are supported by a configuration list](https://www.alibabacloud.com/help/en/doc-detail/208276.html).
  /// [resourceGroupId] The ID of the resource group.
  /// [scheduleExpression] Timing expression.
  /// [scheduleType] Timing type. Valid values: `rate`.
  /// [tags] The tag of the resource.
  /// [targets] The Target resources.  This field is in the format of JSON strings. For detailed definition instructions, please refer to [Parameter](https://www.alibabacloud.com/help/en/doc-detail/120674.html).
  /// [templateName] The name of the template.
  /// [templateVersion] The version number. If you do not specify this parameter, the system uses the latest version.
  StateConfigurationState({
    this.configureMode,
    this.description,
    this.parameters,
    this.resourceGroupId,
    this.scheduleExpression,
    this.scheduleType,
    this.tags,
    this.targets,
    this.templateName,
    this.templateVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configureMode': ?configureMode,
      'description': ?description,
      'parameters': ?parameters,
      'resourceGroupId': ?resourceGroupId,
      'scheduleExpression': ?scheduleExpression,
      'scheduleType': ?scheduleType,
      'tags': ?tags,
      'targets': ?targets,
      'templateName': ?templateName,
      'templateVersion': ?templateVersion,
    };
  }

  factory StateConfigurationState.fromMap(Map<String, dynamic> map) {
    return StateConfigurationState(
      configureMode: map['configureMode'] == null ? null : (map['configureMode']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      parameters: map['parameters'] == null ? null : (map['parameters']! as String).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId']! as String).input(),
      scheduleExpression: map['scheduleExpression'] == null ? null : (map['scheduleExpression']! as String).input(),
      scheduleType: map['scheduleType'] == null ? null : (map['scheduleType']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      targets: map['targets'] == null ? null : (map['targets']! as String).input(),
      templateName: map['templateName'] == null ? null : (map['templateName']! as String).input(),
      templateVersion: map['templateVersion'] == null ? null : (map['templateVersion']! as String).input(),
    );
  }
}

