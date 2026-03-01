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
    pulumi.Output<String>? integrationFabricName,
    pulumi.Output<String>? location,
    pulumi.Output<IntegrationFabricProperties>? properties,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
    required pulumi.Output<String> workspaceName,
  }) :
      integrationFabricName = pulumi.Input.asOptionalInput<String>(integrationFabricName),
      location = pulumi.Input.asOptionalInput<String>(location),
      properties = pulumi.Input.asOptionalInput<IntegrationFabricProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

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
      integrationFabricName: map['integrationFabricName'] == null ? null : pulumi.Output.create<String>(map['integrationFabricName'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<IntegrationFabricProperties>(IntegrationFabricProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      workspaceName: pulumi.Output.create<String>(map['workspaceName'] as String),
    );
  }
}

