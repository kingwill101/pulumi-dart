// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_gateway_probe_health_response_match_response.dart';

/// Probe of the application gateway.
class ApplicationGatewayProbeResponse {
  /// A unique read-only string that changes whenever the resource is updated.
  final pulumi.Input<String> etag;
  /// Host name to send the probe to.
  final pulumi.Input<String>? host;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// The probing interval in seconds. This is the time interval between two consecutive probes. Acceptable values are from 1 second to 86400 seconds.
  final pulumi.Input<int>? interval;
  /// Criterion for classifying a healthy probe response.
  final pulumi.Input<ApplicationGatewayProbeHealthResponseMatchResponse>? match;
  /// Minimum number of servers that are always marked healthy. Default value is 0.
  final pulumi.Input<int>? minServers;
  /// Name of the probe that is unique within an Application Gateway.
  final pulumi.Input<String>? name;
  /// Relative path of probe. Valid path starts from '/'. Probe is sent to <Protocol>://<host>:<port><path>.
  final pulumi.Input<String>? path;
  /// Whether the host header should be picked from the backend http settings. Default value is false.
  final pulumi.Input<bool>? pickHostNameFromBackendHttpSettings;
  /// Whether the server name indication should be picked from the backend settings for Tls protocol. Default value is false.
  final pulumi.Input<bool>? pickHostNameFromBackendSettings;
  /// Custom port which will be used for probing the backend servers. The valid value ranges from 1 to 65535. In case not set, port from http settings will be used. This property is valid for Basic, Standard_v2 and WAF_v2 only.
  final pulumi.Input<int>? port;
  /// The protocol used for the probe.
  final pulumi.Input<String>? protocol;
  /// The provisioning state of the probe resource.
  final pulumi.Input<String> provisioningState;
  /// The probe timeout in seconds. Probe marked as failed if valid response is not received with this timeout period. Acceptable values are from 1 second to 86400 seconds.
  final pulumi.Input<int>? timeout;
  /// Type of the resource.
  final pulumi.Input<String> type;
  /// The probe retry count. Backend server is marked down after consecutive probe failure count reaches UnhealthyThreshold. Acceptable values are from 1 second to 20.
  final pulumi.Input<int>? unhealthyThreshold;

  /// Creates a new [ApplicationGatewayProbeResponse].
  /// [etag] A unique read-only string that changes whenever the resource is updated.
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
  /// [provisioningState] The provisioning state of the probe resource.
  /// [timeout] The probe timeout in seconds. Probe marked as failed if valid response is not received with this timeout period. Acceptable values are from 1 second to 86400 seconds.
  /// [type] Type of the resource.
  /// [unhealthyThreshold] The probe retry count. Backend server is marked down after consecutive probe failure count reaches UnhealthyThreshold. Acceptable values are from 1 second to 20.
  ApplicationGatewayProbeResponse({
    required this.etag,
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
    required this.provisioningState,
    this.timeout,
    required this.type,
    this.unhealthyThreshold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'etag': etag,
      'host': ?host,
      'id': ?id,
      'interval': ?interval,
      'match': ?pulumi.Input.mapOptionalInputValue<ApplicationGatewayProbeHealthResponseMatchResponse, Map<String, dynamic>>(match, (value) => value.toMap()),
      'minServers': ?minServers,
      'name': ?name,
      'path': ?path,
      'pickHostNameFromBackendHttpSettings': ?pickHostNameFromBackendHttpSettings,
      'pickHostNameFromBackendSettings': ?pickHostNameFromBackendSettings,
      'port': ?port,
      'protocol': ?protocol,
      'provisioningState': provisioningState,
      'timeout': ?timeout,
      'type': type,
      'unhealthyThreshold': ?unhealthyThreshold,
    };
  }

  factory ApplicationGatewayProbeResponse.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayProbeResponse(
      etag: (map['etag'] as String).input(),
      host: map['host'] == null ? null : (map['host']! as String).input(),
      id: map['id'] == null ? null : (map['id']! as String).input(),
      interval: map['interval'] == null ? null : (map['interval']! as int).input(),
      match: map['match'] == null ? null : (ApplicationGatewayProbeHealthResponseMatchResponse.fromMap((map['match']! as Map).cast<String, dynamic>())).input(),
      minServers: map['minServers'] == null ? null : (map['minServers']! as int).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      path: map['path'] == null ? null : (map['path']! as String).input(),
      pickHostNameFromBackendHttpSettings: map['pickHostNameFromBackendHttpSettings'] == null ? null : (map['pickHostNameFromBackendHttpSettings']! as bool).input(),
      pickHostNameFromBackendSettings: map['pickHostNameFromBackendSettings'] == null ? null : (map['pickHostNameFromBackendSettings']! as bool).input(),
      port: map['port'] == null ? null : (map['port']! as int).input(),
      protocol: map['protocol'] == null ? null : (map['protocol']! as String).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      timeout: map['timeout'] == null ? null : (map['timeout']! as int).input(),
      type: (map['type'] as String).input(),
      unhealthyThreshold: map['unhealthyThreshold'] == null ? null : (map['unhealthyThreshold']! as int).input(),
    );
  }
}

