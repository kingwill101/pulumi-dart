// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_monitor_http_configuration.dart';
import 'connection_monitor_icmp_configuration.dart';
import 'connection_monitor_success_threshold.dart';
import 'connection_monitor_tcp_configuration.dart';

/// Describes a connection monitor test configuration.
class ConnectionMonitorTestConfiguration {
  /// The parameters used to perform test evaluation over HTTP.
  final pulumi.Input<ConnectionMonitorHttpConfiguration>? httpConfiguration;
  /// The parameters used to perform test evaluation over ICMP.
  final pulumi.Input<ConnectionMonitorIcmpConfiguration>? icmpConfiguration;
  /// The name of the connection monitor test configuration.
  final pulumi.Input<String> name;
  /// The preferred IP version to use in test evaluation. The connection monitor may choose to use a different version depending on other parameters.
  final pulumi.Input<String>? preferredIPVersion;
  /// The protocol to use in test evaluation.
  final pulumi.Input<String> protocol;
  /// The threshold for declaring a test successful.
  final pulumi.Input<ConnectionMonitorSuccessThreshold>? successThreshold;
  /// The parameters used to perform test evaluation over TCP.
  final pulumi.Input<ConnectionMonitorTcpConfiguration>? tcpConfiguration;
  /// The frequency of test evaluation, in seconds.
  final pulumi.Input<int>? testFrequencySec;

  /// Creates a new [ConnectionMonitorTestConfiguration].
  /// [httpConfiguration] The parameters used to perform test evaluation over HTTP.
  /// [icmpConfiguration] The parameters used to perform test evaluation over ICMP.
  /// [name] The name of the connection monitor test configuration.
  /// [preferredIPVersion] The preferred IP version to use in test evaluation. The connection monitor may choose to use a different version depending on other parameters.
  /// [protocol] The protocol to use in test evaluation.
  /// [successThreshold] The threshold for declaring a test successful.
  /// [tcpConfiguration] The parameters used to perform test evaluation over TCP.
  /// [testFrequencySec] The frequency of test evaluation, in seconds.
  ConnectionMonitorTestConfiguration({
    this.httpConfiguration,
    this.icmpConfiguration,
    required this.name,
    this.preferredIPVersion,
    required this.protocol,
    this.successThreshold,
    this.tcpConfiguration,
    this.testFrequencySec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'httpConfiguration': ?pulumi.Input.mapOptionalInputValue<ConnectionMonitorHttpConfiguration, Map<String, dynamic>>(httpConfiguration, (value) => value.toMap()),
      'icmpConfiguration': ?pulumi.Input.mapOptionalInputValue<ConnectionMonitorIcmpConfiguration, Map<String, dynamic>>(icmpConfiguration, (value) => value.toMap()),
      'name': name,
      'preferredIPVersion': ?preferredIPVersion,
      'protocol': protocol,
      'successThreshold': ?pulumi.Input.mapOptionalInputValue<ConnectionMonitorSuccessThreshold, Map<String, dynamic>>(successThreshold, (value) => value.toMap()),
      'tcpConfiguration': ?pulumi.Input.mapOptionalInputValue<ConnectionMonitorTcpConfiguration, Map<String, dynamic>>(tcpConfiguration, (value) => value.toMap()),
      'testFrequencySec': ?testFrequencySec,
    };
  }

  factory ConnectionMonitorTestConfiguration.fromMap(Map<String, dynamic> map) {
    return ConnectionMonitorTestConfiguration(
      httpConfiguration: map['httpConfiguration'] == null ? null : (ConnectionMonitorHttpConfiguration.fromMap((map['httpConfiguration']! as Map).cast<String, dynamic>())).input(),
      icmpConfiguration: map['icmpConfiguration'] == null ? null : (ConnectionMonitorIcmpConfiguration.fromMap((map['icmpConfiguration']! as Map).cast<String, dynamic>())).input(),
      name: (map['name'] as String).input(),
      preferredIPVersion: map['preferredIPVersion'] == null ? null : (map['preferredIPVersion']! as String).input(),
      protocol: (map['protocol'] as String).input(),
      successThreshold: map['successThreshold'] == null ? null : (ConnectionMonitorSuccessThreshold.fromMap((map['successThreshold']! as Map).cast<String, dynamic>())).input(),
      tcpConfiguration: map['tcpConfiguration'] == null ? null : (ConnectionMonitorTcpConfiguration.fromMap((map['tcpConfiguration']! as Map).cast<String, dynamic>())).input(),
      testFrequencySec: map['testFrequencySec'] == null ? null : (map['testFrequencySec']! as int).input(),
    );
  }
}

