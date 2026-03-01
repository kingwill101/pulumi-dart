// ignore_for_file: unused_element, unnecessary_cast

import 'source_or_target_response.dart';

/// Details about connectivity issue. Applicable when root resource causing the issue is not identified. For example, when a VM is impacted due to a network issue, the impacted resource could be VM or the network. In such cases, the connectivity field will have the details about both VM and network.
class ConnectivityResponse {
  /// Port number for the connection
  final int? port;
  /// Protocol used for the connection
  final String? protocol;
  /// Source from which the connection was attempted
  final SourceOrTargetResponse? source;
  /// target which connection was attempted
  final SourceOrTargetResponse? target;

  /// Creates a new [ConnectivityResponse].
  /// [port] Port number for the connection
  /// [protocol] Protocol used for the connection
  /// [source] Source from which the connection was attempted
  /// [target] target which connection was attempted
  ConnectivityResponse({
    this.port,
    this.protocol,
    this.source,
    this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'port': ?port,
      'protocol': ?protocol,
      'source': ?source == null ? null : source!.toMap(),
      'target': ?target == null ? null : target!.toMap(),
    };
  }

  factory ConnectivityResponse.fromMap(Map<String, dynamic> map) {
    return ConnectivityResponse(
      port: map['port'] == null ? null : map['port'] as int,
      protocol: map['protocol'] == null ? null : map['protocol'] as String,
      source: map['source'] == null ? null : SourceOrTargetResponse.fromMap((map['source'] as Map).cast<String, dynamic>()),
      target: map['target'] == null ? null : SourceOrTargetResponse.fromMap((map['target'] as Map).cast<String, dynamic>()),
    );
  }
}

