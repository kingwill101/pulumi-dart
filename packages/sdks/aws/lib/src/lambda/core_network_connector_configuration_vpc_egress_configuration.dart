// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CoreNetworkConnectorConfigurationVpcEgressConfiguration {
  /// Compute resource types that may use this connector. Valid values: `MicroVm`.
  final pulumi.Input<List<String>> associatedComputeResourceTypes;
  /// Network protocol. Valid values: `IPv4`, `DualStack`.
  final pulumi.Input<String>? networkProtocol;
  /// Set of security group IDs applied to the connector's ENIs.
  final pulumi.Input<List<String>> securityGroupIds;
  /// Set of subnet IDs where the connector provisions its ENIs.
  final pulumi.Input<List<String>> subnetIds;

  /// Creates a new [CoreNetworkConnectorConfigurationVpcEgressConfiguration].
  /// [associatedComputeResourceTypes] Compute resource types that may use this connector. Valid values: `MicroVm`.
  /// [networkProtocol] Network protocol. Valid values: `IPv4`, `DualStack`.
  /// [securityGroupIds] Set of security group IDs applied to the connector's ENIs.
  /// [subnetIds] Set of subnet IDs where the connector provisions its ENIs.
  const CoreNetworkConnectorConfigurationVpcEgressConfiguration({
    required this.associatedComputeResourceTypes,
    this.networkProtocol,
    required this.securityGroupIds,
    required this.subnetIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'associatedComputeResourceTypes': associatedComputeResourceTypes,
      'networkProtocol': ?networkProtocol,
      'securityGroupIds': securityGroupIds,
      'subnetIds': subnetIds,
    };
  }

  factory CoreNetworkConnectorConfigurationVpcEgressConfiguration.fromMap(Map<String, dynamic> map) {
    return CoreNetworkConnectorConfigurationVpcEgressConfiguration(
      associatedComputeResourceTypes: pulumi.Input.fromValue((map['associatedComputeResourceTypes'] as List).cast<String>()),
      networkProtocol: (() { final guardedValue = map['networkProtocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityGroupIds: pulumi.Input.fromValue((map['securityGroupIds'] as List).cast<String>()),
      subnetIds: pulumi.Input.fromValue((map['subnetIds'] as List).cast<String>()),
    );
  }
}
