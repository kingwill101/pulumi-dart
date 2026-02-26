// ignore_for_file: unused_element, unnecessary_cast

class ScopeTargetTargetIdentifierTargetId {
  /// AWS account ID.
  final String accountId;

  ScopeTargetTargetIdentifierTargetId({
    required this.accountId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accountId'] = accountId;
    return map;
  }

  factory ScopeTargetTargetIdentifierTargetId.fromMap(
      Map<String, dynamic> map) {
    return ScopeTargetTargetIdentifierTargetId(
      accountId: map['accountId'] as String,
    );
  }
}
