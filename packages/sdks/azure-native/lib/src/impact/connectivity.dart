// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'source_or_target.dart';

/// Details about connectivity issue. Applicable when root resource causing the issue is not identified. For example, when a VM is impacted due to a network issue, the impacted resource could be VM or the network. In such cases, the connectivity field will have the details about both VM and network.
class Connectivity {
  /// Port number for the connection
  final pulumi.Input<int>? port;
  /// Protocol used for the connection
  final pulumi.Input<String>? protocol;
  /// Source from which the connection was attempted
  final pulumi.Input<SourceOrTarget>? source;
  /// target which connection was attempted
  final pulumi.Input<SourceOrTarget>? target;

  /// Creates a new [Connectivity].
  /// [port] Port number for the connection
  /// [protocol] Protocol used for the connection
  /// [source] Source from which the connection was attempted
  /// [target] target which connection was attempted
  Connectivity({
    this.port,
    this.protocol,
    this.source,
    this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'port': ?port,
      'protocol': ?protocol,
      'source': ?pulumi.Input.mapOptionalInputValue<SourceOrTarget, Map<String, dynamic>>(source, (value) => value.toMap()),
      'target': ?pulumi.Input.mapOptionalInputValue<SourceOrTarget, Map<String, dynamic>>(target, (value) => value.toMap()),
    };
  }

  factory Connectivity.fromMap(Map<String, dynamic> map) {
    return Connectivity(
      port: map['port'] == null ? null : (map['port']! as int).input(),
      protocol: map['protocol'] == null ? null : (map['protocol']! as String).input(),
      source: map['source'] == null ? null : (SourceOrTarget.fromMap((map['source']! as Map).cast<String, dynamic>())).input(),
      target: map['target'] == null ? null : (SourceOrTarget.fromMap((map['target']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

