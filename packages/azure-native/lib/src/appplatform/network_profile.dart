// ignore_for_file: unused_element, unnecessary_cast

import 'ingress_config.dart';

/// Service network profile payload
class NetworkProfile {
  /// Name of the resource group containing network resources for customer apps in Azure Spring Apps
  final String? appNetworkResourceGroup;
  /// Fully qualified resource Id of the subnet to host customer apps in Azure Spring Apps
  final String? appSubnetId;
  /// Ingress configuration payload for Azure Spring Apps resource.
  final IngressConfig? ingressConfig;
  /// The egress traffic type of Azure Spring Apps VNet instances.
  final String? outboundType;
  /// Azure Spring Apps service reserved CIDR
  final String? serviceCidr;
  /// Name of the resource group containing network resources of Azure Spring Apps Service Runtime
  final String? serviceRuntimeNetworkResourceGroup;
  /// Fully qualified resource Id of the subnet to host Azure Spring Apps Service Runtime
  final String? serviceRuntimeSubnetId;

  /// Creates a new [NetworkProfile].
  /// [appNetworkResourceGroup] Name of the resource group containing network resources for customer apps in Azure Spring Apps
  /// [appSubnetId] Fully qualified resource Id of the subnet to host customer apps in Azure Spring Apps
  /// [ingressConfig] Ingress configuration payload for Azure Spring Apps resource.
  /// [outboundType] The egress traffic type of Azure Spring Apps VNet instances.
  /// [serviceCidr] Azure Spring Apps service reserved CIDR
  /// [serviceRuntimeNetworkResourceGroup] Name of the resource group containing network resources of Azure Spring Apps Service Runtime
  /// [serviceRuntimeSubnetId] Fully qualified resource Id of the subnet to host Azure Spring Apps Service Runtime
  NetworkProfile({
    this.appNetworkResourceGroup,
    this.appSubnetId,
    this.ingressConfig,
    this.outboundType,
    this.serviceCidr,
    this.serviceRuntimeNetworkResourceGroup,
    this.serviceRuntimeSubnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appNetworkResourceGroup': ?appNetworkResourceGroup,
      'appSubnetId': ?appSubnetId,
      'ingressConfig': ?ingressConfig == null ? null : ingressConfig!.toMap(),
      'outboundType': ?outboundType,
      'serviceCidr': ?serviceCidr,
      'serviceRuntimeNetworkResourceGroup': ?serviceRuntimeNetworkResourceGroup,
      'serviceRuntimeSubnetId': ?serviceRuntimeSubnetId,
    };
  }

  factory NetworkProfile.fromMap(Map<String, dynamic> map) {
    return NetworkProfile(
      appNetworkResourceGroup: map['appNetworkResourceGroup'] == null ? null : map['appNetworkResourceGroup'] as String,
      appSubnetId: map['appSubnetId'] == null ? null : map['appSubnetId'] as String,
      ingressConfig: map['ingressConfig'] == null ? null : IngressConfig.fromMap((map['ingressConfig'] as Map).cast<String, dynamic>()),
      outboundType: map['outboundType'] == null ? null : map['outboundType'] as String,
      serviceCidr: map['serviceCidr'] == null ? null : map['serviceCidr'] as String,
      serviceRuntimeNetworkResourceGroup: map['serviceRuntimeNetworkResourceGroup'] == null ? null : map['serviceRuntimeNetworkResourceGroup'] as String,
      serviceRuntimeSubnetId: map['serviceRuntimeSubnetId'] == null ? null : map['serviceRuntimeSubnetId'] as String,
    );
  }
}

