// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'monitor_config_isp_city_node.dart';

/// {@template pulumi_dns_monitor_config_monitor_config_args_doc}
/// The set of arguments for MonitorConfig.
/// {@endtemplate}
/// {@macro pulumi_dns_monitor_config_monitor_config_args_doc}
class MonitorConfigArgs {
  /// The ID of the address pool.
  final pulumi.Input<String> addrPoolId;
  /// The number of consecutive times of failed health check attempts. Valid values: `1`, `2`, `3`.
  final pulumi.Input<int> evaluationCount;
  /// The health check interval. Unit: seconds. Valid values: `60`.
  final pulumi.Input<int> interval;
  /// The Monitoring node. See `isp_city_node` below for details.
  final pulumi.Input<List<MonitorConfigIspCityNode>> ispCityNodes;
  /// The lang.
  final pulumi.Input<String>? lang;
  /// The extended information. This value follows the json format. For more details, see the [description of MonitorExtendInfo in the Request parameters table for details](https://www.alibabacloud.com/help/en/alibaba-cloud-dns/latest/api-alidns-2015-01-09-adddnsgtmmonitor).
  final pulumi.Input<String> monitorExtendInfo;
  /// The health check protocol. Valid values: `HTTP`, `HTTPS`, `PING`, `TCP`.
  final pulumi.Input<String> protocolType;
  /// The timeout period. Unit: milliseconds. Valid values: `2000`, `3000`, `5000`, `10000`.
  final pulumi.Input<int> timeout;

  /// Creates a new [MonitorConfigArgs].
  /// [addrPoolId] The ID of the address pool.
  /// [evaluationCount] The number of consecutive times of failed health check attempts. Valid values: `1`, `2`, `3`.
  /// [interval] The health check interval. Unit: seconds. Valid values: `60`.
  /// [ispCityNodes] The Monitoring node. See `isp_city_node` below for details.
  /// [lang] The lang.
  /// [monitorExtendInfo] The extended information. This value follows the json format. For more details, see the [description of MonitorExtendInfo in the Request parameters table for details](https://www.alibabacloud.com/help/en/alibaba-cloud-dns/latest/api-alidns-2015-01-09-adddnsgtmmonitor).
  /// [protocolType] The health check protocol. Valid values: `HTTP`, `HTTPS`, `PING`, `TCP`.
  /// [timeout] The timeout period. Unit: milliseconds. Valid values: `2000`, `3000`, `5000`, `10000`.
  MonitorConfigArgs({
    required this.addrPoolId,
    required this.evaluationCount,
    required this.interval,
    required this.ispCityNodes,
    this.lang,
    required this.monitorExtendInfo,
    required this.protocolType,
    required this.timeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addrPoolId': addrPoolId,
      'evaluationCount': evaluationCount,
      'interval': interval,
      'ispCityNodes': pulumi.Input.mapInputValue<List<MonitorConfigIspCityNode>, List<Map<String, dynamic>>>(ispCityNodes, (value) => pulumi.Input.encodeList<MonitorConfigIspCityNode, Map<String, dynamic>>(value, (value) => value.toMap())),
      'lang': ?lang,
      'monitorExtendInfo': monitorExtendInfo,
      'protocolType': protocolType,
      'timeout': timeout,
    };
  }

  factory MonitorConfigArgs.fromMap(Map<String, dynamic> map) {
    return MonitorConfigArgs(
      addrPoolId: (map['addrPoolId'] as String).input(),
      evaluationCount: (map['evaluationCount'] as int).input(),
      interval: (map['interval'] as int).input(),
      ispCityNodes: (pulumi.Input.decodeList<MonitorConfigIspCityNode>(map['ispCityNodes'], (value) => MonitorConfigIspCityNode.fromMap((value as Map).cast<String, dynamic>()))).input(),
      lang: map['lang'] == null ? null : (map['lang']! as String).input(),
      monitorExtendInfo: (map['monitorExtendInfo'] as String).input(),
      protocolType: (map['protocolType'] as String).input(),
      timeout: (map['timeout'] as int).input(),
    );
  }
}

