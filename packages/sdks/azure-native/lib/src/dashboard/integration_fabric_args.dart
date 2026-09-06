// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'integration_fabric_properties.dart';

/// {@template pulumi_dashboard_integration_fabric_args_doc}
/// The set of arguments for IntegrationFabric.
/// {@endtemplate}
/// {@macro pulumi_dashboard_integration_fabric_args_doc}
class IntegrationFabricArgs {
  /// The integration fabric name of Azure Managed Grafana.
  final pulumi.Input<String?>? integrationFabricName;
  /// The geo-location where the resource lives
  final pulumi.Input<String?>? location;
  final pulumi.Input<IntegrationFabricProperties?>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>?>? tags;
  /// The workspace name of Azure Managed Grafana.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [IntegrationFabricArgs].
  /// [integrationFabricName] The integration fabric name of Azure Managed Grafana.
  /// [location] The geo-location where the resource lives
  /// [properties] Optional.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  /// [workspaceName] The workspace name of Azure Managed Grafana.
  const IntegrationFabricArgs({
    this.integrationFabricName,
    this.location,
    this.properties,
    required this.resourceGroupName,
    this.tags,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'integrationFabricName': ?integrationFabricName,
      'location': ?location,
      'properties': ?pulumi.Input.mapOptionalInputValue<IntegrationFabricProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'workspaceName': workspaceName,
    };
  }

  factory IntegrationFabricArgs.fromMap(Map<String, dynamic> map) {
    return IntegrationFabricArgs(
      integrationFabricName: (() { final guardedValue = map['integrationFabricName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IntegrationFabricProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}
