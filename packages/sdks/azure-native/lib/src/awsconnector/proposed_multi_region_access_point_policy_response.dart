// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of ProposedMultiRegionAccessPointPolicy
class ProposedMultiRegionAccessPointPolicyResponse {
  /// &lt;p&gt;The details of the proposed policy.&lt;/p&gt;
  final pulumi.Input<String>? policy;

  /// Creates a new [ProposedMultiRegionAccessPointPolicyResponse].
  /// [policy] &lt;p&gt;The details of the proposed policy.&lt;/p&gt;
  const ProposedMultiRegionAccessPointPolicyResponse({
    this.policy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policy': ?policy,
    };
  }

  factory ProposedMultiRegionAccessPointPolicyResponse.fromMap(Map<String, dynamic> map) {
    return ProposedMultiRegionAccessPointPolicyResponse(
      policy: (() { final guardedValue = map['policy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
