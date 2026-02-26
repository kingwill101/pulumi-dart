// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getEntry.
class GetEntryResult {
  /// Resource URI that can be used to identify the scope of the key value map entries.
  final String name;

  /// Data or payload that is being retrieved and associated with the unique key.
  final String value;

  GetEntryResult({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['value'] = value;
    return map;
  }

  factory GetEntryResult.fromMap(Map<String, dynamic> map) {
    return GetEntryResult(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}
