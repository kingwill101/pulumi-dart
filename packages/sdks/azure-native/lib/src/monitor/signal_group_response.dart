// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_monitor_workspace_signal_group_response.dart';
import 'azure_resource_signal_group_response.dart';
import 'dependencies_signal_group_response.dart';
import 'log_analytics_signal_group_response.dart';

/// Contains various signal groups that can be assigned to an entity
class SignalGroupResponse {
  /// Log Analytics Signal Group
  final pulumi.Input<LogAnalyticsSignalGroupResponse>? azureLogAnalytics;

  /// Azure Monitor Workspace Signal Group
  final pulumi.Input<AzureMonitorWorkspaceSignalGroupResponse>?
  azureMonitorWorkspace;

  /// Azure Resource Signal Group
  final pulumi.Input<AzureResourceSignalGroupResponse>? azureResource;

  /// Settings for dependency signals to control how the health state of child entities influences the health state of the parent entity.
  final pulumi.Input<DependenciesSignalGroupResponse>? dependencies;

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
      'azureLogAnalytics':
          ?pulumi.Input.mapOptionalInputValue<
            LogAnalyticsSignalGroupResponse,
            Map<String, dynamic>
          >(azureLogAnalytics, (value) => value.toMap()),
      'azureMonitorWorkspace':
          ?pulumi.Input.mapOptionalInputValue<
            AzureMonitorWorkspaceSignalGroupResponse,
            Map<String, dynamic>
          >(azureMonitorWorkspace, (value) => value.toMap()),
      'azureResource':
          ?pulumi.Input.mapOptionalInputValue<
            AzureResourceSignalGroupResponse,
            Map<String, dynamic>
          >(azureResource, (value) => value.toMap()),
      'dependencies':
          ?pulumi.Input.mapOptionalInputValue<
            DependenciesSignalGroupResponse,
            Map<String, dynamic>
          >(dependencies, (value) => value.toMap()),
    };
  }

  factory SignalGroupResponse.fromMap(Map<String, dynamic> map) {
    return SignalGroupResponse(
      azureLogAnalytics: (() {
        final guardedValue = map['azureLogAnalytics'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          LogAnalyticsSignalGroupResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      azureMonitorWorkspace: (() {
        final guardedValue = map['azureMonitorWorkspace'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AzureMonitorWorkspaceSignalGroupResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      azureResource: (() {
        final guardedValue = map['azureResource'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AzureResourceSignalGroupResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      dependencies: (() {
        final guardedValue = map['dependencies'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DependenciesSignalGroupResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
