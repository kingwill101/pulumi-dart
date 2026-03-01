// ignore_for_file: unused_element, unnecessary_cast

import 'azure_monitor_workspace_signal_group_response.dart';
import 'azure_resource_signal_group_response.dart';
import 'dependencies_signal_group_response.dart';
import 'log_analytics_signal_group_response.dart';

/// Contains various signal groups that can be assigned to an entity
class SignalGroupResponse {
  /// Log Analytics Signal Group
  final LogAnalyticsSignalGroupResponse? azureLogAnalytics;
  /// Azure Monitor Workspace Signal Group
  final AzureMonitorWorkspaceSignalGroupResponse? azureMonitorWorkspace;
  /// Azure Resource Signal Group
  final AzureResourceSignalGroupResponse? azureResource;
  /// Settings for dependency signals to control how the health state of child entities influences the health state of the parent entity.
  final DependenciesSignalGroupResponse? dependencies;

  /// Creates a new [SignalGroupResponse].
  /// [azureLogAnalytics] Log Analytics Signal Group
  /// [azureMonitorWorkspace] Azure Monitor Workspace Signal Group
  /// [azureResource] Azure Resource Signal Group
  /// [dependencies] Settings for dependency signals to control how the health state of child entities influences the health state of the parent entity.
  SignalGroupResponse({
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

  factory SignalGroupResponse.fromMap(Map<String, dynamic> map) {
    return SignalGroupResponse(
      azureLogAnalytics: map['azureLogAnalytics'] == null ? null : LogAnalyticsSignalGroupResponse.fromMap((map['azureLogAnalytics'] as Map).cast<String, dynamic>()),
      azureMonitorWorkspace: map['azureMonitorWorkspace'] == null ? null : AzureMonitorWorkspaceSignalGroupResponse.fromMap((map['azureMonitorWorkspace'] as Map).cast<String, dynamic>()),
      azureResource: map['azureResource'] == null ? null : AzureResourceSignalGroupResponse.fromMap((map['azureResource'] as Map).cast<String, dynamic>()),
      dependencies: map['dependencies'] == null ? null : DependenciesSignalGroupResponse.fromMap((map['dependencies'] as Map).cast<String, dynamic>()),
    );
  }
}

