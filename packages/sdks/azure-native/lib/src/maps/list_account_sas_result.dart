// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by listAccountSas.
class ListAccountSasResult {
  /// The shared access signature access token.
  final String? accountSasToken;

  /// Creates a new [ListAccountSasResult].
  /// [accountSasToken] The shared access signature access token.
  const ListAccountSasResult({
    this.accountSasToken,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountSasToken': ?accountSasToken,
    };
  }

  factory ListAccountSasResult.fromMap(Map<String, dynamic> map) {
    return ListAccountSasResult(
      accountSasToken: (() { final guardedValue = map['accountSasToken']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
