// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudhealth_get_signal_definition_args_doc}
/// Arguments for getSignalDefinition.
/// {@endtemplate}
/// {@macro pulumi_cloudhealth_get_signal_definition_args_doc}
class GetSignalDefinitionArgs {
  /// Name of health model resource
  final pulumi.Input<String> healthModelName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the signal definition. Must be unique within a health model.
  final pulumi.Input<String> signalDefinitionName;

  /// Creates a new [GetSignalDefinitionArgs].
  /// [healthModelName] Name of health model resource
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [signalDefinitionName] Name of the signal definition. Must be unique within a health model.
  GetSignalDefinitionArgs({
    required pulumi.Output<String> healthModelName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> signalDefinitionName,
  }) :
      healthModelName = pulumi.Input.asInput<String>(healthModelName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      signalDefinitionName = pulumi.Input.asInput<String>(signalDefinitionName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'healthModelName': healthModelName,
      'resourceGroupName': resourceGroupName,
      'signalDefinitionName': signalDefinitionName,
    };
  }

  factory GetSignalDefinitionArgs.fromMap(Map<String, dynamic> map) {
    return GetSignalDefinitionArgs(
      healthModelName: pulumi.Output.create<String>(map['healthModelName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      signalDefinitionName: pulumi.Output.create<String>(map['signalDefinitionName'] as String),
    );
  }
}

