// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of EstablishedMultiRegionAccessPointPolicy
class EstablishedMultiRegionAccessPointPolicy {
  /// &lt;p&gt;The details of the last established policy.&lt;/p&gt;
  final pulumi.Input<String>? policy;

  /// Creates a new [EstablishedMultiRegionAccessPointPolicy].
  /// [policy] &lt;p&gt;The details of the last established policy.&lt;/p&gt;
  const EstablishedMultiRegionAccessPointPolicy({
    this.policy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policy': ?policy,
    };
  }

  factory EstablishedMultiRegionAccessPointPolicy.fromMap(Map<String, dynamic> map) {
    return EstablishedMultiRegionAccessPointPolicy(
      policy: (() { final guardedValue = map['policy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

