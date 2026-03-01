// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by listConnectionKeys.
class ListConnectionKeysResult {
  /// Connection Key
  final String? connectionKey;
  /// Tokens/Claim
  final Map<String, dynamic>? parameterValues;

  /// Creates a new [ListConnectionKeysResult].
  /// [connectionKey] Connection Key
  /// [parameterValues] Tokens/Claim
  ListConnectionKeysResult({
    this.connectionKey,
    this.parameterValues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionKey': ?connectionKey,
      'parameterValues': ?parameterValues,
    };
  }

  factory ListConnectionKeysResult.fromMap(Map<String, dynamic> map) {
    return ListConnectionKeysResult(
      connectionKey: map['connectionKey'] == null ? null : map['connectionKey'] as String,
      parameterValues: map['parameterValues'] == null ? null : (map['parameterValues'] as Map).cast<String, dynamic>(),
    );
  }
}

