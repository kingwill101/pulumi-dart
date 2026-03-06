// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_oos_state_configuration_state_configuration_args_doc}
/// The set of arguments for StateConfiguration.
/// {@endtemplate}
/// {@macro pulumi_oos_state_configuration_state_configuration_args_doc}
class StateConfigurationArgs {
  /// Configuration mode. Valid values: `ApplyAndAutoCorrect`, `ApplyAndMonitor`, `ApplyOnly`.
  final pulumi.Input<String>? configureMode;
  /// The description of the resource.
  final pulumi.Input<String>? description;
  /// The parameter of the Template. This field is in the format of JSON strings. For detailed definition instructions, please refer to [Metadata types that are supported by a configuration list](https://www.alibabacloud.com/help/en/doc-detail/208276.html).
  final pulumi.Input<String>? parameters;
  /// The ID of the resource group.
  final pulumi.Input<String>? resourceGroupId;
  /// Timing expression.
  final pulumi.Input<String> scheduleExpression;
  /// Timing type. Valid values: `rate`.
  final pulumi.Input<String> scheduleType;
  /// The tag of the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The Target resources.  This field is in the format of JSON strings. For detailed definition instructions, please refer to [Parameter](https://www.alibabacloud.com/help/en/doc-detail/120674.html).
  final pulumi.Input<String> targets;
  /// The name of the template.
  final pulumi.Input<String> templateName;
  /// The version number. If you do not specify this parameter, the system uses the latest version.
  final pulumi.Input<String>? templateVersion;

  /// Creates a new [StateConfigurationArgs].
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
  const StateConfigurationArgs({
    this.configureMode,
    this.description,
    this.parameters,
    this.resourceGroupId,
    required this.scheduleExpression,
    required this.scheduleType,
    this.tags,
    required this.targets,
    required this.templateName,
    this.templateVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configureMode': ?configureMode,
      'description': ?description,
      'parameters': ?parameters,
      'resourceGroupId': ?resourceGroupId,
      'scheduleExpression': scheduleExpression,
      'scheduleType': scheduleType,
      'tags': ?tags,
      'targets': targets,
      'templateName': templateName,
      'templateVersion': ?templateVersion,
    };
  }

  factory StateConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return StateConfigurationArgs(
      configureMode: (() { final guardedValue = map['configureMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scheduleExpression: pulumi.Input.fromValue(map['scheduleExpression'] as String),
      scheduleType: pulumi.Input.fromValue(map['scheduleType'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      targets: pulumi.Input.fromValue(map['targets'] as String),
      templateName: pulumi.Input.fromValue(map['templateName'] as String),
      templateVersion: (() { final guardedValue = map['templateVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

