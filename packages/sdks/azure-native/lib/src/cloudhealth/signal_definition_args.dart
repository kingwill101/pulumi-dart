// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'log_analytics_query_signal_definition_properties.dart';

/// {@template pulumi_cloudhealth_signal_definition_args_doc}
/// The set of arguments for SignalDefinition.
/// {@endtemplate}
/// {@macro pulumi_cloudhealth_signal_definition_args_doc}
class SignalDefinitionArgs {
  /// Name of health model resource
  final pulumi.Input<String> healthModelName;
  /// The resource-specific properties for this resource.
  final pulumi.Input<LogAnalyticsQuerySignalDefinitionProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the signal definition. Must be unique within a health model.
  final pulumi.Input<String>? signalDefinitionName;

  /// Creates a new [SignalDefinitionArgs].
  /// [healthModelName] Name of health model resource
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [signalDefinitionName] Name of the signal definition. Must be unique within a health model.
  const SignalDefinitionArgs({
    required this.healthModelName,
    this.properties,
    required this.resourceGroupName,
    this.signalDefinitionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'healthModelName': healthModelName,
      'properties': ?pulumi.Input.mapOptionalInputValue<LogAnalyticsQuerySignalDefinitionProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'signalDefinitionName': ?signalDefinitionName,
    };
  }

  factory SignalDefinitionArgs.fromMap(Map<String, dynamic> map) {
    return SignalDefinitionArgs(
      healthModelName: pulumi.Input.fromValue(map['healthModelName'] as String),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LogAnalyticsQuerySignalDefinitionProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      signalDefinitionName: (() { final guardedValue = map['signalDefinitionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
