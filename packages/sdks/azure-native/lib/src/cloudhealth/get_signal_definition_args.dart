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
    required this.healthModelName,
    required this.resourceGroupName,
    required this.signalDefinitionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'healthModelName': healthModelName,
      'resourceGroupName': resourceGroupName,
      'signalDefinitionName': signalDefinitionName,
    };
  }

  factory GetSignalDefinitionArgs.fromMap(Map<String, dynamic> map) {
    return GetSignalDefinitionArgs(
      healthModelName: (map['healthModelName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      signalDefinitionName: (map['signalDefinitionName'] as String).input(),
    );
  }
}

