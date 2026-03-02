// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'integration_fabric_properties.dart';

/// {@template pulumi_dashboard_integration_fabric_args_doc}
/// The set of arguments for IntegrationFabric.
/// {@endtemplate}
/// {@macro pulumi_dashboard_integration_fabric_args_doc}
class IntegrationFabricArgs {
  /// The integration fabric name of Azure Managed Grafana.
  final pulumi.Input<String>? integrationFabricName;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  final pulumi.Input<IntegrationFabricProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// The workspace name of Azure Managed Grafana.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [IntegrationFabricArgs].
  /// [integrationFabricName] The integration fabric name of Azure Managed Grafana.
  /// [location] The geo-location where the resource lives
  /// [properties] Optional.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  /// [workspaceName] The workspace name of Azure Managed Grafana.
  IntegrationFabricArgs({
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
      integrationFabricName: map['integrationFabricName'] == null ? null : (map['integrationFabricName']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      properties: map['properties'] == null ? null : (IntegrationFabricProperties.fromMap((map['properties']! as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      workspaceName: (map['workspaceName'] as String).input(),
    );
  }
}

