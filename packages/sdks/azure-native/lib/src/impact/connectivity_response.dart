// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'source_or_target_response.dart';

/// Details about connectivity issue. Applicable when root resource causing the issue is not identified. For example, when a VM is impacted due to a network issue, the impacted resource could be VM or the network. In such cases, the connectivity field will have the details about both VM and network.
class ConnectivityResponse {
  /// Port number for the connection
  final pulumi.Input<int>? port;
  /// Protocol used for the connection
  final pulumi.Input<String>? protocol;
  /// Source from which the connection was attempted
  final pulumi.Input<SourceOrTargetResponse>? source;
  /// target which connection was attempted
  final pulumi.Input<SourceOrTargetResponse>? target;

  /// Creates a new [ConnectivityResponse].
  /// [port] Port number for the connection
  /// [protocol] Protocol used for the connection
  /// [source] Source from which the connection was attempted
  /// [target] target which connection was attempted
  const ConnectivityResponse({
    this.port,
    this.protocol,
    this.source,
    this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'port': ?port,
      'protocol': ?protocol,
      'source': ?pulumi.Input.mapOptionalInputValue<SourceOrTargetResponse, Map<String, dynamic>>(source, (value) => value.toMap()),
      'target': ?pulumi.Input.mapOptionalInputValue<SourceOrTargetResponse, Map<String, dynamic>>(target, (value) => value.toMap()),
    };
  }

  factory ConnectivityResponse.fromMap(Map<String, dynamic> map) {
    return ConnectivityResponse(
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      protocol: (() { final guardedValue = map['protocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SourceOrTargetResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      target: (() { final guardedValue = map['target']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SourceOrTargetResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

