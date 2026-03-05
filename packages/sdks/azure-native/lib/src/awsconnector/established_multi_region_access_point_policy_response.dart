// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of EstablishedMultiRegionAccessPointPolicy
class EstablishedMultiRegionAccessPointPolicyResponse {
  /// &lt;p&gt;The details of the last established policy.&lt;/p&gt;
  final pulumi.Input<String>? policy;

  /// Creates a new [EstablishedMultiRegionAccessPointPolicyResponse].
  /// [policy] &lt;p&gt;The details of the last established policy.&lt;/p&gt;
  EstablishedMultiRegionAccessPointPolicyResponse({
    this.policy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policy': ?policy,
    };
  }

  factory EstablishedMultiRegionAccessPointPolicyResponse.fromMap(Map<String, dynamic> map) {
    return EstablishedMultiRegionAccessPointPolicyResponse(
      policy: (() { final guardedValue = map['policy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

