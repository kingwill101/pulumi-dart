// ignore_for_file: unused_element, unnecessary_cast

class MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionNetworkConfigVpcConfig {
  /// VPC security group IDs.
  final List<String> securityGroupIds;

  /// Subnet IDs.
  final List<String> subnets;

  /// Creates a new [MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionNetworkConfigVpcConfig].
  /// [securityGroupIds] VPC security group IDs.
  /// [subnets] Subnet IDs.
  MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionNetworkConfigVpcConfig({
    required this.securityGroupIds,
    required this.subnets,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['securityGroupIds'] = securityGroupIds;
    map['subnets'] = subnets;
    return map;
  }

  factory MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionNetworkConfigVpcConfig.fromMap(
      Map<String, dynamic> map) {
    return MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionNetworkConfigVpcConfig(
      securityGroupIds: (map['securityGroupIds'] as List).cast<String>(),
      subnets: (map['subnets'] as List).cast<String>(),
    );
  }
}
