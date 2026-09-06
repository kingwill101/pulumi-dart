// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Overrides for localDNS profile.
class LocalDNSOverride {
  /// Cache max TTL in seconds. See [cache plugin](https://coredns.io/plugins/cache) for more information.
  final pulumi.Input<int?>? cacheDurationInSeconds;
  /// Destination server for DNS queries to be forwarded from localDNS.
  final pulumi.Input<dynamic>? forwardDestination;
  /// Forward policy for selecting upstream DNS server. See [forward plugin](https://coredns.io/plugins/forward) for more information.
  final pulumi.Input<dynamic>? forwardPolicy;
  /// Maximum number of concurrent queries. See [forward plugin](https://coredns.io/plugins/forward) for more information.
  final pulumi.Input<int?>? maxConcurrent;
  /// Enforce TCP or prefer UDP protocol for connections from localDNS to upstream DNS server.
  final pulumi.Input<dynamic>? protocol;
  /// Log level for DNS queries in localDNS.
  final pulumi.Input<dynamic>? queryLogging;
  /// Policy for serving stale data. See [cache plugin](https://coredns.io/plugins/cache) for more information.
  final pulumi.Input<dynamic>? serveStale;
  /// Serve stale duration in seconds. See [cache plugin](https://coredns.io/plugins/cache) for more information.
  final pulumi.Input<int?>? serveStaleDurationInSeconds;

  /// Creates a new [LocalDNSOverride].
  /// [cacheDurationInSeconds] Cache max TTL in seconds. See [cache plugin](https://coredns.io/plugins/cache) for more information.
  /// [forwardDestination] Destination server for DNS queries to be forwarded from localDNS.
  /// [forwardPolicy] Forward policy for selecting upstream DNS server. See [forward plugin](https://coredns.io/plugins/forward) for more information.
  /// [maxConcurrent] Maximum number of concurrent queries. See [forward plugin](https://coredns.io/plugins/forward) for more information.
  /// [protocol] Enforce TCP or prefer UDP protocol for connections from localDNS to upstream DNS server.
  /// [queryLogging] Log level for DNS queries in localDNS.
  /// [serveStale] Policy for serving stale data. See [cache plugin](https://coredns.io/plugins/cache) for more information.
  /// [serveStaleDurationInSeconds] Serve stale duration in seconds. See [cache plugin](https://coredns.io/plugins/cache) for more information.
  LocalDNSOverride({
    pulumi.Input<int?>? cacheDurationInSeconds,
    pulumi.Input<dynamic>? forwardDestination,
    pulumi.Input<dynamic>? forwardPolicy,
    pulumi.Input<int?>? maxConcurrent,
    pulumi.Input<dynamic>? protocol,
    pulumi.Input<dynamic>? queryLogging,
    pulumi.Input<dynamic>? serveStale,
    pulumi.Input<int?>? serveStaleDurationInSeconds,
  }) : cacheDurationInSeconds = cacheDurationInSeconds ?? pulumi.Input.fromValue(3600), forwardDestination = forwardDestination ?? pulumi.Input.fromValue('ClusterCoreDNS'), forwardPolicy = forwardPolicy ?? pulumi.Input.fromValue('Sequential'), maxConcurrent = maxConcurrent ?? pulumi.Input.fromValue(1000), protocol = protocol ?? pulumi.Input.fromValue('PreferUDP'), queryLogging = queryLogging ?? pulumi.Input.fromValue('Error'), serveStale = serveStale ?? pulumi.Input.fromValue('Immediate'), serveStaleDurationInSeconds = serveStaleDurationInSeconds ?? pulumi.Input.fromValue(3600);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cacheDurationInSeconds': ?cacheDurationInSeconds,
      'forwardDestination': ?forwardDestination,
      'forwardPolicy': ?forwardPolicy,
      'maxConcurrent': ?maxConcurrent,
      'protocol': ?protocol,
      'queryLogging': ?queryLogging,
      'serveStale': ?serveStale,
      'serveStaleDurationInSeconds': ?serveStaleDurationInSeconds,
    };
  }

  factory LocalDNSOverride.fromMap(Map<String, dynamic> map) {
    return LocalDNSOverride(
      cacheDurationInSeconds: (() { final guardedValue = map['cacheDurationInSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      forwardDestination: (() { final guardedValue = map['forwardDestination']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      forwardPolicy: (() { final guardedValue = map['forwardPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      maxConcurrent: (() { final guardedValue = map['maxConcurrent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      protocol: (() { final guardedValue = map['protocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      queryLogging: (() { final guardedValue = map['queryLogging']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      serveStale: (() { final guardedValue = map['serveStale']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      serveStaleDurationInSeconds: (() { final guardedValue = map['serveStaleDurationInSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
