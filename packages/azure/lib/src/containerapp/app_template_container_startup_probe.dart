// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_template_container_startup_probe_header.dart';

class AppTemplateContainerStartupProbe {
  /// The number of consecutive failures required to consider this probe as failed. Possible values are between `1` and `30`. Defaults to `3`.
  final int? failureCountThreshold;
  /// A `header` block as detailed below.
  final List<AppTemplateContainerStartupProbeHeader>? headers;
  /// The value for the host header which should be sent with this probe. If unspecified, the IP Address of the Pod is used as the host header. Setting a value for `Host` in `headers` can be used to override this for `HTTP` and `HTTPS` type probes.
  final String? host;
  /// The number of seconds elapsed after the container has started before the probe is initiated. Possible values are between `0` and `60`. Defaults to `0` seconds.
  final int? initialDelay;
  /// How often, in seconds, the probe should run. Possible values are between `1` and `240`. Defaults to `10`
  final int? intervalSeconds;
  /// The URI to use with the `host` for http type probes. Not valid for `TCP` type probes. Defaults to `/`.
  final String? path;
  /// The port number on which to connect. Possible values are between `1` and `65535`.
  final int port;
  /// The time in seconds after the container is sent the termination signal before the process if forcibly killed.
  final int? terminationGracePeriodSeconds;
  /// Time in seconds after which the probe times out. Possible values are in the range `1` - `240`. Defaults to `1`.
  final int? timeout;
  /// Type of probe. Possible values are `TCP`, `HTTP`, and `HTTPS`.
  final String transport;

  /// Creates a new [AppTemplateContainerStartupProbe].
  /// [failureCountThreshold] The number of consecutive failures required to consider this probe as failed. Possible values are between `1` and `30`. Defaults to `3`.
  /// [headers] A `header` block as detailed below.
  /// [host] The value for the host header which should be sent with this probe. If unspecified, the IP Address of the Pod is used as the host header. Setting a value for `Host` in `headers` can be used to override this for `HTTP` and `HTTPS` type probes.
  /// [initialDelay] The number of seconds elapsed after the container has started before the probe is initiated. Possible values are between `0` and `60`. Defaults to `0` seconds.
  /// [intervalSeconds] How often, in seconds, the probe should run. Possible values are between `1` and `240`. Defaults to `10`
  /// [path] The URI to use with the `host` for http type probes. Not valid for `TCP` type probes. Defaults to `/`.
  /// [port] The port number on which to connect. Possible values are between `1` and `65535`.
  /// [terminationGracePeriodSeconds] The time in seconds after the container is sent the termination signal before the process if forcibly killed.
  /// [timeout] Time in seconds after which the probe times out. Possible values are in the range `1` - `240`. Defaults to `1`.
  /// [transport] Type of probe. Possible values are `TCP`, `HTTP`, and `HTTPS`.
  AppTemplateContainerStartupProbe({
    this.failureCountThreshold,
    this.headers,
    this.host,
    this.initialDelay,
    this.intervalSeconds,
    this.path,
    required this.port,
    this.terminationGracePeriodSeconds,
    this.timeout,
    required this.transport,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'failureCountThreshold': ?failureCountThreshold,
      'headers': ?headers == null ? null : pulumi.Input.encodeList<AppTemplateContainerStartupProbeHeader, Map<String, dynamic>>(headers!, (value) => value.toMap()),
      'host': ?host,
      'initialDelay': ?initialDelay,
      'intervalSeconds': ?intervalSeconds,
      'path': ?path,
      'port': port,
      'terminationGracePeriodSeconds': ?terminationGracePeriodSeconds,
      'timeout': ?timeout,
      'transport': transport,
    };
  }

  factory AppTemplateContainerStartupProbe.fromMap(Map<String, dynamic> map) {
    return AppTemplateContainerStartupProbe(
      failureCountThreshold: map['failureCountThreshold'] == null ? null : map['failureCountThreshold'] as int,
      headers: map['headers'] == null ? null : pulumi.Input.decodeList<AppTemplateContainerStartupProbeHeader>(map['headers'], (value) => AppTemplateContainerStartupProbeHeader.fromMap((value as Map).cast<String, dynamic>())),
      host: map['host'] == null ? null : map['host'] as String,
      initialDelay: map['initialDelay'] == null ? null : map['initialDelay'] as int,
      intervalSeconds: map['intervalSeconds'] == null ? null : map['intervalSeconds'] as int,
      path: map['path'] == null ? null : map['path'] as String,
      port: map['port'] as int,
      terminationGracePeriodSeconds: map['terminationGracePeriodSeconds'] == null ? null : map['terminationGracePeriodSeconds'] as int,
      timeout: map['timeout'] == null ? null : map['timeout'] as int,
      transport: map['transport'] as String,
    );
  }
}

