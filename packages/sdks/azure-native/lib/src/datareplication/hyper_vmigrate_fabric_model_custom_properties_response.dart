// ignore_for_file: unused_element, unnecessary_cast


/// HyperV migrate fabric model custom properties.
class HyperVMigrateFabricModelCustomPropertiesResponse {
  /// Gets or sets the fabric container Id.
  final String fabricContainerId;
  /// Gets or sets the fabric resource Id.
  final String fabricResourceId;
  /// Gets or sets the ARM Id of the HyperV site.
  final String hyperVSiteId;
  /// Gets or sets the instance type.
  /// Expected value is 'HyperVMigrate'.
  final String instanceType;
  /// Gets or sets the migration hub Uri.
  final String migrationHubUri;
  /// Gets or sets the migration solution ARM Id.
  final String migrationSolutionId;

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

  factory HyperVMigrateFabricModelCustomPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return HyperVMigrateFabricModelCustomPropertiesResponse(
      fabricContainerId: map['fabricContainerId'] as String,
      fabricResourceId: map['fabricResourceId'] as String,
      hyperVSiteId: map['hyperVSiteId'] as String,
      instanceType: map['instanceType'] as String,
      migrationHubUri: map['migrationHubUri'] as String,
      migrationSolutionId: map['migrationSolutionId'] as String,
    );
  }
}

