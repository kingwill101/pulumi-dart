// ignore_for_file: unused_element, unnecessary_cast

import 'scope_target_target_identifier_target_id.dart';

class ScopeTargetTargetIdentifier {
  /// The identifier for a target, which is currently always an account ID.
  final ScopeTargetTargetIdentifierTargetId targetId;

  /// The type of a target. A target type is currently always `ACCOUNT`.
  final String targetType;

  /// Creates a new [ScopeTargetTargetIdentifier].
  /// [targetId] The identifier for a target, which is currently always an account ID.
  /// [targetType] The type of a target. A target type is currently always `ACCOUNT`.
  ScopeTargetTargetIdentifier({
    required this.targetId,
    required this.targetType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['targetId'] = targetId.toMap();
    map['targetType'] = targetType;
    return map;
  }

  factory ScopeTargetTargetIdentifier.fromMap(Map<String, dynamic> map) {
    return ScopeTargetTargetIdentifier(
      targetId: ScopeTargetTargetIdentifierTargetId.fromMap(
          (map['targetId'] as Map).cast<String, dynamic>()),
      targetType: map['targetType'] as String,
    );
  }
}
