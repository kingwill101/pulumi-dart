// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The compute properties of the cluster. This includes the virtual-cores/memory and scaling options applied to servers in the cluster.
class ComputeProperties {
  /// The compute tier to assign to the cluster, where each tier maps to a virtual-core and memory size. Example values: 'M30', 'M40'.
  final pulumi.Input<String>? tier;

  /// Creates a new [ComputeProperties].
  /// [tier] The compute tier to assign to the cluster, where each tier maps to a virtual-core and memory size. Example values: 'M30', 'M40'.
  ComputeProperties({
    this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tier': ?tier,
    };
  }

  factory ComputeProperties.fromMap(Map<String, dynamic> map) {
    return ComputeProperties(
      tier: (() { final guardedValue = map['tier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

