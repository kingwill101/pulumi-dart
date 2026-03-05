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
    this.addrPoolId,
    this.evaluationCount,
    this.interval,
    this.ispCityNodes,
    this.lang,
    this.monitorExtendInfo,
    this.protocolType,
    this.timeout,
  });

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
      addrPoolId: (() { final guardedValue = map['addrPoolId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      evaluationCount: (() { final guardedValue = map['evaluationCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      interval: (() { final guardedValue = map['interval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      ispCityNodes: (() { final guardedValue = map['ispCityNodes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<MonitorConfigIspCityNode>(guardedValue, (value) => MonitorConfigIspCityNode.fromMap((value as Map).cast<String, dynamic>()))); })(),
      lang: (() { final guardedValue = map['lang']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      monitorExtendInfo: (() { final guardedValue = map['monitorExtendInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protocolType: (() { final guardedValue = map['protocolType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeout: (() { final guardedValue = map['timeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

