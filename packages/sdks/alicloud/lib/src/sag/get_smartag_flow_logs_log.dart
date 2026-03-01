// ignore_for_file: unused_element, unnecessary_cast


class GetSmartagFlowLogsLog {
  /// The time interval at which log data of active connections is collected. Valid values: 60 to 6000. Default value: 300. Unit: second.
  final int activeAging;
  /// The description of the flow log.
  final String description;
  /// The ID of the flow log.
  final String flowLogId;
  /// The name of the flow log.
  final String flowLogName;
  /// The ID of the Flow Log.
  final String id;
  /// The time interval at which log data of inactive connections is connected. Valid values: 10 to 600. Default value: 15. Unit: second.
  final int inactiveAging;
  /// The name of the Log Service Logstore.
  final String logstoreName;
  /// The IP address of the NetFlow collector where the flow log is stored.
  final String netflowServerIp;
  /// The port of the NetFlow collector. Default value: 9995.
  final int netflowServerPort;
  /// The NetFlow version. Default value: V9.
  final String netflowVersion;
  /// The location where the flow log is stored. Valid values:  sls: The flow log is stored in Log Service. netflow: The flow log is stored on a NetFlow collector. all: The flow log is stored both in Log Service and on a NetFlow collector.
  final String outputType;
  /// The name of the Log Service project.
  final String projectName;
  /// The ID of the resource group.
  final String resourceGroupId;
  /// The ID of the region where Log Service is deployed.
  final String slsRegionId;
  /// The status of the flow log. Valid values:  `Active`: The flow log is enabled. `Inactive`: The flow log is disabled.
  final String status;
  /// The number of Smart Access gateway (SAG) instances with which the flow log is associated.
  final int totalSagNum;

  /// Creates a new [GetSmartagFlowLogsLog].
  /// [activeAging] The time interval at which log data of active connections is collected. Valid values: 60 to 6000. Default value: 300. Unit: second.
  /// [description] The description of the flow log.
  /// [flowLogId] The ID of the flow log.
  /// [flowLogName] The name of the flow log.
  /// [id] The ID of the Flow Log.
  /// [inactiveAging] The time interval at which log data of inactive connections is connected. Valid values: 10 to 600. Default value: 15. Unit: second.
  /// [logstoreName] The name of the Log Service Logstore.
  /// [netflowServerIp] The IP address of the NetFlow collector where the flow log is stored.
  /// [netflowServerPort] The port of the NetFlow collector. Default value: 9995.
  /// [netflowVersion] The NetFlow version. Default value: V9.
  /// [outputType] The location where the flow log is stored. Valid values:  sls: The flow log is stored in Log Service. netflow: The flow log is stored on a NetFlow collector. all: The flow log is stored both in Log Service and on a NetFlow collector.
  /// [projectName] The name of the Log Service project.
  /// [resourceGroupId] The ID of the resource group.
  /// [slsRegionId] The ID of the region where Log Service is deployed.
  /// [status] The status of the flow log. Valid values:  `Active`: The flow log is enabled. `Inactive`: The flow log is disabled.
  /// [totalSagNum] The number of Smart Access gateway (SAG) instances with which the flow log is associated.
  GetSmartagFlowLogsLog({
    required this.activeAging,
    required this.description,
    required this.flowLogId,
    required this.flowLogName,
    required this.id,
    required this.inactiveAging,
    required this.logstoreName,
    required this.netflowServerIp,
    required this.netflowServerPort,
    required this.netflowVersion,
    required this.outputType,
    required this.projectName,
    required this.resourceGroupId,
    required this.slsRegionId,
    required this.status,
    required this.totalSagNum,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeAging': activeAging,
      'description': description,
      'flowLogId': flowLogId,
      'flowLogName': flowLogName,
      'id': id,
      'inactiveAging': inactiveAging,
      'logstoreName': logstoreName,
      'netflowServerIp': netflowServerIp,
      'netflowServerPort': netflowServerPort,
      'netflowVersion': netflowVersion,
      'outputType': outputType,
      'projectName': projectName,
      'resourceGroupId': resourceGroupId,
      'slsRegionId': slsRegionId,
      'status': status,
      'totalSagNum': totalSagNum,
    };
  }

  factory GetSmartagFlowLogsLog.fromMap(Map<String, dynamic> map) {
    return GetSmartagFlowLogsLog(
      activeAging: map['activeAging'] as int,
      description: map['description'] as String,
      flowLogId: map['flowLogId'] as String,
      flowLogName: map['flowLogName'] as String,
      id: map['id'] as String,
      inactiveAging: map['inactiveAging'] as int,
      logstoreName: map['logstoreName'] as String,
      netflowServerIp: map['netflowServerIp'] as String,
      netflowServerPort: map['netflowServerPort'] as int,
      netflowVersion: map['netflowVersion'] as String,
      outputType: map['outputType'] as String,
      projectName: map['projectName'] as String,
      resourceGroupId: map['resourceGroupId'] as String,
      slsRegionId: map['slsRegionId'] as String,
      status: map['status'] as String,
      totalSagNum: map['totalSagNum'] as int,
    );
  }
}

