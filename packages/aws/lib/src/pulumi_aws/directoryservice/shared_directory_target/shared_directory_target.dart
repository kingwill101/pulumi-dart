// ignore_for_file: unused_element, unnecessary_cast

class SharedDirectoryTarget {
  /// Identifier of the directory consumer account.
  final String id;

  /// Type of identifier to be used in the `id` field. Valid value is `ACCOUNT`. Default is `ACCOUNT`.
  final String? type;

  SharedDirectoryTarget({
    required this.id,
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    return map;
  }

  factory SharedDirectoryTarget.fromMap(Map<String, dynamic> map) {
    return SharedDirectoryTarget(
      id: map['id'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}
