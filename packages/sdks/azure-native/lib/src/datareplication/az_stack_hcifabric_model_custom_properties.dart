// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'az_stack_hcicluster_properties.dart';

/// AzStackHCI fabric model custom properties.
class AzStackHCIFabricModelCustomProperties {
  /// Gets or sets the ARM Id of the AzStackHCI site.
  final pulumi.Input<String> azStackHciSiteId;
  /// AzStackHCI cluster properties.
  final pulumi.Input<AzStackHCIClusterProperties> cluster;
  /// Gets or sets the instance type.
  /// Expected value is 'AzStackHCI'.
  final pulumi.Input<String> instanceType;
  /// Gets or sets the Migration solution ARM Id.
  final pulumi.Input<String> migrationSolutionId;

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
      'cluster': pulumi.Input.mapInputValue<AzStackHCIClusterProperties, Map<String, dynamic>>(cluster, (value) => value.toMap()),
      'instanceType': instanceType,
      'migrationSolutionId': migrationSolutionId,
    };
  }

  factory AzStackHCIFabricModelCustomProperties.fromMap(Map<String, dynamic> map) {
    return AzStackHCIFabricModelCustomProperties(
      azStackHciSiteId: (map['azStackHciSiteId'] as String).input(),
      cluster: (AzStackHCIClusterProperties.fromMap((map['cluster'] as Map).cast<String, dynamic>())).input(),
      instanceType: (map['instanceType'] as String).input(),
      migrationSolutionId: (map['migrationSolutionId'] as String).input(),
    );
  }
}

