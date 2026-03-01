// ignore_for_file: unused_element, unnecessary_cast


class GetServiceQueryKey {
  /// The value of this Query Key.
  final String key;
  /// The Name of the Search Service.
  final String name;

  /// Creates a new [GetServiceQueryKey].
  /// [key] The value of this Query Key.
  /// [name] The Name of the Search Service.
  GetServiceQueryKey({
    required this.key,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'name': name,
    };
  }

  factory GetServiceQueryKey.fromMap(Map<String, dynamic> map) {
    return GetServiceQueryKey(
      key: map['key'] as String,
      name: map['name'] as String,
    );
  }
}

