// ignore_for_file: unused_element, unnecessary_cast


/// Overrides for localDNS profile.
class LocalDNSOverrideResponse {
  /// Cache max TTL in seconds. See [cache plugin](https://coredns.io/plugins/cache) for more information.
  final int? cacheDurationInSeconds;
  /// Destination server for DNS queries to be forwarded from localDNS.
  final String? forwardDestination;
  /// Forward policy for selecting upstream DNS server. See [forward plugin](https://coredns.io/plugins/forward) for more information.
  final String? forwardPolicy;
  /// Maximum number of concurrent queries. See [forward plugin](https://coredns.io/plugins/forward) for more information.
  final int? maxConcurrent;
  /// Enforce TCP or prefer UDP protocol for connections from localDNS to upstream DNS server.
  final String? protocol;
  /// Log level for DNS queries in localDNS.
  final String? queryLogging;
  /// Policy for serving stale data. See [cache plugin](https://coredns.io/plugins/cache) for more information.
  final String? serveStale;
  /// Serve stale duration in seconds. See [cache plugin](https://coredns.io/plugins/cache) for more information.
  final int? serveStaleDurationInSeconds;

  /// Creates a new [LocalDNSOverrideResponse].
  /// [cacheDurationInSeconds] Cache max TTL in seconds. See [cache plugin](https://coredns.io/plugins/cache) for more information.
  /// [forwardDestination] Destination server for DNS queries to be forwarded from localDNS.
  /// [forwardPolicy] Forward policy for selecting upstream DNS server. See [forward plugin](https://coredns.io/plugins/forward) for more information.
  /// [maxConcurrent] Maximum number of concurrent queries. See [forward plugin](https://coredns.io/plugins/forward) for more information.
  /// [protocol] Enforce TCP or prefer UDP protocol for connections from localDNS to upstream DNS server.
  /// [queryLogging] Log level for DNS queries in localDNS.
  /// [serveStale] Policy for serving stale data. See [cache plugin](https://coredns.io/plugins/cache) for more information.
  /// [serveStaleDurationInSeconds] Serve stale duration in seconds. See [cache plugin](https://coredns.io/plugins/cache) for more information.
  LocalDNSOverrideResponse({
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

  factory LocalDNSOverrideResponse.fromMap(Map<String, dynamic> map) {
    return LocalDNSOverrideResponse(
      cacheDurationInSeconds: map['cacheDurationInSeconds'] == null ? null : map['cacheDurationInSeconds'] as int,
      forwardDestination: map['forwardDestination'] == null ? null : map['forwardDestination'] as String,
      forwardPolicy: map['forwardPolicy'] == null ? null : map['forwardPolicy'] as String,
      maxConcurrent: map['maxConcurrent'] == null ? null : map['maxConcurrent'] as int,
      protocol: map['protocol'] == null ? null : map['protocol'] as String,
      queryLogging: map['queryLogging'] == null ? null : map['queryLogging'] as String,
      serveStale: map['serveStale'] == null ? null : map['serveStale'] as String,
      serveStaleDurationInSeconds: map['serveStaleDurationInSeconds'] == null ? null : map['serveStaleDurationInSeconds'] as int,
    );
  }
}

