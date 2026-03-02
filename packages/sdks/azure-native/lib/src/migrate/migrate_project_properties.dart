// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of a migrate project.
class MigrateProjectProperties {
  /// Provisioning state of the migrate project.
  final pulumi.Input<String>? provisioningState;
  /// Gets or sets the state of public network access.
  final pulumi.Input<String>? publicNetworkAccess;
  /// Gets or sets the list of tools registered with the migrate project.
  final pulumi.Input<List<String>>? registeredTools;
  /// Service endpoint.
  final pulumi.Input<String>? serviceEndpoint;
  /// Utility storage account id.
  final pulumi.Input<String>? utilityStorageAccountId;

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
      provisioningState: map['provisioningState'] == null ? null : (map['provisioningState']! as String).input(),
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : (map['publicNetworkAccess']! as String).input(),
      registeredTools: map['registeredTools'] == null ? null : ((map['registeredTools']! as List).cast<String>()).input(),
      serviceEndpoint: map['serviceEndpoint'] == null ? null : (map['serviceEndpoint']! as String).input(),
      utilityStorageAccountId: map['utilityStorageAccountId'] == null ? null : (map['utilityStorageAccountId']! as String).input(),
    );
  }
}

