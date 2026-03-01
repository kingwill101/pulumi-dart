// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getEntry.
class GetEntryResult {
  /// Resource URI that can be used to identify the scope of the key value map entries.
  final String name;

  /// Data or payload that is being retrieved and associated with the unique key.
  final String value;

  /// Creates a new [GetEntryResult].
  /// [name] Resource URI that can be used to identify the scope of the key value map entries.
  /// [value] Data or payload that is being retrieved and associated with the unique key.
  GetEntryResult({required this.name, required this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'value': value};
  }

  factory GetEntryResult.fromMap(Map<String, dynamic> map) {
    return GetEntryResult(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}
