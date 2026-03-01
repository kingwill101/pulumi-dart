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
  SignalDefinitionArgs({
    required String healthModelName,
    LogAnalyticsQuerySignalDefinitionProperties? properties,
    required String resourceGroupName,
    String? signalDefinitionName,
  }) :
      healthModelName = pulumi.Input.asInput<String>(healthModelName),
      properties = pulumi.Input.asOptionalInput<LogAnalyticsQuerySignalDefinitionProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      signalDefinitionName = pulumi.Input.asOptionalInput<String>(signalDefinitionName);

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
      healthModelName: map['healthModelName'] as String,
      properties: map['properties'] == null ? null : LogAnalyticsQuerySignalDefinitionProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
      signalDefinitionName: map['signalDefinitionName'] == null ? null : map['signalDefinitionName'] as String,
    );
  }
}

