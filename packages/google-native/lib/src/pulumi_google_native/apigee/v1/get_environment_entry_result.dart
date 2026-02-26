// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getEnvironmentEntry.
class GetEnvironmentEntryResult {
  /// Resource URI that can be used to identify the scope of the key value map entries.
  final String name;

  /// Data or payload that is being retrieved and associated with the unique key.
  final String value;

  GetEnvironmentEntryResult({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['value'] = value;
    return map;
  }

  factory GetEnvironmentEntryResult.fromMap(Map<String, dynamic> map) {
    return GetEnvironmentEntryResult(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}
