// ignore_for_file: unused_element, unnecessary_cast

import 'network_connection_monitor_test_configuration_http_configuration.dart';
import 'network_connection_monitor_test_configuration_icmp_configuration.dart';
import 'network_connection_monitor_test_configuration_success_threshold.dart';
import 'network_connection_monitor_test_configuration_tcp_configuration.dart';

class NetworkConnectionMonitorTestConfiguration {
  /// A `http_configuration` block as defined below.
  final NetworkConnectionMonitorTestConfigurationHttpConfiguration? httpConfiguration;
  /// A `icmp_configuration` block as defined below.
  final NetworkConnectionMonitorTestConfigurationIcmpConfiguration? icmpConfiguration;
  /// The name of test configuration for the Network Connection Monitor.
  final String name;
  /// The preferred IP version which is used in the test evaluation. Possible values are `IPv4` and `IPv6`.
  final String? preferredIpVersion;
  /// The protocol used to evaluate tests. Possible values are `Tcp`, `Http` and `Icmp`.
  final String protocol;
  /// A `success_threshold` block as defined below.
  final NetworkConnectionMonitorTestConfigurationSuccessThreshold? successThreshold;
  /// A `tcp_configuration` block as defined below.
  final NetworkConnectionMonitorTestConfigurationTcpConfiguration? tcpConfiguration;
  /// The time interval in seconds at which the test evaluation will happen. Defaults to `60`.
  final int? testFrequencyInSeconds;

  /// Creates a new [NetworkConnectionMonitorTestConfiguration].
  /// [httpConfiguration] A `http_configuration` block as defined below.
  /// [icmpConfiguration] A `icmp_configuration` block as defined below.
  /// [name] The name of test configuration for the Network Connection Monitor.
  /// [preferredIpVersion] The preferred IP version which is used in the test evaluation. Possible values are `IPv4` and `IPv6`.
  /// [protocol] The protocol used to evaluate tests. Possible values are `Tcp`, `Http` and `Icmp`.
  /// [successThreshold] A `success_threshold` block as defined below.
  /// [tcpConfiguration] A `tcp_configuration` block as defined below.
  /// [testFrequencyInSeconds] The time interval in seconds at which the test evaluation will happen. Defaults to `60`.
  NetworkConnectionMonitorTestConfiguration({
    this.httpConfiguration,
    this.icmpConfiguration,
    required this.name,
    this.preferredIpVersion,
    required this.protocol,
    this.successThreshold,
    this.tcpConfiguration,
    this.testFrequencyInSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'httpConfiguration': ?httpConfiguration == null ? null : httpConfiguration!.toMap(),
      'icmpConfiguration': ?icmpConfiguration == null ? null : icmpConfiguration!.toMap(),
      'name': name,
      'preferredIpVersion': ?preferredIpVersion,
      'protocol': protocol,
      'successThreshold': ?successThreshold == null ? null : successThreshold!.toMap(),
      'tcpConfiguration': ?tcpConfiguration == null ? null : tcpConfiguration!.toMap(),
      'testFrequencyInSeconds': ?testFrequencyInSeconds,
    };
  }

  factory NetworkConnectionMonitorTestConfiguration.fromMap(Map<String, dynamic> map) {
    return NetworkConnectionMonitorTestConfiguration(
      httpConfiguration: map['httpConfiguration'] == null ? null : NetworkConnectionMonitorTestConfigurationHttpConfiguration.fromMap((map['httpConfiguration'] as Map).cast<String, dynamic>()),
      icmpConfiguration: map['icmpConfiguration'] == null ? null : NetworkConnectionMonitorTestConfigurationIcmpConfiguration.fromMap((map['icmpConfiguration'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      preferredIpVersion: map['preferredIpVersion'] == null ? null : map['preferredIpVersion'] as String,
      protocol: map['protocol'] as String,
      successThreshold: map['successThreshold'] == null ? null : NetworkConnectionMonitorTestConfigurationSuccessThreshold.fromMap((map['successThreshold'] as Map).cast<String, dynamic>()),
      tcpConfiguration: map['tcpConfiguration'] == null ? null : NetworkConnectionMonitorTestConfigurationTcpConfiguration.fromMap((map['tcpConfiguration'] as Map).cast<String, dynamic>()),
      testFrequencyInSeconds: map['testFrequencyInSeconds'] == null ? null : map['testFrequencyInSeconds'] as int,
    );
  }
}

