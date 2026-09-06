// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of a migrate project.
class MigrateProjectProperties {
  /// Provisioning state of the migrate project.
  final pulumi.Input<dynamic>? provisioningState;
  /// Gets or sets the state of public network access.
  final pulumi.Input<String?>? publicNetworkAccess;
  /// Gets or sets the list of tools registered with the migrate project.
  final pulumi.Input<List<String>?>? registeredTools;
  /// Service endpoint.
  final pulumi.Input<String?>? serviceEndpoint;
  /// Utility storage account id.
  final pulumi.Input<String?>? utilityStorageAccountId;

  /// Creates a new [MigrateProjectProperties].
  /// [provisioningState] Provisioning state of the migrate project.
  /// [publicNetworkAccess] Gets or sets the state of public network access.
  /// [registeredTools] Gets or sets the list of tools registered with the migrate project.
  /// [serviceEndpoint] Service endpoint.
  /// [utilityStorageAccountId] Utility storage account id.
  const MigrateProjectProperties({
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
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      publicNetworkAccess: (() { final guardedValue = map['publicNetworkAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      registeredTools: (() { final guardedValue = map['registeredTools']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      serviceEndpoint: (() { final guardedValue = map['serviceEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      utilityStorageAccountId: (() { final guardedValue = map['utilityStorageAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
