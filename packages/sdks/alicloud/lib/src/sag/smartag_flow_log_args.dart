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
    pulumi.Output<int>? activeAging,
    pulumi.Output<String>? description,
    pulumi.Output<String>? flowLogName,
    pulumi.Output<int>? inactiveAging,
    pulumi.Output<String>? logstoreName,
    pulumi.Output<String>? netflowServerIp,
    pulumi.Output<int>? netflowServerPort,
    pulumi.Output<String>? netflowVersion,
    required pulumi.Output<String> outputType,
    pulumi.Output<String>? projectName,
    pulumi.Output<String>? slsRegionId,
    pulumi.Output<String>? status,
  }) :
      activeAging = pulumi.Input.asOptionalInput<int>(activeAging),
      description = pulumi.Input.asOptionalInput<String>(description),
      flowLogName = pulumi.Input.asOptionalInput<String>(flowLogName),
      inactiveAging = pulumi.Input.asOptionalInput<int>(inactiveAging),
      logstoreName = pulumi.Input.asOptionalInput<String>(logstoreName),
      netflowServerIp = pulumi.Input.asOptionalInput<String>(netflowServerIp),
      netflowServerPort = pulumi.Input.asOptionalInput<int>(netflowServerPort),
      netflowVersion = pulumi.Input.asOptionalInput<String>(netflowVersion),
      outputType = pulumi.Input.asInput<String>(outputType),
      projectName = pulumi.Input.asOptionalInput<String>(projectName),
      slsRegionId = pulumi.Input.asOptionalInput<String>(slsRegionId),
      status = pulumi.Input.asOptionalInput<String>(status);

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
      activeAging: map['activeAging'] == null ? null : pulumi.Output.create<int>(map['activeAging'] as int),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      flowLogName: map['flowLogName'] == null ? null : pulumi.Output.create<String>(map['flowLogName'] as String),
      inactiveAging: map['inactiveAging'] == null ? null : pulumi.Output.create<int>(map['inactiveAging'] as int),
      logstoreName: map['logstoreName'] == null ? null : pulumi.Output.create<String>(map['logstoreName'] as String),
      netflowServerIp: map['netflowServerIp'] == null ? null : pulumi.Output.create<String>(map['netflowServerIp'] as String),
      netflowServerPort: map['netflowServerPort'] == null ? null : pulumi.Output.create<int>(map['netflowServerPort'] as int),
      netflowVersion: map['netflowVersion'] == null ? null : pulumi.Output.create<String>(map['netflowVersion'] as String),
      outputType: pulumi.Output.create<String>(map['outputType'] as String),
      projectName: map['projectName'] == null ? null : pulumi.Output.create<String>(map['projectName'] as String),
      slsRegionId: map['slsRegionId'] == null ? null : pulumi.Output.create<String>(map['slsRegionId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

