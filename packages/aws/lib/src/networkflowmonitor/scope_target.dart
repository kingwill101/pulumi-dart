// ignore_for_file: unused_element, unnecessary_cast

import 'scope_target_target_identifier.dart';

class ScopeTarget {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final String region;

  /// A target identifier is a pair of identifying information for a scope.
  final ScopeTargetTargetIdentifier targetIdentifier;

  /// Creates a new [ScopeTarget].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [targetIdentifier] A target identifier is a pair of identifying information for a scope.
  ScopeTarget({
    required this.region,
    required this.targetIdentifier,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['region'] = region;
    map['targetIdentifier'] = targetIdentifier.toMap();
    return map;
  }

  factory ScopeTarget.fromMap(Map<String, dynamic> map) {
    return ScopeTarget(
      region: map['region'] as String,
      targetIdentifier: ScopeTargetTargetIdentifier.fromMap(
          (map['targetIdentifier'] as Map).cast<String, dynamic>()),
    );
  }
}
