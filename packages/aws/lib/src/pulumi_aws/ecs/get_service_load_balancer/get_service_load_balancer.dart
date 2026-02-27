// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_service_load_balancer_advanced_configuration/get_service_load_balancer_advanced_configuration.dart';

class GetServiceLoadBalancer {
  /// Settings for Blue/Green deployment. See `advanced_configuration` Block for details.
  final List<GetServiceLoadBalancerAdvancedConfiguration>
      advancedConfigurations;

  /// Name of the container to associate with the load balancer.
  final String containerName;

  /// Port on the container to associate with the load balancer.
  final int containerPort;

  /// Name of the load balancer.
  final String elbName;

  /// ARN of the target group to associate with the load balancer.
  final String targetGroupArn;

  GetServiceLoadBalancer({
    required this.advancedConfigurations,
    required this.containerName,
    required this.containerPort,
    required this.elbName,
    required this.targetGroupArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['advancedConfigurations'] = Input.encodeList<
        GetServiceLoadBalancerAdvancedConfiguration,
        Map<String, dynamic>>(advancedConfigurations, (value) => value.toMap());
    map['containerName'] = containerName;
    map['containerPort'] = containerPort;
    map['elbName'] = elbName;
    map['targetGroupArn'] = targetGroupArn;
    return map;
  }

  factory GetServiceLoadBalancer.fromMap(Map<String, dynamic> map) {
    return GetServiceLoadBalancer(
      advancedConfigurations:
          Input.decodeList<GetServiceLoadBalancerAdvancedConfiguration>(
              map['advancedConfigurations'],
              (value) => GetServiceLoadBalancerAdvancedConfiguration.fromMap(
                  (value as Map).cast<String, dynamic>())),
      containerName: map['containerName'] as String,
      containerPort: map['containerPort'] as int,
      elbName: map['elbName'] as String,
      targetGroupArn: map['targetGroupArn'] as String,
    );
  }
}
