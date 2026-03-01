// ignore_for_file: unused_element, unnecessary_cast

import 'az_stack_hcicluster_properties.dart';

/// AzStackHCI fabric model custom properties.
class AzStackHCIFabricModelCustomProperties {
  /// Gets or sets the ARM Id of the AzStackHCI site.
  final String azStackHciSiteId;
  /// AzStackHCI cluster properties.
  final AzStackHCIClusterProperties cluster;
  /// Gets or sets the instance type.
  /// Expected value is 'AzStackHCI'.
  final String instanceType;
  /// Gets or sets the Migration solution ARM Id.
  final String migrationSolutionId;

  /// Creates a new [AzStackHCIFabricModelCustomProperties].
  /// [azStackHciSiteId] Gets or sets the ARM Id of the AzStackHCI site.
  /// [cluster] AzStackHCI cluster properties.
  /// [instanceType] Gets or sets the instance type.
  /// [migrationSolutionId] Gets or sets the Migration solution ARM Id.
  AzStackHCIFabricModelCustomProperties({
    required this.azStackHciSiteId,
    required this.cluster,
    required this.instanceType,
    required this.migrationSolutionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azStackHciSiteId': azStackHciSiteId,
      'cluster': cluster.toMap(),
      'instanceType': instanceType,
      'migrationSolutionId': migrationSolutionId,
    };
  }

  factory AzStackHCIFabricModelCustomProperties.fromMap(Map<String, dynamic> map) {
    return AzStackHCIFabricModelCustomProperties(
      azStackHciSiteId: map['azStackHciSiteId'] as String,
      cluster: AzStackHCIClusterProperties.fromMap((map['cluster'] as Map).cast<String, dynamic>()),
      instanceType: map['instanceType'] as String,
      migrationSolutionId: map['migrationSolutionId'] as String,
    );
  }
}

