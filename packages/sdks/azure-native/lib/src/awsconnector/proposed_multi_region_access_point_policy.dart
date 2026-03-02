// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of ProposedMultiRegionAccessPointPolicy
class ProposedMultiRegionAccessPointPolicy {
  /// <p>The details of the proposed policy.</p>
  final pulumi.Input<String>? policy;

  /// Creates a new [ProposedMultiRegionAccessPointPolicy].
  /// [policy] <p>The details of the proposed policy.</p>
  ProposedMultiRegionAccessPointPolicy({
    this.policy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policy': ?policy,
    };
  }

  factory ProposedMultiRegionAccessPointPolicy.fromMap(Map<String, dynamic> map) {
    return ProposedMultiRegionAccessPointPolicy(
      policy: map['policy'] == null ? null : (map['policy']! as String).input(),
    );
  }
}

