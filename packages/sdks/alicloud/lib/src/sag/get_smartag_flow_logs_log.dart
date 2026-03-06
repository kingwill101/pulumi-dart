// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSmartagFlowLogsLog {
  /// The time interval at which log data of active connections is collected. Valid values: 60 to 6000. Default value: 300. Unit: second.
  final pulumi.Input<int> activeAging;
  /// The description of the flow log.
  final pulumi.Input<String> description;
  /// The ID of the flow log.
  final pulumi.Input<String> flowLogId;
  /// The name of the flow log.
  final pulumi.Input<String> flowLogName;
  /// The ID of the Flow Log.
  final pulumi.Input<String> id;
  /// The time interval at which log data of inactive connections is connected. Valid values: 10 to 600. Default value: 15. Unit: second.
  final pulumi.Input<int> inactiveAging;
  /// The name of the Log Service Logstore.
  final pulumi.Input<String> logstoreName;
  /// The IP address of the NetFlow collector where the flow log is stored.
  final pulumi.Input<String> netflowServerIp;
  /// The port of the NetFlow collector. Default value: 9995.
  final pulumi.Input<int> netflowServerPort;
  /// The NetFlow version. Default value: V9.
  final pulumi.Input<String> netflowVersion;
  /// The location where the flow log is stored. Valid values:  sls: The flow log is stored in Log Service. netflow: The flow log is stored on a NetFlow collector. all: The flow log is stored both in Log Service and on a NetFlow collector.
  final pulumi.Input<String> outputType;
  /// The name of the Log Service project.
  final pulumi.Input<String> projectName;
  /// The ID of the resource group.
  final pulumi.Input<String> resourceGroupId;
  /// The ID of the region where Log Service is deployed.
  final pulumi.Input<String> slsRegionId;
  /// The status of the flow log. Valid values:  `Active`: The flow log is enabled. `Inactive`: The flow log is disabled.
  final pulumi.Input<String> status;
  /// The number of Smart Access gateway (SAG) instances with which the flow log is associated.
  final pulumi.Input<int> totalSagNum;

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
  const GetSmartagFlowLogsLog({
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
      activeAging: pulumi.Input.fromValue(map['activeAging'] as int),
      description: pulumi.Input.fromValue(map['description'] as String),
      flowLogId: pulumi.Input.fromValue(map['flowLogId'] as String),
      flowLogName: pulumi.Input.fromValue(map['flowLogName'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      inactiveAging: pulumi.Input.fromValue(map['inactiveAging'] as int),
      logstoreName: pulumi.Input.fromValue(map['logstoreName'] as String),
      netflowServerIp: pulumi.Input.fromValue(map['netflowServerIp'] as String),
      netflowServerPort: pulumi.Input.fromValue(map['netflowServerPort'] as int),
      netflowVersion: pulumi.Input.fromValue(map['netflowVersion'] as String),
      outputType: pulumi.Input.fromValue(map['outputType'] as String),
      projectName: pulumi.Input.fromValue(map['projectName'] as String),
      resourceGroupId: pulumi.Input.fromValue(map['resourceGroupId'] as String),
      slsRegionId: pulumi.Input.fromValue(map['slsRegionId'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      totalSagNum: pulumi.Input.fromValue(map['totalSagNum'] as int),
    );
  }
}

