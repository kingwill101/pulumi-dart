// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scope_target_target_identifier.dart';

class ScopeTarget {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String> region;

  /// A target identifier is a pair of identifying information for a scope.
  final pulumi.Input<ScopeTargetTargetIdentifier> targetIdentifier;

  /// Creates a new [ScopeTarget].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [targetIdentifier] A target identifier is a pair of identifying information for a scope.
  ScopeTarget({required this.region, required this.targetIdentifier});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': region,
      'targetIdentifier':
          pulumi.Input.mapInputValue<
            ScopeTargetTargetIdentifier,
            Map<String, dynamic>
          >(targetIdentifier, (value) => value.toMap()),
    };
  }

  factory ScopeTarget.fromMap(Map<String, dynamic> map) {
    return ScopeTarget(
      region: pulumi.Input.fromValue(map['region'] as String),
      targetIdentifier: pulumi.Input.fromValue(
        ScopeTargetTargetIdentifier.fromMap(
          (map['targetIdentifier']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
