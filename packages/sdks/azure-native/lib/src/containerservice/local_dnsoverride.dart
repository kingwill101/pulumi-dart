// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Overrides for localDNS profile.
class LocalDNSOverride {
  /// Cache max TTL in seconds. See [cache plugin](https://coredns.io/plugins/cache) for more information.
  final pulumi.Input<int>? cacheDurationInSeconds;
  /// Destination server for DNS queries to be forwarded from localDNS.
  final pulumi.Input<String>? forwardDestination;
  /// Forward policy for selecting upstream DNS server. See [forward plugin](https://coredns.io/plugins/forward) for more information.
  final pulumi.Input<String>? forwardPolicy;
  /// Maximum number of concurrent queries. See [forward plugin](https://coredns.io/plugins/forward) for more information.
  final pulumi.Input<int>? maxConcurrent;
  /// Enforce TCP or prefer UDP protocol for connections from localDNS to upstream DNS server.
  final pulumi.Input<String>? protocol;
  /// Log level for DNS queries in localDNS.
  final pulumi.Input<String>? queryLogging;
  /// Policy for serving stale data. See [cache plugin](https://coredns.io/plugins/cache) for more information.
  final pulumi.Input<String>? serveStale;
  /// Serve stale duration in seconds. See [cache plugin](https://coredns.io/plugins/cache) for more information.
  final pulumi.Input<int>? serveStaleDurationInSeconds;

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
    this.cacheDurationInSeconds,
    this.forwardDestination,
    this.forwardPolicy,
    this.maxConcurrent,
    this.protocol,
    this.queryLogging,
    this.serveStale,
    this.serveStaleDurationInSeconds,
  });

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
      cacheDurationInSeconds: map['cacheDurationInSeconds'] == null ? null : (map['cacheDurationInSeconds']! as int).input(),
      forwardDestination: map['forwardDestination'] == null ? null : (map['forwardDestination']! as String).input(),
      forwardPolicy: map['forwardPolicy'] == null ? null : (map['forwardPolicy']! as String).input(),
      maxConcurrent: map['maxConcurrent'] == null ? null : (map['maxConcurrent']! as int).input(),
      protocol: map['protocol'] == null ? null : (map['protocol']! as String).input(),
      queryLogging: map['queryLogging'] == null ? null : (map['queryLogging']! as String).input(),
      serveStale: map['serveStale'] == null ? null : (map['serveStale']! as String).input(),
      serveStaleDurationInSeconds: map['serveStaleDurationInSeconds'] == null ? null : (map['serveStaleDurationInSeconds']! as int).input(),
    );
  }
}

