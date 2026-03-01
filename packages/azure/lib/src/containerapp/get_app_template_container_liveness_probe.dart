// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_app_template_container_liveness_probe_header.dart';

class GetAppTemplateContainerLivenessProbe {
  /// The number of consecutive failures required to consider this probe as failed.
  final int failureCountThreshold;
  /// A `header` block as detailed below.
  final List<GetAppTemplateContainerLivenessProbeHeader> headers;
  /// The value for the host header which should be sent with this probe.
  final String host;
  /// The number of seconds elapsed after the container has started before the probe is initiated.
  final int initialDelay;
  /// How often, in seconds, the probe should run.
  final int intervalSeconds;
  /// The path in the container at which to mount this volume.
  final String path;
  /// The port number on which to connect.
  final int port;
  /// The time in seconds after the container is sent the termination signal before the process if forcibly killed.
  final int terminationGracePeriodSeconds;
  /// Time in seconds after which the probe times out.
  final int timeout;
  /// The transport method for the Ingress.
  final String transport;

  /// Creates a new [GetAppTemplateContainerLivenessProbe].
  /// [failureCountThreshold] The number of consecutive failures required to consider this probe as failed.
  /// [headers] A `header` block as detailed below.
  /// [host] The value for the host header which should be sent with this probe.
  /// [initialDelay] The number of seconds elapsed after the container has started before the probe is initiated.
  /// [intervalSeconds] How often, in seconds, the probe should run.
  /// [path] The path in the container at which to mount this volume.
  /// [port] The port number on which to connect.
  /// [terminationGracePeriodSeconds] The time in seconds after the container is sent the termination signal before the process if forcibly killed.
  /// [timeout] Time in seconds after which the probe times out.
  /// [transport] The transport method for the Ingress.
  GetAppTemplateContainerLivenessProbe({
    required this.failureCountThreshold,
    required this.headers,
    required this.host,
    required this.initialDelay,
    required this.intervalSeconds,
    required this.path,
    required this.port,
    required this.terminationGracePeriodSeconds,
    required this.timeout,
    required this.transport,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'failureCountThreshold': failureCountThreshold,
      'headers': pulumi.Input.encodeList<GetAppTemplateContainerLivenessProbeHeader, Map<String, dynamic>>(headers, (value) => value.toMap()),
      'host': host,
      'initialDelay': initialDelay,
      'intervalSeconds': intervalSeconds,
      'path': path,
      'port': port,
      'terminationGracePeriodSeconds': terminationGracePeriodSeconds,
      'timeout': timeout,
      'transport': transport,
    };
  }

  factory GetAppTemplateContainerLivenessProbe.fromMap(Map<String, dynamic> map) {
    return GetAppTemplateContainerLivenessProbe(
      failureCountThreshold: map['failureCountThreshold'] as int,
      headers: pulumi.Input.decodeList<GetAppTemplateContainerLivenessProbeHeader>(map['headers'], (value) => GetAppTemplateContainerLivenessProbeHeader.fromMap((value as Map).cast<String, dynamic>())),
      host: map['host'] as String,
      initialDelay: map['initialDelay'] as int,
      intervalSeconds: map['intervalSeconds'] as int,
      path: map['path'] as String,
      port: map['port'] as int,
      terminationGracePeriodSeconds: map['terminationGracePeriodSeconds'] as int,
      timeout: map['timeout'] as int,
      transport: map['transport'] as String,
    );
  }
}

