// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClustersClusterInstanceModel {
  /// The health status of the instance.
  final pulumi.Input<String> healthStatus;
  /// (Deprecated from version 1.232.0)
  final pulumi.Input<String> instanceType;
  /// The public IP address.
  final pulumi.Input<String> internetIp;
  /// The IP address of the instance.
  final pulumi.Input<String> ip;
  /// The name of the pod.
  final pulumi.Input<String> podName;
  /// The role.
  final pulumi.Input<String> role;
  /// The single-thread IP address.
  final pulumi.Input<String> singleTunnelVip;
  /// (Deprecated from version 1.232.0)
  final pulumi.Input<String> vip;

  /// Creates a new [GetClustersClusterInstanceModel].
  /// [healthStatus] The health status of the instance.
  /// [instanceType] (Deprecated from version 1.232.0)
  /// [internetIp] The public IP address.
  /// [ip] The IP address of the instance.
  /// [podName] The name of the pod.
  /// [role] The role.
  /// [singleTunnelVip] The single-thread IP address.
  /// [vip] (Deprecated from version 1.232.0)
  GetClustersClusterInstanceModel({
    required this.healthStatus,
    required this.instanceType,
    required this.internetIp,
    required this.ip,
    required this.podName,
    required this.role,
    required this.singleTunnelVip,
    required this.vip,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'healthStatus': healthStatus,
      'instanceType': instanceType,
      'internetIp': internetIp,
      'ip': ip,
      'podName': podName,
      'role': role,
      'singleTunnelVip': singleTunnelVip,
      'vip': vip,
    };
  }

  factory GetClustersClusterInstanceModel.fromMap(Map<String, dynamic> map) {
    return GetClustersClusterInstanceModel(
      healthStatus: pulumi.Input.fromValue(map['healthStatus'] as String),
      instanceType: pulumi.Input.fromValue(map['instanceType'] as String),
      internetIp: pulumi.Input.fromValue(map['internetIp'] as String),
      ip: pulumi.Input.fromValue(map['ip'] as String),
      podName: pulumi.Input.fromValue(map['podName'] as String),
      role: pulumi.Input.fromValue(map['role'] as String),
      singleTunnelVip: pulumi.Input.fromValue(map['singleTunnelVip'] as String),
      vip: pulumi.Input.fromValue(map['vip'] as String),
    );
  }
}

