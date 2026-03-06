// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterV2ManagerDns {
  /// The scheduler type. Valid values:
  ///
  /// - SLURM
  /// - PBS
  /// - OPENGRIDSCHEDULER
  /// - LSF_PLUGIN
  /// - PBS_PLUGIN
  final pulumi.Input<String>? type;
  final pulumi.Input<String>? version;

  /// Creates a new [ClusterV2ManagerDns].
  /// [type] The scheduler type. Valid values:
  /// [version] Optional.
  const ClusterV2ManagerDns({
    this.type,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
      'version': ?version,
    };
  }

  factory ClusterV2ManagerDns.fromMap(Map<String, dynamic> map) {
    return ClusterV2ManagerDns(
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

