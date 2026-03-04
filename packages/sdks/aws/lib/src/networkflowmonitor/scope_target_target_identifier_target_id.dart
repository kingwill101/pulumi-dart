// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ScopeTargetTargetIdentifierTargetId {
  /// AWS account ID.
  final pulumi.Input<String> accountId;

  /// Creates a new [ScopeTargetTargetIdentifierTargetId].
  /// [accountId] AWS account ID.
  ScopeTargetTargetIdentifierTargetId({required this.accountId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'accountId': accountId};
  }

  factory ScopeTargetTargetIdentifierTargetId.fromMap(
    Map<String, dynamic> map,
  ) {
    return ScopeTargetTargetIdentifierTargetId(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
    );
  }
}
