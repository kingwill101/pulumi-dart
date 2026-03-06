// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scope_target_target_identifier_target_id.dart';

class ScopeTargetTargetIdentifier {
  /// The identifier for a target, which is currently always an account ID.
  final pulumi.Input<ScopeTargetTargetIdentifierTargetId> targetId;
  /// The type of a target. A target type is currently always `ACCOUNT`.
  final pulumi.Input<String> targetType;

  /// Creates a new [ScopeTargetTargetIdentifier].
  /// [targetId] The identifier for a target, which is currently always an account ID.
  /// [targetType] The type of a target. A target type is currently always `ACCOUNT`.
  const ScopeTargetTargetIdentifier({
    required this.targetId,
    required this.targetType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'targetId': pulumi.Input.mapInputValue<ScopeTargetTargetIdentifierTargetId, Map<String, dynamic>>(targetId, (value) => value.toMap()),
      'targetType': targetType,
    };
  }

  factory ScopeTargetTargetIdentifier.fromMap(Map<String, dynamic> map) {
    return ScopeTargetTargetIdentifier(
      targetId: pulumi.Input.fromValue(ScopeTargetTargetIdentifierTargetId.fromMap((map['targetId']! as Map).cast<String, dynamic>())),
      targetType: pulumi.Input.fromValue(map['targetType'] as String),
    );
  }
}

