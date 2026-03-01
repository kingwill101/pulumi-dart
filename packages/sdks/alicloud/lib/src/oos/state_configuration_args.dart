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
  StateConfigurationArgs({
    pulumi.Output<String>? configureMode,
    pulumi.Output<String>? description,
    pulumi.Output<String>? parameters,
    pulumi.Output<String>? resourceGroupId,
    required pulumi.Output<String> scheduleExpression,
    required pulumi.Output<String> scheduleType,
    pulumi.Output<Map<String, String>>? tags,
    required pulumi.Output<String> targets,
    required pulumi.Output<String> templateName,
    pulumi.Output<String>? templateVersion,
  }) :
      configureMode = pulumi.Input.asOptionalInput<String>(configureMode),
      description = pulumi.Input.asOptionalInput<String>(description),
      parameters = pulumi.Input.asOptionalInput<String>(parameters),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      scheduleExpression = pulumi.Input.asInput<String>(scheduleExpression),
      scheduleType = pulumi.Input.asInput<String>(scheduleType),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      targets = pulumi.Input.asInput<String>(targets),
      templateName = pulumi.Input.asInput<String>(templateName),
      templateVersion = pulumi.Input.asOptionalInput<String>(templateVersion);

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
      configureMode: map['configureMode'] == null ? null : pulumi.Output.create<String>(map['configureMode'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      parameters: map['parameters'] == null ? null : pulumi.Output.create<String>(map['parameters'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      scheduleExpression: pulumi.Output.create<String>(map['scheduleExpression'] as String),
      scheduleType: pulumi.Output.create<String>(map['scheduleType'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      targets: pulumi.Output.create<String>(map['targets'] as String),
      templateName: pulumi.Output.create<String>(map['templateName'] as String),
      templateVersion: map['templateVersion'] == null ? null : pulumi.Output.create<String>(map['templateVersion'] as String),
    );
  }
}

