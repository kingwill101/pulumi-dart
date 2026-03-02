// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'az_stack_hcicluster_properties_response.dart';

/// AzStackHCI fabric model custom properties.
class AzStackHCIFabricModelCustomPropertiesResponse {
  /// Gets or sets the Appliance name.
  final pulumi.Input<List<String>> applianceName;
  /// Gets or sets the ARM Id of the AzStackHCI site.
  final pulumi.Input<String> azStackHciSiteId;
  /// AzStackHCI cluster properties.
  final pulumi.Input<AzStackHCIClusterPropertiesResponse> cluster;
  /// Gets or sets the fabric container Id.
  final pulumi.Input<String> fabricContainerId;
  /// Gets or sets the fabric resource Id.
  final pulumi.Input<String> fabricResourceId;
  /// Gets or sets the instance type.
  /// Expected value is 'AzStackHCI'.
  final pulumi.Input<String> instanceType;
  /// Gets or sets the migration hub Uri.
  final pulumi.Input<String> migrationHubUri;
  /// Gets or sets the Migration solution ARM Id.
  final pulumi.Input<String> migrationSolutionId;

  /// Creates a new [AzStackHCIFabricModelCustomPropertiesResponse].
  /// [applianceName] Gets or sets the Appliance name.
  /// [azStackHciSiteId] Gets or sets the ARM Id of the AzStackHCI site.
  /// [cluster] AzStackHCI cluster properties.
  /// [fabricContainerId] Gets or sets the fabric container Id.
  /// [fabricResourceId] Gets or sets the fabric resource Id.
  /// [instanceType] Gets or sets the instance type.
  /// [migrationHubUri] Gets or sets the migration hub Uri.
  /// [migrationSolutionId] Gets or sets the Migration solution ARM Id.
  AzStackHCIFabricModelCustomPropertiesResponse({
    required this.applianceName,
    required this.azStackHciSiteId,
    required this.cluster,
    required this.fabricContainerId,
    required this.fabricResourceId,
    required this.instanceType,
    required this.migrationHubUri,
    required this.migrationSolutionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applianceName': applianceName,
      'azStackHciSiteId': azStackHciSiteId,
      'cluster': pulumi.Input.mapInputValue<AzStackHCIClusterPropertiesResponse, Map<String, dynamic>>(cluster, (value) => value.toMap()),
      'fabricContainerId': fabricContainerId,
      'fabricResourceId': fabricResourceId,
      'instanceType': instanceType,
      'migrationHubUri': migrationHubUri,
      'migrationSolutionId': migrationSolutionId,
    };
  }

  factory AzStackHCIFabricModelCustomPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AzStackHCIFabricModelCustomPropertiesResponse(
      applianceName: ((map['applianceName'] as List).cast<String>()).input(),
      azStackHciSiteId: (map['azStackHciSiteId'] as String).input(),
      cluster: (AzStackHCIClusterPropertiesResponse.fromMap((map['cluster'] as Map).cast<String, dynamic>())).input(),
      fabricContainerId: (map['fabricContainerId'] as String).input(),
      fabricResourceId: (map['fabricResourceId'] as String).input(),
      instanceType: (map['instanceType'] as String).input(),
      migrationHubUri: (map['migrationHubUri'] as String).input(),
      migrationSolutionId: (map['migrationSolutionId'] as String).input(),
    );
  }
}

