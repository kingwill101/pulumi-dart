// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_healthcareapis_get_analytics_connector_args_doc}
/// Arguments for getAnalyticsConnector.
/// {@endtemplate}
/// {@macro pulumi_healthcareapis_get_analytics_connector_args_doc}
class GetAnalyticsConnectorArgs {
  /// The name of Analytics Connector resource.
  final pulumi.Input<String> analyticsConnectorName;
  /// The name of the resource group that contains the service instance.
  final pulumi.Input<String> resourceGroupName;
  /// The name of workspace resource.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [GetAnalyticsConnectorArgs].
  /// [analyticsConnectorName] The name of Analytics Connector resource.
  /// [resourceGroupName] The name of the resource group that contains the service instance.
  /// [workspaceName] The name of workspace resource.
  const GetAnalyticsConnectorArgs({
    required this.analyticsConnectorName,
    required this.resourceGroupName,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'analyticsConnectorName': analyticsConnectorName,
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory GetAnalyticsConnectorArgs.fromMap(Map<String, dynamic> map) {
    return GetAnalyticsConnectorArgs(
      analyticsConnectorName: pulumi.Input.fromValue(map['analyticsConnectorName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}

