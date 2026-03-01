// ignore_for_file: unused_element, unnecessary_cast

import 'application_gateway_probe_health_response_match.dart';

/// Probe of the application gateway.
class ApplicationGatewayProbe {
  /// Host name to send the probe to.
  final String? host;
  /// Resource ID.
  final String? id;
  /// The probing interval in seconds. This is the time interval between two consecutive probes. Acceptable values are from 1 second to 86400 seconds.
  final int? interval;
  /// Criterion for classifying a healthy probe response.
  final ApplicationGatewayProbeHealthResponseMatch? match;
  /// Minimum number of servers that are always marked healthy. Default value is 0.
  final int? minServers;
  /// Name of the probe that is unique within an Application Gateway.
  final String? name;
  /// Relative path of probe. Valid path starts from '/'. Probe is sent to <Protocol>://<host>:<port><path>.
  final String? path;
  /// Whether the host header should be picked from the backend http settings. Default value is false.
  final bool? pickHostNameFromBackendHttpSettings;
  /// Whether the server name indication should be picked from the backend settings for Tls protocol. Default value is false.
  final bool? pickHostNameFromBackendSettings;
  /// Custom port which will be used for probing the backend servers. The valid value ranges from 1 to 65535. In case not set, port from http settings will be used. This property is valid for Basic, Standard_v2 and WAF_v2 only.
  final int? port;
  /// The protocol used for the probe.
  final String? protocol;
  /// The probe timeout in seconds. Probe marked as failed if valid response is not received with this timeout period. Acceptable values are from 1 second to 86400 seconds.
  final int? timeout;
  /// The probe retry count. Backend server is marked down after consecutive probe failure count reaches UnhealthyThreshold. Acceptable values are from 1 second to 20.
  final int? unhealthyThreshold;

  /// Creates a new [ApplicationGatewayProbe].
  /// [host] Host name to send the probe to.
  /// [id] Resource ID.
  /// [interval] The probing interval in seconds. This is the time interval between two consecutive probes. Acceptable values are from 1 second to 86400 seconds.
  /// [match] Criterion for classifying a healthy probe response.
  /// [minServers] Minimum number of servers that are always marked healthy. Default value is 0.
  /// [name] Name of the probe that is unique within an Application Gateway.
  /// [path] Relative path of probe. Valid path starts from '/'. Probe is sent to <Protocol>://<host>:<port><path>.
  /// [pickHostNameFromBackendHttpSettings] Whether the host header should be picked from the backend http settings. Default value is false.
  /// [pickHostNameFromBackendSettings] Whether the server name indication should be picked from the backend settings for Tls protocol. Default value is false.
  /// [port] Custom port which will be used for probing the backend servers. The valid value ranges from 1 to 65535. In case not set, port from http settings will be used. This property is valid for Basic, Standard_v2 and WAF_v2 only.
  /// [protocol] The protocol used for the probe.
  /// [timeout] The probe timeout in seconds. Probe marked as failed if valid response is not received with this timeout period. Acceptable values are from 1 second to 86400 seconds.
  /// [unhealthyThreshold] The probe retry count. Backend server is marked down after consecutive probe failure count reaches UnhealthyThreshold. Acceptable values are from 1 second to 20.
  ApplicationGatewayProbe({
    this.host,
    this.id,
    this.interval,
    this.match,
    this.minServers,
    this.name,
    this.path,
    this.pickHostNameFromBackendHttpSettings,
    this.pickHostNameFromBackendSettings,
    this.port,
    this.protocol,
    this.timeout,
    this.unhealthyThreshold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'host': ?host,
      'id': ?id,
      'interval': ?interval,
      'match': ?match == null ? null : match!.toMap(),
      'minServers': ?minServers,
      'name': ?name,
      'path': ?path,
      'pickHostNameFromBackendHttpSettings': ?pickHostNameFromBackendHttpSettings,
      'pickHostNameFromBackendSettings': ?pickHostNameFromBackendSettings,
      'port': ?port,
      'protocol': ?protocol,
      'timeout': ?timeout,
      'unhealthyThreshold': ?unhealthyThreshold,
    };
  }

  factory ApplicationGatewayProbe.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayProbe(
      host: map['host'] == null ? null : map['host'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      interval: map['interval'] == null ? null : map['interval'] as int,
      match: map['match'] == null ? null : ApplicationGatewayProbeHealthResponseMatch.fromMap((map['match'] as Map).cast<String, dynamic>()),
      minServers: map['minServers'] == null ? null : map['minServers'] as int,
      name: map['name'] == null ? null : map['name'] as String,
      path: map['path'] == null ? null : map['path'] as String,
      pickHostNameFromBackendHttpSettings: map['pickHostNameFromBackendHttpSettings'] == null ? null : map['pickHostNameFromBackendHttpSettings'] as bool,
      pickHostNameFromBackendSettings: map['pickHostNameFromBackendSettings'] == null ? null : map['pickHostNameFromBackendSettings'] as bool,
      port: map['port'] == null ? null : map['port'] as int,
      protocol: map['protocol'] == null ? null : map['protocol'] as String,
      timeout: map['timeout'] == null ? null : map['timeout'] as int,
      unhealthyThreshold: map['unhealthyThreshold'] == null ? null : map['unhealthyThreshold'] as int,
    );
  }
}

