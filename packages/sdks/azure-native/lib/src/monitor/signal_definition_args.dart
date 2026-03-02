// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'log_analytics_query_signal_definition_properties.dart';

/// {@template pulumi_monitor_signal_definition_args_doc}
/// The set of arguments for SignalDefinition.
/// {@endtemplate}
/// {@macro pulumi_monitor_signal_definition_args_doc}
class SignalDefinitionArgs {
  /// The name of the Azure Monitor Workspace. The name is case insensitive
  final pulumi.Input<String> azureMonitorWorkspaceName;
  /// Name of health model resource
  final pulumi.Input<String> healthModelName;
  /// The resource-specific properties for this resource.
  final pulumi.Input<LogAnalyticsQuerySignalDefinitionProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the signal definition. Must be unique within a health model.
  final pulumi.Input<String>? signalDefinitionName;

  /// Creates a new [SignalDefinitionArgs].
  /// [azureMonitorWorkspaceName] The name of the Azure Monitor Workspace. The name is case insensitive
  /// [healthModelName] Name of health model resource
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [signalDefinitionName] Name of the signal definition. Must be unique within a health model.
  SignalDefinitionArgs({
    required this.azureMonitorWorkspaceName,
    required this.healthModelName,
    this.properties,
    required this.resourceGroupName,
    this.signalDefinitionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureMonitorWorkspaceName': azureMonitorWorkspaceName,
      'healthModelName': healthModelName,
      'properties': ?pulumi.Input.mapOptionalInputValue<LogAnalyticsQuerySignalDefinitionProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'signalDefinitionName': ?signalDefinitionName,
    };
  }

  factory SignalDefinitionArgs.fromMap(Map<String, dynamic> map) {
    return SignalDefinitionArgs(
      azureMonitorWorkspaceName: (map['azureMonitorWorkspaceName'] as String).input(),
      healthModelName: (map['healthModelName'] as String).input(),
      properties: map['properties'] == null ? null : (LogAnalyticsQuerySignalDefinitionProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      signalDefinitionName: map['signalDefinitionName'] == null ? null : (map['signalDefinitionName'] as String).input(),
    );
  }
}

