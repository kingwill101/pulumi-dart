// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getCallerIdentity.
class GetCallerIdentityResult {
  /// Account ID.
  final String accountId;

  /// The Alibaba Cloud Resource Name (ARN) of the user making the call.
  final String arn;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// The type of the princiapal. RAMUser for users.
  final String identityType;

  /// Creates a new [GetCallerIdentityResult].
  /// [accountId] Account ID.
  /// [arn] The Alibaba Cloud Resource Name (ARN) of the user making the call.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identityType] The type of the princiapal. RAMUser for users.
  GetCallerIdentityResult({
    required this.accountId,
    required this.arn,
    required this.id,
    required this.identityType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'arn': arn,
      'id': id,
      'identityType': identityType,
    };
  }

  factory GetCallerIdentityResult.fromMap(Map<String, dynamic> map) {
    return GetCallerIdentityResult(
      accountId: map['accountId'] as String,
      arn: map['arn'] as String,
      id: map['id'] as String,
      identityType: map['identityType'] as String,
    );
  }
}
