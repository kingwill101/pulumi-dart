// ignore_for_file: unused_element, unnecessary_cast

/// An initial split point for a newly created table.
class Split {
  /// Row key to use as an initial tablet boundary.
  final String? key;

  /// Creates a new [Split].
  /// [key] Row key to use as an initial tablet boundary.
  Split({this.key});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'key': ?key};
  }

  factory Split.fromMap(Map<String, dynamic> map) {
    return Split(key: map['key'] == null ? null : map['key'] as String);
  }
}
