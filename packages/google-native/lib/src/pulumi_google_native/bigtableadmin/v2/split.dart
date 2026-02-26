// ignore_for_file: unused_element, unnecessary_cast

/// An initial split point for a newly created table.
class Split {
  /// Row key to use as an initial tablet boundary.
  final String? key;

  Split({
    this.key,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final keyValue = key;
    if (keyValue != null) {
      map['key'] = keyValue;
    }
    return map;
  }

  factory Split.fromMap(Map<String, dynamic> map) {
    return Split(
      key: map['key'] == null ? null : map['key'] as String,
    );
  }
}
