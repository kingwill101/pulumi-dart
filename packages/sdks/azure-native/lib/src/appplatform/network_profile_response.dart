// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ingress_config_response.dart';
import 'network_profile_response_outbound_ips.dart';
import 'required_traffic_response.dart';

/// Service network profile payload
class NetworkProfileResponse {
  /// Name of the resource group containing network resources for customer apps in Azure Spring Apps
  final pulumi.Input<String>? appNetworkResourceGroup;
  /// Fully qualified resource Id of the subnet to host customer apps in Azure Spring Apps
  final pulumi.Input<String>? appSubnetId;
  /// Ingress configuration payload for Azure Spring Apps resource.
  final pulumi.Input<IngressConfigResponse>? ingressConfig;
  /// Desired outbound IP resources for Azure Spring Apps resource.
  final pulumi.Input<NetworkProfileResponseOutboundIPs> outboundIPs;
  /// The egress traffic type of Azure Spring Apps VNet instances.
  final pulumi.Input<String>? outboundType;
  /// Required inbound or outbound traffics for Azure Spring Apps resource.
  final pulumi.Input<List<RequiredTrafficResponse>> requiredTraffics;
  /// Azure Spring Apps service reserved CIDR
  final pulumi.Input<String>? serviceCidr;
  /// Name of the resource group containing network resources of Azure Spring Apps Service Runtime
  final pulumi.Input<String>? serviceRuntimeNetworkResourceGroup;
  /// Fully qualified resource Id of the subnet to host Azure Spring Apps Service Runtime
  final pulumi.Input<String>? serviceRuntimeSubnetId;

  /// Creates a new [NetworkProfileResponse].
  /// [appNetworkResourceGroup] Name of the resource group containing network resources for customer apps in Azure Spring Apps
  /// [appSubnetId] Fully qualified resource Id of the subnet to host customer apps in Azure Spring Apps
  /// [ingressConfig] Ingress configuration payload for Azure Spring Apps resource.
  /// [outboundIPs] Desired outbound IP resources for Azure Spring Apps resource.
  /// [outboundType] The egress traffic type of Azure Spring Apps VNet instances.
  /// [requiredTraffics] Required inbound or outbound traffics for Azure Spring Apps resource.
  /// [serviceCidr] Azure Spring Apps service reserved CIDR
  /// [serviceRuntimeNetworkResourceGroup] Name of the resource group containing network resources of Azure Spring Apps Service Runtime
  /// [serviceRuntimeSubnetId] Fully qualified resource Id of the subnet to host Azure Spring Apps Service Runtime
  const NetworkProfileResponse({
    this.appNetworkResourceGroup,
    this.appSubnetId,
    this.ingressConfig,
    required this.outboundIPs,
    this.outboundType,
    required this.requiredTraffics,
    this.serviceCidr,
    this.serviceRuntimeNetworkResourceGroup,
    this.serviceRuntimeSubnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appNetworkResourceGroup': ?appNetworkResourceGroup,
      'appSubnetId': ?appSubnetId,
      'ingressConfig': ?pulumi.Input.mapOptionalInputValue<IngressConfigResponse, Map<String, dynamic>>(ingressConfig, (value) => value.toMap()),
      'outboundIPs': pulumi.Input.mapInputValue<NetworkProfileResponseOutboundIPs, Map<String, dynamic>>(outboundIPs, (value) => value.toMap()),
      'outboundType': ?outboundType,
      'requiredTraffics': pulumi.Input.mapInputValue<List<RequiredTrafficResponse>, List<Map<String, dynamic>>>(requiredTraffics, (value) => pulumi.Input.encodeList<RequiredTrafficResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'serviceCidr': ?serviceCidr,
      'serviceRuntimeNetworkResourceGroup': ?serviceRuntimeNetworkResourceGroup,
      'serviceRuntimeSubnetId': ?serviceRuntimeSubnetId,
    };
  }

  factory NetworkProfileResponse.fromMap(Map<String, dynamic> map) {
    return NetworkProfileResponse(
      appNetworkResourceGroup: (() { final guardedValue = map['appNetworkResourceGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      appSubnetId: (() { final guardedValue = map['appSubnetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ingressConfig: (() { final guardedValue = map['ingressConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IngressConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      outboundIPs: pulumi.Input.fromValue(NetworkProfileResponseOutboundIPs.fromMap((map['outboundIPs']! as Map).cast<String, dynamic>())),
      outboundType: (() { final guardedValue = map['outboundType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requiredTraffics: pulumi.Input.fromValue(pulumi.Input.decodeList<RequiredTrafficResponse>(map['requiredTraffics']!, (value) => RequiredTrafficResponse.fromMap((value as Map).cast<String, dynamic>()))),
      serviceCidr: (() { final guardedValue = map['serviceCidr']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceRuntimeNetworkResourceGroup: (() { final guardedValue = map['serviceRuntimeNetworkResourceGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceRuntimeSubnetId: (() { final guardedValue = map['serviceRuntimeSubnetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

