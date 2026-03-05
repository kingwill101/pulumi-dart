// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sag_smartag_flow_log_smartag_flow_log_args_doc}
/// The set of arguments for SmartagFlowLog.
/// {@endtemplate}
/// {@macro pulumi_sag_smartag_flow_log_smartag_flow_log_args_doc}
class SmartagFlowLogArgs {
  /// The time interval at which log data of active connections is collected. Valid values: `60` to `6000`. Default value: `300`. Unit: second.
  final pulumi.Input<int>? activeAging;
  /// The description of the flow log.
  final pulumi.Input<String>? description;
  /// The name of the flow log.
  final pulumi.Input<String>? flowLogName;
  /// The time interval at which log data of inactive connections is connected. Valid values: `10` to `600`. Default value: `15`. Unit: second.
  final pulumi.Input<int>? inactiveAging;
  /// The Logstore in Log Service. If `output_type` is set to `sls` or `all`, this parameter is required.
  final pulumi.Input<String>? logstoreName;
  /// The IP address of the NetFlow collector where the flow log is stored. If `output_type` is set to `netflow` or `all`, this parameter is required.
  final pulumi.Input<String>? netflowServerIp;
  /// The port of the NetFlow collector. Default value: `9995`. If `output_type` is set to `netflow` or `all`, this parameter is required.
  final pulumi.Input<int>? netflowServerPort;
  /// The NetFlow version. Default value: `V9`. Valid values: `V10`, `V5`, `V9`. If `output_type` is set to `netflow` or `all`, this parameter is required.
  final pulumi.Input<String>? netflowVersion;
  /// The location where the flow log is stored. Valid values:
  final pulumi.Input<String> outputType;
  /// The project in Log Service. If `output_type` is set to `sls` or `all`, this parameter is required.
  final pulumi.Input<String>? projectName;
  /// The ID of the region where Log Service is deployed. If `output_type` is set to `sls` or `all`, this parameter is required.
  final pulumi.Input<String>? slsRegionId;
  /// The status of the flow log. Valid values:  `Active`: The flow log is enabled. `Inactive`: The flow log is disabled.
  final pulumi.Input<String>? status;

  /// Creates a new [SmartagFlowLogArgs].
  /// [activeAging] The time interval at which log data of active connections is collected. Valid values: `60` to `6000`. Default value: `300`. Unit: second.
  /// [description] The description of the flow log.
  /// [flowLogName] The name of the flow log.
  /// [inactiveAging] The time interval at which log data of inactive connections is connected. Valid values: `10` to `600`. Default value: `15`. Unit: second.
  /// [logstoreName] The Logstore in Log Service. If `output_type` is set to `sls` or `all`, this parameter is required.
  /// [netflowServerIp] The IP address of the NetFlow collector where the flow log is stored. If `output_type` is set to `netflow` or `all`, this parameter is required.
  /// [netflowServerPort] The port of the NetFlow collector. Default value: `9995`. If `output_type` is set to `netflow` or `all`, this parameter is required.
  /// [netflowVersion] The NetFlow version. Default value: `V9`. Valid values: `V10`, `V5`, `V9`. If `output_type` is set to `netflow` or `all`, this parameter is required.
  /// [outputType] The location where the flow log is stored. Valid values:
  /// [projectName] The project in Log Service. If `output_type` is set to `sls` or `all`, this parameter is required.
  /// [slsRegionId] The ID of the region where Log Service is deployed. If `output_type` is set to `sls` or `all`, this parameter is required.
  /// [status] The status of the flow log. Valid values:  `Active`: The flow log is enabled. `Inactive`: The flow log is disabled.
  SmartagFlowLogArgs({
    this.activeAging,
    this.description,
    this.flowLogName,
    this.inactiveAging,
    this.logstoreName,
    this.netflowServerIp,
    this.netflowServerPort,
    this.netflowVersion,
    required this.outputType,
    this.projectName,
    this.slsRegionId,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeAging': ?activeAging,
      'description': ?description,
      'flowLogName': ?flowLogName,
      'inactiveAging': ?inactiveAging,
      'logstoreName': ?logstoreName,
      'netflowServerIp': ?netflowServerIp,
      'netflowServerPort': ?netflowServerPort,
      'netflowVersion': ?netflowVersion,
      'outputType': outputType,
      'projectName': ?projectName,
      'slsRegionId': ?slsRegionId,
      'status': ?status,
    };
  }

  factory SmartagFlowLogArgs.fromMap(Map<String, dynamic> map) {
    return SmartagFlowLogArgs(
      activeAging: (() { final guardedValue = map['activeAging']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      flowLogName: (() { final guardedValue = map['flowLogName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      inactiveAging: (() { final guardedValue = map['inactiveAging']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      logstoreName: (() { final guardedValue = map['logstoreName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      netflowServerIp: (() { final guardedValue = map['netflowServerIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      netflowServerPort: (() { final guardedValue = map['netflowServerPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      netflowVersion: (() { final guardedValue = map['netflowVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputType: pulumi.Input.fromValue(map['outputType'] as String),
      projectName: (() { final guardedValue = map['projectName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      slsRegionId: (() { final guardedValue = map['slsRegionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

