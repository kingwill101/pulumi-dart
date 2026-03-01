// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'load_balancer_configuration_response.dart';
import 'sub_resource_response.dart';

/// Network Profile for the cloud service.
class CloudServiceNetworkProfileResponse {
  /// List of Load balancer configurations. Cloud service can have up to two load balancer configurations, corresponding to a Public Load Balancer and an Internal Load Balancer.
  final List<LoadBalancerConfigurationResponse>? loadBalancerConfigurations;
  /// Slot type for the cloud service.
  /// Possible values are <br /><br />**Production**<br /><br />**Staging**<br /><br />
  /// If not specified, the default value is Production.
  final String? slotType;
  /// The id reference of the cloud service containing the target IP with which the subject cloud service can perform a swap. This property cannot be updated once it is set. The swappable cloud service referred by this id must be present otherwise an error will be thrown.
  final SubResourceResponse? swappableCloudService;

  /// Creates a new [CloudServiceNetworkProfileResponse].
  /// [loadBalancerConfigurations] List of Load balancer configurations. Cloud service can have up to two load balancer configurations, corresponding to a Public Load Balancer and an Internal Load Balancer.
  /// [slotType] Slot type for the cloud service.
  /// [swappableCloudService] The id reference of the cloud service containing the target IP with which the subject cloud service can perform a swap. This property cannot be updated once it is set. The swappable cloud service referred by this id must be present otherwise an error will be thrown.
  CloudServiceNetworkProfileResponse({
    this.loadBalancerConfigurations,
    this.slotType,
    this.swappableCloudService,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'loadBalancerConfigurations': ?loadBalancerConfigurations == null ? null : pulumi.Input.encodeList<LoadBalancerConfigurationResponse, Map<String, dynamic>>(loadBalancerConfigurations!, (value) => value.toMap()),
      'slotType': ?slotType,
      'swappableCloudService': ?swappableCloudService == null ? null : swappableCloudService!.toMap(),
    };
  }

  factory CloudServiceNetworkProfileResponse.fromMap(Map<String, dynamic> map) {
    return CloudServiceNetworkProfileResponse(
      loadBalancerConfigurations: map['loadBalancerConfigurations'] == null ? null : pulumi.Input.decodeList<LoadBalancerConfigurationResponse>(map['loadBalancerConfigurations'], (value) => LoadBalancerConfigurationResponse.fromMap((value as Map).cast<String, dynamic>())),
      slotType: map['slotType'] == null ? null : map['slotType'] as String,
      swappableCloudService: map['swappableCloudService'] == null ? null : SubResourceResponse.fromMap((map['swappableCloudService'] as Map).cast<String, dynamic>()),
    );
  }
}

