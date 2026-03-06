// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EventTargetEcsTargetNetworkConfiguration {
  /// Assign a public IP address to the ENI (Fargate launch type only). Valid values are `true` or `false`. Defaults to `false`.
  ///
  /// For more information, see [Task Networking](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-networking.html)
  final pulumi.Input<bool>? assignPublicIp;
  /// The security groups associated with the task or service. If you do not specify a security group, the default security group for the VPC is used.
  final pulumi.Input<List<String>>? securityGroups;
  /// The subnets associated with the task or service.
  final pulumi.Input<List<String>> subnets;

  /// Creates a new [EventTargetEcsTargetNetworkConfiguration].
  /// [assignPublicIp] Assign a public IP address to the ENI (Fargate launch type only). Valid values are `true` or `false`. Defaults to `false`.
  /// [securityGroups] The security groups associated with the task or service. If you do not specify a security group, the default security group for the VPC is used.
  /// [subnets] The subnets associated with the task or service.
  const EventTargetEcsTargetNetworkConfiguration({
    this.assignPublicIp,
    this.securityGroups,
    required this.subnets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assignPublicIp': ?assignPublicIp,
      'securityGroups': ?securityGroups,
      'subnets': subnets,
    };
  }

  factory EventTargetEcsTargetNetworkConfiguration.fromMap(Map<String, dynamic> map) {
    return EventTargetEcsTargetNetworkConfiguration(
      assignPublicIp: (() { final guardedValue = map['assignPublicIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      securityGroups: (() { final guardedValue = map['securityGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      subnets: pulumi.Input.fromValue((map['subnets'] as List).cast<String>()),
    );
  }
}

