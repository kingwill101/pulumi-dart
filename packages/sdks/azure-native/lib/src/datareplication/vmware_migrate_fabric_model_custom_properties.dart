// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// VMware migrate fabric model custom properties.
class VMwareMigrateFabricModelCustomProperties {
  /// Gets or sets the instance type.
  /// Expected value is 'VMwareMigrate'.
  final pulumi.Input<String> instanceType;
  /// Gets or sets the ARM Id of the migration solution.
  final pulumi.Input<String> migrationSolutionId;
  /// Gets or sets the ARM Id of the VMware site.
  final pulumi.Input<String> vmwareSiteId;

  /// Creates a new [VMwareMigrateFabricModelCustomProperties].
  /// [instanceType] Gets or sets the instance type.
  /// [migrationSolutionId] Gets or sets the ARM Id of the migration solution.
  /// [vmwareSiteId] Gets or sets the ARM Id of the VMware site.
  VMwareMigrateFabricModelCustomProperties({
    required this.instanceType,
    required this.migrationSolutionId,
    required this.vmwareSiteId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceType': instanceType,
      'migrationSolutionId': migrationSolutionId,
      'vmwareSiteId': vmwareSiteId,
    };
  }

  factory VMwareMigrateFabricModelCustomProperties.fromMap(Map<String, dynamic> map) {
    return VMwareMigrateFabricModelCustomProperties(
      instanceType: (map['instanceType'] as String).input(),
      migrationSolutionId: (map['migrationSolutionId'] as String).input(),
      vmwareSiteId: (map['vmwareSiteId'] as String).input(),
    );
  }
}

