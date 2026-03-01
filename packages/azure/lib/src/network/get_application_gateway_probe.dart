// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_application_gateway_probe_match.dart';

class GetApplicationGatewayProbe {
  /// The Hostname used for this Probe.
  final String host;
  /// The ID of the Rewrite Rule Set
  final String id;
  /// The Interval between two consecutive probes in seconds.
  final int interval;
  /// A `match` block as defined above.
  final List<GetApplicationGatewayProbeMatch> matches;
  /// The minimum number of servers that are always marked as healthy.
  final int minimumServers;
  /// The name of this Application Gateway.
  final String name;
  /// The URL path to rewrite.
  final String path;
  /// Whether the host header is picked from the backend HTTP settings.
  final bool pickHostNameFromBackendHttpSettings;
  /// Custom port which is used for probing the backend servers.
  final int port;
  /// The Protocol used for this Probe.
  final String protocol;
  /// The Timeout used for this Probe, indicating when a probe becomes unhealthy.
  final int timeout;
  /// The Unhealthy Threshold for this Probe, which indicates the amount of retries which will be attempted before a node is deemed unhealthy.
  final int unhealthyThreshold;

  /// Creates a new [GetApplicationGatewayProbe].
  /// [host] The Hostname used for this Probe.
  /// [id] The ID of the Rewrite Rule Set
  /// [interval] The Interval between two consecutive probes in seconds.
  /// [matches] A `match` block as defined above.
  /// [minimumServers] The minimum number of servers that are always marked as healthy.
  /// [name] The name of this Application Gateway.
  /// [path] The URL path to rewrite.
  /// [pickHostNameFromBackendHttpSettings] Whether the host header is picked from the backend HTTP settings.
  /// [port] Custom port which is used for probing the backend servers.
  /// [protocol] The Protocol used for this Probe.
  /// [timeout] The Timeout used for this Probe, indicating when a probe becomes unhealthy.
  /// [unhealthyThreshold] The Unhealthy Threshold for this Probe, which indicates the amount of retries which will be attempted before a node is deemed unhealthy.
  GetApplicationGatewayProbe({
    required this.host,
    required this.id,
    required this.interval,
    required this.matches,
    required this.minimumServers,
    required this.name,
    required this.path,
    required this.pickHostNameFromBackendHttpSettings,
    required this.port,
    required this.protocol,
    required this.timeout,
    required this.unhealthyThreshold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'host': host,
      'id': id,
      'interval': interval,
      'matches': pulumi.Input.encodeList<GetApplicationGatewayProbeMatch, Map<String, dynamic>>(matches, (value) => value.toMap()),
      'minimumServers': minimumServers,
      'name': name,
      'path': path,
      'pickHostNameFromBackendHttpSettings': pickHostNameFromBackendHttpSettings,
      'port': port,
      'protocol': protocol,
      'timeout': timeout,
      'unhealthyThreshold': unhealthyThreshold,
    };
  }

  factory GetApplicationGatewayProbe.fromMap(Map<String, dynamic> map) {
    return GetApplicationGatewayProbe(
      host: map['host'] as String,
      id: map['id'] as String,
      interval: map['interval'] as int,
      matches: pulumi.Input.decodeList<GetApplicationGatewayProbeMatch>(map['matches'], (value) => GetApplicationGatewayProbeMatch.fromMap((value as Map).cast<String, dynamic>())),
      minimumServers: map['minimumServers'] as int,
      name: map['name'] as String,
      path: map['path'] as String,
      pickHostNameFromBackendHttpSettings: map['pickHostNameFromBackendHttpSettings'] as bool,
      port: map['port'] as int,
      protocol: map['protocol'] as String,
      timeout: map['timeout'] as int,
      unhealthyThreshold: map['unhealthyThreshold'] as int,
    );
  }
}

