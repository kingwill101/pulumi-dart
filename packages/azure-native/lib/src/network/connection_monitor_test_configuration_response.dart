// ignore_for_file: unused_element, unnecessary_cast

import 'connection_monitor_http_configuration_response.dart';
import 'connection_monitor_icmp_configuration_response.dart';
import 'connection_monitor_success_threshold_response.dart';
import 'connection_monitor_tcp_configuration_response.dart';

/// Describes a connection monitor test configuration.
class ConnectionMonitorTestConfigurationResponse {
  /// The parameters used to perform test evaluation over HTTP.
  final ConnectionMonitorHttpConfigurationResponse? httpConfiguration;
  /// The parameters used to perform test evaluation over ICMP.
  final ConnectionMonitorIcmpConfigurationResponse? icmpConfiguration;
  /// The name of the connection monitor test configuration.
  final String name;
  /// The preferred IP version to use in test evaluation. The connection monitor may choose to use a different version depending on other parameters.
  final String? preferredIPVersion;
  /// The protocol to use in test evaluation.
  final String protocol;
  /// The threshold for declaring a test successful.
  final ConnectionMonitorSuccessThresholdResponse? successThreshold;
  /// The parameters used to perform test evaluation over TCP.
  final ConnectionMonitorTcpConfigurationResponse? tcpConfiguration;
  /// The frequency of test evaluation, in seconds.
  final int? testFrequencySec;

  /// Creates a new [ConnectionMonitorTestConfigurationResponse].
  /// [httpConfiguration] The parameters used to perform test evaluation over HTTP.
  /// [icmpConfiguration] The parameters used to perform test evaluation over ICMP.
  /// [name] The name of the connection monitor test configuration.
  /// [preferredIPVersion] The preferred IP version to use in test evaluation. The connection monitor may choose to use a different version depending on other parameters.
  /// [protocol] The protocol to use in test evaluation.
  /// [successThreshold] The threshold for declaring a test successful.
  /// [tcpConfiguration] The parameters used to perform test evaluation over TCP.
  /// [testFrequencySec] The frequency of test evaluation, in seconds.
  ConnectionMonitorTestConfigurationResponse({
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
      'httpConfiguration': ?httpConfiguration == null ? null : httpConfiguration!.toMap(),
      'icmpConfiguration': ?icmpConfiguration == null ? null : icmpConfiguration!.toMap(),
      'name': name,
      'preferredIPVersion': ?preferredIPVersion,
      'protocol': protocol,
      'successThreshold': ?successThreshold == null ? null : successThreshold!.toMap(),
      'tcpConfiguration': ?tcpConfiguration == null ? null : tcpConfiguration!.toMap(),
      'testFrequencySec': ?testFrequencySec,
    };
  }

  factory ConnectionMonitorTestConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return ConnectionMonitorTestConfigurationResponse(
      httpConfiguration: map['httpConfiguration'] == null ? null : ConnectionMonitorHttpConfigurationResponse.fromMap((map['httpConfiguration'] as Map).cast<String, dynamic>()),
      icmpConfiguration: map['icmpConfiguration'] == null ? null : ConnectionMonitorIcmpConfigurationResponse.fromMap((map['icmpConfiguration'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      preferredIPVersion: map['preferredIPVersion'] == null ? null : map['preferredIPVersion'] as String,
      protocol: map['protocol'] as String,
      successThreshold: map['successThreshold'] == null ? null : ConnectionMonitorSuccessThresholdResponse.fromMap((map['successThreshold'] as Map).cast<String, dynamic>()),
      tcpConfiguration: map['tcpConfiguration'] == null ? null : ConnectionMonitorTcpConfigurationResponse.fromMap((map['tcpConfiguration'] as Map).cast<String, dynamic>()),
      testFrequencySec: map['testFrequencySec'] == null ? null : map['testFrequencySec'] as int,
    );
  }
}

