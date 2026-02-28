// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getCallerIdentity.
class GetCallerIdentityResult {
  /// AWS Account ID number of the account that owns or contains the calling entity.
  final String accountId;

  /// ARN associated with the calling entity.
  final String arn;

  /// Account ID number of the account that owns or contains the calling entity.
  final String id;

  /// Unique identifier of the calling entity.
  final String userId;

  /// Creates a new [GetCallerIdentityResult].
  /// [accountId] AWS Account ID number of the account that owns or contains the calling entity.
  /// [arn] ARN associated with the calling entity.
  /// [id] Account ID number of the account that owns or contains the calling entity.
  /// [userId] Unique identifier of the calling entity.
  GetCallerIdentityResult({
    required this.accountId,
    required this.arn,
    required this.id,
    required this.userId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accountId'] = accountId;
    map['arn'] = arn;
    map['id'] = id;
    map['userId'] = userId;
    return map;
  }

  factory GetCallerIdentityResult.fromMap(Map<String, dynamic> map) {
    return GetCallerIdentityResult(
      accountId: map['accountId'] as String,
      arn: map['arn'] as String,
      id: map['id'] as String,
      userId: map['userId'] as String,
    );
  }
}
