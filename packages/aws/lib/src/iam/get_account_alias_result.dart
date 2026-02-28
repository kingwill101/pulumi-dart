// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getAccountAlias.
class GetAccountAliasResult {
  /// Alias associated with the AWS account.
  final String accountAlias;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// Creates a new [GetAccountAliasResult].
  /// [accountAlias] Alias associated with the AWS account.
  /// [id] The provider-assigned unique ID for this managed resource.
  GetAccountAliasResult({
    required this.accountAlias,
    required this.id,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accountAlias'] = accountAlias;
    map['id'] = id;
    return map;
  }

  factory GetAccountAliasResult.fromMap(Map<String, dynamic> map) {
    return GetAccountAliasResult(
      accountAlias: map['accountAlias'] as String,
      id: map['id'] as String,
    );
  }
}
