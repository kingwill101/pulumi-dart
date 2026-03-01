// ignore_for_file: unused_element, unnecessary_cast

import 'azure_monitor_workspace_signal_group.dart';
import 'azure_resource_signal_group.dart';
import 'dependencies_signal_group.dart';
import 'log_analytics_signal_group.dart';

/// Contains various signal groups that can be assigned to an entity
class SignalGroup {
  /// Log Analytics Signal Group
  final LogAnalyticsSignalGroup? azureLogAnalytics;
  /// Azure Monitor Workspace Signal Group
  final AzureMonitorWorkspaceSignalGroup? azureMonitorWorkspace;
  /// Azure Resource Signal Group
  final AzureResourceSignalGroup? azureResource;
  /// Settings for dependency signals to control how the health state of child entities influences the health state of the parent entity.
  final DependenciesSignalGroup? dependencies;

  /// Creates a new [SignalGroup].
  /// [azureLogAnalytics] Log Analytics Signal Group
  /// [azureMonitorWorkspace] Azure Monitor Workspace Signal Group
  /// [azureResource] Azure Resource Signal Group
  /// [dependencies] Settings for dependency signals to control how the health state of child entities influences the health state of the parent entity.
  SignalGroup({
    this.azureLogAnalytics,
    this.azureMonitorWorkspace,
    this.azureResource,
    this.dependencies,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureLogAnalytics': ?azureLogAnalytics == null ? null : azureLogAnalytics!.toMap(),
      'azureMonitorWorkspace': ?azureMonitorWorkspace == null ? null : azureMonitorWorkspace!.toMap(),
      'azureResource': ?azureResource == null ? null : azureResource!.toMap(),
      'dependencies': ?dependencies == null ? null : dependencies!.toMap(),
    };
  }

  factory SignalGroup.fromMap(Map<String, dynamic> map) {
    return SignalGroup(
      azureLogAnalytics: map['azureLogAnalytics'] == null ? null : LogAnalyticsSignalGroup.fromMap((map['azureLogAnalytics'] as Map).cast<String, dynamic>()),
      azureMonitorWorkspace: map['azureMonitorWorkspace'] == null ? null : AzureMonitorWorkspaceSignalGroup.fromMap((map['azureMonitorWorkspace'] as Map).cast<String, dynamic>()),
      azureResource: map['azureResource'] == null ? null : AzureResourceSignalGroup.fromMap((map['azureResource'] as Map).cast<String, dynamic>()),
      dependencies: map['dependencies'] == null ? null : DependenciesSignalGroup.fromMap((map['dependencies'] as Map).cast<String, dynamic>()),
    );
  }
}

