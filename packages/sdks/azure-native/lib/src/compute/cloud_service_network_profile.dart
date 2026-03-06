// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'load_balancer_configuration.dart';
import 'sub_resource.dart';

/// Network Profile for the cloud service.
class CloudServiceNetworkProfile {
  /// List of Load balancer configurations. Cloud service can have up to two load balancer configurations, corresponding to a Public Load Balancer and an Internal Load Balancer.
  final pulumi.Input<List<LoadBalancerConfiguration>>? loadBalancerConfigurations;
  /// Slot type for the cloud service.
  /// Possible values are &lt;br /&gt;&lt;br /&gt;**Production**&lt;br /&gt;&lt;br /&gt;**Staging**&lt;br /&gt;&lt;br /&gt;
  /// If not specified, the default value is Production.
  final pulumi.Input<String>? slotType;
  /// The id reference of the cloud service containing the target IP with which the subject cloud service can perform a swap. This property cannot be updated once it is set. The swappable cloud service referred by this id must be present otherwise an error will be thrown.
  final pulumi.Input<SubResource>? swappableCloudService;

  /// Creates a new [CloudServiceNetworkProfile].
  /// [loadBalancerConfigurations] List of Load balancer configurations. Cloud service can have up to two load balancer configurations, corresponding to a Public Load Balancer and an Internal Load Balancer.
  /// [slotType] Slot type for the cloud service.
  /// [swappableCloudService] The id reference of the cloud service containing the target IP with which the subject cloud service can perform a swap. This property cannot be updated once it is set. The swappable cloud service referred by this id must be present otherwise an error will be thrown.
  const CloudServiceNetworkProfile({
    this.loadBalancerConfigurations,
    this.slotType,
    this.swappableCloudService,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'loadBalancerConfigurations': ?pulumi.Input.mapOptionalInputValue<List<LoadBalancerConfiguration>, List<Map<String, dynamic>>>(loadBalancerConfigurations, (value) => pulumi.Input.encodeList<LoadBalancerConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'slotType': ?slotType,
      'swappableCloudService': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(swappableCloudService, (value) => value.toMap()),
    };
  }

  factory CloudServiceNetworkProfile.fromMap(Map<String, dynamic> map) {
    return CloudServiceNetworkProfile(
      loadBalancerConfigurations: (() { final guardedValue = map['loadBalancerConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<LoadBalancerConfiguration>(guardedValue, (value) => LoadBalancerConfiguration.fromMap((value as Map).cast<String, dynamic>()))); })(),
      slotType: (() { final guardedValue = map['slotType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      swappableCloudService: (() { final guardedValue = map['swappableCloudService']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

