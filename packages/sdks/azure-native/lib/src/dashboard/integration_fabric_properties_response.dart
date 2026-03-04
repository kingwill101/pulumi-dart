// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class IntegrationFabricPropertiesResponse {
  /// The resource Id of the Azure resource which is used to configure Grafana data source. E.g., an Azure Monitor Workspace, an Azure Data Explorer cluster, etc.
  final pulumi.Input<String>? dataSourceResourceId;

  /// Provisioning state of the resource.
  final pulumi.Input<String> provisioningState;

  /// A list of integration scenarios covered by this integration fabric
  final pulumi.Input<List<String>>? scenarios;

  /// The resource Id of the Azure resource being integrated with Azure Managed Grafana. E.g., an Azure Kubernetes Service cluster.
  final pulumi.Input<String>? targetResourceId;

  /// Creates a new [IntegrationFabricPropertiesResponse].
  /// [dataSourceResourceId] The resource Id of the Azure resource which is used to configure Grafana data source. E.g., an Azure Monitor Workspace, an Azure Data Explorer cluster, etc.
  /// [provisioningState] Provisioning state of the resource.
  /// [scenarios] A list of integration scenarios covered by this integration fabric
  /// [targetResourceId] The resource Id of the Azure resource being integrated with Azure Managed Grafana. E.g., an Azure Kubernetes Service cluster.
  IntegrationFabricPropertiesResponse({
    this.dataSourceResourceId,
    required this.provisioningState,
    this.scenarios,
    this.targetResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataSourceResourceId': ?dataSourceResourceId,
      'provisioningState': provisioningState,
      'scenarios': ?scenarios,
      'targetResourceId': ?targetResourceId,
    };
  }

  factory IntegrationFabricPropertiesResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return IntegrationFabricPropertiesResponse(
      dataSourceResourceId: (() {
        final guardedValue = map['dataSourceResourceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      provisioningState: pulumi.Input.fromValue(
        map['provisioningState'] as String,
      ),
      scenarios: (() {
        final guardedValue = map['scenarios'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      targetResourceId: (() {
        final guardedValue = map['targetResourceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
