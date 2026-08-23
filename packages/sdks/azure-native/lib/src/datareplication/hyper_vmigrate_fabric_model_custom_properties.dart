// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// HyperV migrate fabric model custom properties.
class HyperVMigrateFabricModelCustomProperties {
  /// Gets or sets the ARM Id of the HyperV site.
  final pulumi.Input<String> hyperVSiteId;
  /// Gets or sets the instance type.
  /// Expected value is 'HyperVMigrate'.
  final pulumi.Input<String> instanceType;
  /// Gets or sets the migration solution ARM Id.
  final pulumi.Input<String> migrationSolutionId;

  /// Creates a new [HyperVMigrateFabricModelCustomProperties].
  /// [hyperVSiteId] Gets or sets the ARM Id of the HyperV site.
  /// [instanceType] Gets or sets the instance type.
  /// [migrationSolutionId] Gets or sets the migration solution ARM Id.
  const HyperVMigrateFabricModelCustomProperties({
    required this.hyperVSiteId,
    required this.instanceType,
    required this.migrationSolutionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hyperVSiteId': hyperVSiteId,
      'instanceType': instanceType,
      'migrationSolutionId': migrationSolutionId,
    };
  }

  factory HyperVMigrateFabricModelCustomProperties.fromMap(Map<String, dynamic> map) {
    return HyperVMigrateFabricModelCustomProperties(
      hyperVSiteId: pulumi.Input.fromValue(map['hyperVSiteId'] as String),
      instanceType: pulumi.Input.fromValue(map['instanceType'] as String),
      migrationSolutionId: pulumi.Input.fromValue(map['migrationSolutionId'] as String),
    );
  }
}
