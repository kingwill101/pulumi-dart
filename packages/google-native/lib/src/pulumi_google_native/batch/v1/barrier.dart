// ignore_for_file: unused_element, unnecessary_cast

/// Barrier runnable blocks until all tasks in a taskgroup reach it.
class Barrier {
  /// Barriers are identified by their index in runnable list. Names are not required, but if present should be an identifier.
  final String? name;

  Barrier({
    this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    return map;
  }

  factory Barrier.fromMap(Map<String, dynamic> map) {
    return Barrier(
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}
