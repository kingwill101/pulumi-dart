// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class IntegrationFabricProperties {
  /// The resource Id of the Azure resource which is used to configure Grafana data source. E.g., an Azure Monitor Workspace, an Azure Data Explorer cluster, etc.
  final pulumi.Input<String>? dataSourceResourceId;
  /// A list of integration scenarios covered by this integration fabric
  final pulumi.Input<List<String>>? scenarios;
  /// The resource Id of the Azure resource being integrated with Azure Managed Grafana. E.g., an Azure Kubernetes Service cluster.
  final pulumi.Input<String>? targetResourceId;

  /// Creates a new [IntegrationFabricProperties].
  /// [dataSourceResourceId] The resource Id of the Azure resource which is used to configure Grafana data source. E.g., an Azure Monitor Workspace, an Azure Data Explorer cluster, etc.
  /// [scenarios] A list of integration scenarios covered by this integration fabric
  /// [targetResourceId] The resource Id of the Azure resource being integrated with Azure Managed Grafana. E.g., an Azure Kubernetes Service cluster.
  IntegrationFabricProperties({
    this.dataSourceResourceId,
    this.scenarios,
    this.targetResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataSourceResourceId': ?dataSourceResourceId,
      'scenarios': ?scenarios,
      'targetResourceId': ?targetResourceId,
    };
  }

  factory IntegrationFabricProperties.fromMap(Map<String, dynamic> map) {
    return IntegrationFabricProperties(
      dataSourceResourceId: map['dataSourceResourceId'] == null ? null : (map['dataSourceResourceId']! as String).input(),
      scenarios: map['scenarios'] == null ? null : ((map['scenarios']! as List).cast<String>()).input(),
      targetResourceId: map['targetResourceId'] == null ? null : (map['targetResourceId']! as String).input(),
    );
  }
}

