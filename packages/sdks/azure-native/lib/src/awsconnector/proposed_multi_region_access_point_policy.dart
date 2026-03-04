// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of ProposedMultiRegionAccessPointPolicy
class ProposedMultiRegionAccessPointPolicy {
  /// &lt;p&gt;The details of the proposed policy.&lt;/p&gt;
  final pulumi.Input<String>? policy;

  /// Creates a new [ProposedMultiRegionAccessPointPolicy].
  /// [policy] &lt;p&gt;The details of the proposed policy.&lt;/p&gt;
  ProposedMultiRegionAccessPointPolicy({this.policy});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'policy': ?policy};
  }

  factory ProposedMultiRegionAccessPointPolicy.fromMap(
    Map<String, dynamic> map,
  ) {
    return ProposedMultiRegionAccessPointPolicy(
      policy: (() {
        final guardedValue = map['policy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
