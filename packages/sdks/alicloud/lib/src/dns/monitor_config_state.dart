// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'monitor_config_isp_city_node.dart';

/// Input properties used for looking up and filtering MonitorConfig resources.
class MonitorConfigState {
  /// The ID of the address pool.
  final pulumi.Input<String>? addrPoolId;
  /// The number of consecutive times of failed health check attempts. Valid values: `1`, `2`, `3`.
  final pulumi.Input<int>? evaluationCount;
  /// The health check interval. Unit: seconds. Valid values: `60`.
  final pulumi.Input<int>? interval;
  /// The Monitoring node. See `isp_city_node` below for details.
  final pulumi.Input<List<MonitorConfigIspCityNode>>? ispCityNodes;
  /// The lang.
  final pulumi.Input<String>? lang;
  /// The extended information. This value follows the json format. For more details, see the [description of MonitorExtendInfo in the Request parameters table for details](https://www.alibabacloud.com/help/en/alibaba-cloud-dns/latest/api-alidns-2015-01-09-adddnsgtmmonitor).
  final pulumi.Input<String>? monitorExtendInfo;
  /// The health check protocol. Valid values: `HTTP`, `HTTPS`, `PING`, `TCP`.
  final pulumi.Input<String>? protocolType;
  /// The timeout period. Unit: milliseconds. Valid values: `2000`, `3000`, `5000`, `10000`.
  final pulumi.Input<int>? timeout;

  /// Creates a new [MonitorConfigState].
  /// [addrPoolId] The ID of the address pool.
  /// [evaluationCount] The number of consecutive times of failed health check attempts. Valid values: `1`, `2`, `3`.
  /// [interval] The health check interval. Unit: seconds. Valid values: `60`.
  /// [ispCityNodes] The Monitoring node. See `isp_city_node` below for details.
  /// [lang] The lang.
  /// [monitorExtendInfo] The extended information. This value follows the json format. For more details, see the [description of MonitorExtendInfo in the Request parameters table for details](https://www.alibabacloud.com/help/en/alibaba-cloud-dns/latest/api-alidns-2015-01-09-adddnsgtmmonitor).
  /// [protocolType] The health check protocol. Valid values: `HTTP`, `HTTPS`, `PING`, `TCP`.
  /// [timeout] The timeout period. Unit: milliseconds. Valid values: `2000`, `3000`, `5000`, `10000`.
  MonitorConfigState({
    pulumi.Output<String>? addrPoolId,
    pulumi.Output<int>? evaluationCount,
    pulumi.Output<int>? interval,
    pulumi.Output<List<MonitorConfigIspCityNode>>? ispCityNodes,
    pulumi.Output<String>? lang,
    pulumi.Output<String>? monitorExtendInfo,
    pulumi.Output<String>? protocolType,
    pulumi.Output<int>? timeout,
  }) :
      addrPoolId = pulumi.Input.asOptionalInput<String>(addrPoolId),
      evaluationCount = pulumi.Input.asOptionalInput<int>(evaluationCount),
      interval = pulumi.Input.asOptionalInput<int>(interval),
      ispCityNodes = pulumi.Input.asOptionalInput<List<MonitorConfigIspCityNode>>(ispCityNodes),
      lang = pulumi.Input.asOptionalInput<String>(lang),
      monitorExtendInfo = pulumi.Input.asOptionalInput<String>(monitorExtendInfo),
      protocolType = pulumi.Input.asOptionalInput<String>(protocolType),
      timeout = pulumi.Input.asOptionalInput<int>(timeout);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addrPoolId': ?addrPoolId,
      'evaluationCount': ?evaluationCount,
      'interval': ?interval,
      'ispCityNodes': ?pulumi.Input.mapOptionalInputValue<List<MonitorConfigIspCityNode>, List<Map<String, dynamic>>>(ispCityNodes, (value) => pulumi.Input.encodeList<MonitorConfigIspCityNode, Map<String, dynamic>>(value, (value) => value.toMap())),
      'lang': ?lang,
      'monitorExtendInfo': ?monitorExtendInfo,
      'protocolType': ?protocolType,
      'timeout': ?timeout,
    };
  }

  factory MonitorConfigState.fromMap(Map<String, dynamic> map) {
    return MonitorConfigState(
      addrPoolId: map['addrPoolId'] == null ? null : pulumi.Output.create<String>(map['addrPoolId'] as String),
      evaluationCount: map['evaluationCount'] == null ? null : pulumi.Output.create<int>(map['evaluationCount'] as int),
      interval: map['interval'] == null ? null : pulumi.Output.create<int>(map['interval'] as int),
      ispCityNodes: map['ispCityNodes'] == null ? null : pulumi.Output.create<List<MonitorConfigIspCityNode>>(pulumi.Input.decodeList<MonitorConfigIspCityNode>(map['ispCityNodes'], (value) => MonitorConfigIspCityNode.fromMap((value as Map).cast<String, dynamic>()))),
      lang: map['lang'] == null ? null : pulumi.Output.create<String>(map['lang'] as String),
      monitorExtendInfo: map['monitorExtendInfo'] == null ? null : pulumi.Output.create<String>(map['monitorExtendInfo'] as String),
      protocolType: map['protocolType'] == null ? null : pulumi.Output.create<String>(map['protocolType'] as String),
      timeout: map['timeout'] == null ? null : pulumi.Output.create<int>(map['timeout'] as int),
    );
  }
}

