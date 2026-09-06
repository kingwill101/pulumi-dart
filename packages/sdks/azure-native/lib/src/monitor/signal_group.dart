// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_monitor_workspace_signal_group.dart';
import 'azure_resource_signal_group.dart';
import 'dependencies_signal_group.dart';
import 'log_analytics_signal_group.dart';

/// Contains various signal groups that can be assigned to an entity
class SignalGroup {
  /// Log Analytics Signal Group
  final pulumi.Input<LogAnalyticsSignalGroup?>? azureLogAnalytics;
  /// Azure Monitor Workspace Signal Group
  final pulumi.Input<AzureMonitorWorkspaceSignalGroup?>? azureMonitorWorkspace;
  /// Azure Resource Signal Group
  final pulumi.Input<AzureResourceSignalGroup?>? azureResource;
  /// Settings for dependency signals to control how the health state of child entities influences the health state of the parent entity.
  final pulumi.Input<DependenciesSignalGroup?>? dependencies;

  /// Creates a new [SignalGroup].
  /// [azureLogAnalytics] Log Analytics Signal Group
  /// [azureMonitorWorkspace] Azure Monitor Workspace Signal Group
  /// [azureResource] Azure Resource Signal Group
  /// [dependencies] Settings for dependency signals to control how the health state of child entities influences the health state of the parent entity.
  const SignalGroup({
    this.azureLogAnalytics,
    this.azureMonitorWorkspace,
    this.azureResource,
    this.dependencies,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureLogAnalytics': ?pulumi.Input.mapOptionalInputValue<LogAnalyticsSignalGroup, Map<String, dynamic>>(azureLogAnalytics, (value) => value.toMap()),
      'azureMonitorWorkspace': ?pulumi.Input.mapOptionalInputValue<AzureMonitorWorkspaceSignalGroup, Map<String, dynamic>>(azureMonitorWorkspace, (value) => value.toMap()),
      'azureResource': ?pulumi.Input.mapOptionalInputValue<AzureResourceSignalGroup, Map<String, dynamic>>(azureResource, (value) => value.toMap()),
      'dependencies': ?pulumi.Input.mapOptionalInputValue<DependenciesSignalGroup, Map<String, dynamic>>(dependencies, (value) => value.toMap()),
    };
  }

  factory SignalGroup.fromMap(Map<String, dynamic> map) {
    return SignalGroup(
      azureLogAnalytics: (() { final guardedValue = map['azureLogAnalytics']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LogAnalyticsSignalGroup.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      azureMonitorWorkspace: (() { final guardedValue = map['azureMonitorWorkspace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureMonitorWorkspaceSignalGroup.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      azureResource: (() { final guardedValue = map['azureResource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureResourceSignalGroup.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dependencies: (() { final guardedValue = map['dependencies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DependenciesSignalGroup.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
