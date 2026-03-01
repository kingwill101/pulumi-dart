// ignore_for_file: unused_element, unnecessary_cast


class GetClustersClusterInstanceModel {
  /// The health status of the instance.
  final String healthStatus;
  /// (Deprecated from version 1.232.0)
  final String instanceType;
  /// The public IP address.
  final String internetIp;
  /// The IP address of the instance.
  final String ip;
  /// The name of the pod.
  final String podName;
  /// The role.
  final String role;
  /// The single-thread IP address.
  final String singleTunnelVip;
  /// (Deprecated from version 1.232.0)
  final String vip;

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
      healthStatus: map['healthStatus'] as String,
      instanceType: map['instanceType'] as String,
      internetIp: map['internetIp'] as String,
      ip: map['ip'] as String,
      podName: map['podName'] as String,
      role: map['role'] as String,
      singleTunnelVip: map['singleTunnelVip'] as String,
      vip: map['vip'] as String,
    );
  }
}

