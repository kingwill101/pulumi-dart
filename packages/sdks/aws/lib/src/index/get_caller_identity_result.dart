// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getCallerIdentity.
class GetCallerIdentityResult {
  /// AWS Account ID number of the account that owns or contains the calling entity.
  final String? accountId;
  /// ARN associated with the calling entity.
  final String? arn;
  /// Account ID number of the account that owns or contains the calling entity.
  final String? id;
  /// Unique identifier of the calling entity.
  final String? userId;

  /// Creates a new [GetCallerIdentityResult].
  /// [accountId] AWS Account ID number of the account that owns or contains the calling entity.
  /// [arn] ARN associated with the calling entity.
  /// [id] Account ID number of the account that owns or contains the calling entity.
  /// [userId] Unique identifier of the calling entity.
  const GetCallerIdentityResult({
    this.accountId,
    this.arn,
    this.id,
    this.userId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'arn': ?arn,
      'id': ?id,
      'userId': ?userId,
    };
  }

  factory GetCallerIdentityResult.fromMap(Map<String, dynamic> map) {
    return GetCallerIdentityResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      userId: (() { final guardedValue = map['userId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
