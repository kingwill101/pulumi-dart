// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getAccountAliases.
class GetAccountAliasesResult {
  final String accountAlias;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String? outputFile;

  /// Creates a new [GetAccountAliasesResult].
  /// [accountAlias] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [outputFile] Optional.
  const GetAccountAliasesResult({
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

  factory GetAccountAliasesResult.fromMap(Map<String, dynamic> map) {
    return GetAccountAliasesResult(
      accountAlias: map['accountAlias'] as String,
      id: map['id'] as String,
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

