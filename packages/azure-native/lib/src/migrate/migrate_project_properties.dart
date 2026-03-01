// ignore_for_file: unused_element, unnecessary_cast


/// Properties of a migrate project.
class MigrateProjectProperties {
  /// Provisioning state of the migrate project.
  final String? provisioningState;
  /// Gets or sets the state of public network access.
  final String? publicNetworkAccess;
  /// Gets or sets the list of tools registered with the migrate project.
  final List<String>? registeredTools;
  /// Service endpoint.
  final String? serviceEndpoint;
  /// Utility storage account id.
  final String? utilityStorageAccountId;

  /// Creates a new [MigrateProjectProperties].
  /// [provisioningState] Provisioning state of the migrate project.
  /// [publicNetworkAccess] Gets or sets the state of public network access.
  /// [registeredTools] Gets or sets the list of tools registered with the migrate project.
  /// [serviceEndpoint] Service endpoint.
  /// [utilityStorageAccountId] Utility storage account id.
  MigrateProjectProperties({
    this.provisioningState,
    this.publicNetworkAccess,
    this.registeredTools,
    this.serviceEndpoint,
    this.utilityStorageAccountId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'provisioningState': ?provisioningState,
      'publicNetworkAccess': ?publicNetworkAccess,
      'registeredTools': ?registeredTools,
      'serviceEndpoint': ?serviceEndpoint,
      'utilityStorageAccountId': ?utilityStorageAccountId,
    };
  }

  factory MigrateProjectProperties.fromMap(Map<String, dynamic> map) {
    return MigrateProjectProperties(
      provisioningState: map['provisioningState'] == null ? null : map['provisioningState'] as String,
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : map['publicNetworkAccess'] as String,
      registeredTools: map['registeredTools'] == null ? null : (map['registeredTools'] as List).cast<String>(),
      serviceEndpoint: map['serviceEndpoint'] == null ? null : map['serviceEndpoint'] as String,
      utilityStorageAccountId: map['utilityStorageAccountId'] == null ? null : map['utilityStorageAccountId'] as String,
    );
  }
}

