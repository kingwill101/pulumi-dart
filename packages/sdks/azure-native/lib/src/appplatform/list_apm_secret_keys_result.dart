// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by listApmSecretKeys.
class ListApmSecretKeysResult {
  /// Collection of the keys for the APM sensitive properties
  final List<String>? value;

  /// Creates a new [ListApmSecretKeysResult].
  /// [value] Collection of the keys for the APM sensitive properties
  const ListApmSecretKeysResult({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory ListApmSecretKeysResult.fromMap(Map<String, dynamic> map) {
    return ListApmSecretKeysResult(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}
