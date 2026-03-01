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
  GetAnalyticsConnectorArgs({
    required pulumi.Output<String> analyticsConnectorName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> workspaceName,
  }) :
      analyticsConnectorName = pulumi.Input.asInput<String>(analyticsConnectorName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'analyticsConnectorName': analyticsConnectorName,
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory GetAnalyticsConnectorArgs.fromMap(Map<String, dynamic> map) {
    return GetAnalyticsConnectorArgs(
      analyticsConnectorName: pulumi.Output.create<String>(map['analyticsConnectorName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      workspaceName: pulumi.Output.create<String>(map['workspaceName'] as String),
    );
  }
}

