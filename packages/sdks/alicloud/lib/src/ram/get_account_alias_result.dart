// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getAccountAlias.
class GetAccountAliasResult {
  /// Alias of the account.
  final String accountAlias;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String? outputFile;

  /// Creates a new [GetAccountAliasResult].
  /// [accountAlias] Alias of the account.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [outputFile] Optional.
  GetAccountAliasResult({
    required this.accountAlias,
    required this.id,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountAlias': accountAlias,
      'id': id,
      'outputFile': ?outputFile,
    };
  }

  factory GetAccountAliasResult.fromMap(Map<String, dynamic> map) {
    return GetAccountAliasResult(
      accountAlias: map['accountAlias'] as String,
      id: map['id'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
    );
  }
}

