// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_load_balancer_advanced_configuration.dart';

class GetServiceLoadBalancer {
  /// Settings for Blue/Green deployment. See `advanced_configuration` Block for details.
  final pulumi.Input<List<GetServiceLoadBalancerAdvancedConfiguration>>
  advancedConfigurations;

  /// Name of the container to associate with the load balancer.
  final pulumi.Input<String> containerName;

  /// Port on the container to associate with the load balancer.
  final pulumi.Input<int> containerPort;

  /// Name of the load balancer.
  final pulumi.Input<String> elbName;

  /// ARN of the target group to associate with the load balancer.
  final pulumi.Input<String> targetGroupArn;

  /// Creates a new [GetServiceLoadBalancer].
  /// [advancedConfigurations] Settings for Blue/Green deployment. See `advanced_configuration` Block for details.
  /// [containerName] Name of the container to associate with the load balancer.
  /// [containerPort] Port on the container to associate with the load balancer.
  /// [elbName] Name of the load balancer.
  /// [targetGroupArn] ARN of the target group to associate with the load balancer.
  GetServiceLoadBalancer({
    required this.advancedConfigurations,
    required this.containerName,
    required this.containerPort,
    required this.elbName,
    required this.targetGroupArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advancedConfigurations':
          pulumi.Input.mapInputValue<
            List<GetServiceLoadBalancerAdvancedConfiguration>,
            List<Map<String, dynamic>>
          >(
            advancedConfigurations,
            (value) =>
                pulumi.Input.encodeList<
                  GetServiceLoadBalancerAdvancedConfiguration,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'containerName': containerName,
      'containerPort': containerPort,
      'elbName': elbName,
      'targetGroupArn': targetGroupArn,
    };
  }

  factory GetServiceLoadBalancer.fromMap(Map<String, dynamic> map) {
    return GetServiceLoadBalancer(
      advancedConfigurations: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetServiceLoadBalancerAdvancedConfiguration>(
          map['advancedConfigurations']!,
          (value) => GetServiceLoadBalancerAdvancedConfiguration.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      containerName: pulumi.Input.fromValue(map['containerName'] as String),
      containerPort: pulumi.Input.fromValue(map['containerPort'] as int),
      elbName: pulumi.Input.fromValue(map['elbName'] as String),
      targetGroupArn: pulumi.Input.fromValue(map['targetGroupArn'] as String),
    );
  }
}
