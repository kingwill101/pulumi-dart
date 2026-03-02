// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of EstablishedMultiRegionAccessPointPolicy
class EstablishedMultiRegionAccessPointPolicyResponse {
  /// <p>The details of the last established policy.</p>
  final pulumi.Input<String>? policy;

  /// Creates a new [EstablishedMultiRegionAccessPointPolicyResponse].
  /// [policy] <p>The details of the last established policy.</p>
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
      policy: map['policy'] == null ? null : (map['policy']! as String).input(),
    );
  }
}

