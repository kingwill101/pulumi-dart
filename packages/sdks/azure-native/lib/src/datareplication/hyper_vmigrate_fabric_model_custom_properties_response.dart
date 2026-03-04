// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// HyperV migrate fabric model custom properties.
class HyperVMigrateFabricModelCustomPropertiesResponse {
  /// Gets or sets the fabric container Id.
  final pulumi.Input<String> fabricContainerId;

  /// Gets or sets the fabric resource Id.
  final pulumi.Input<String> fabricResourceId;

  /// Gets or sets the ARM Id of the HyperV site.
  final pulumi.Input<String> hyperVSiteId;

  /// Gets or sets the instance type.
  /// Expected value is 'HyperVMigrate'.
  final pulumi.Input<String> instanceType;

  /// Gets or sets the migration hub Uri.
  final pulumi.Input<String> migrationHubUri;

  /// Gets or sets the migration solution ARM Id.
  final pulumi.Input<String> migrationSolutionId;

  /// Creates a new [HyperVMigrateFabricModelCustomPropertiesResponse].
  /// [fabricContainerId] Gets or sets the fabric container Id.
  /// [fabricResourceId] Gets or sets the fabric resource Id.
  /// [hyperVSiteId] Gets or sets the ARM Id of the HyperV site.
  /// [instanceType] Gets or sets the instance type.
  /// [migrationHubUri] Gets or sets the migration hub Uri.
  /// [migrationSolutionId] Gets or sets the migration solution ARM Id.
  HyperVMigrateFabricModelCustomPropertiesResponse({
    required this.fabricContainerId,
    required this.fabricResourceId,
    required this.hyperVSiteId,
    required this.instanceType,
    required this.migrationHubUri,
    required this.migrationSolutionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fabricContainerId': fabricContainerId,
      'fabricResourceId': fabricResourceId,
      'hyperVSiteId': hyperVSiteId,
      'instanceType': instanceType,
      'migrationHubUri': migrationHubUri,
      'migrationSolutionId': migrationSolutionId,
    };
  }

  factory HyperVMigrateFabricModelCustomPropertiesResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return HyperVMigrateFabricModelCustomPropertiesResponse(
      fabricContainerId: pulumi.Input.fromValue(
        map['fabricContainerId'] as String,
      ),
      fabricResourceId: pulumi.Input.fromValue(
        map['fabricResourceId'] as String,
      ),
      hyperVSiteId: pulumi.Input.fromValue(map['hyperVSiteId'] as String),
      instanceType: pulumi.Input.fromValue(map['instanceType'] as String),
      migrationHubUri: pulumi.Input.fromValue(map['migrationHubUri'] as String),
      migrationSolutionId: pulumi.Input.fromValue(
        map['migrationSolutionId'] as String,
      ),
    );
  }
}
