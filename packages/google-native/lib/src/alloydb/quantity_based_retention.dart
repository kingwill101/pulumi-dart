// ignore_for_file: unused_element, unnecessary_cast

/// A quantity based policy specifies that a certain number of the most recent successful backups should be retained.
class QuantityBasedRetention {
  /// The number of backups to retain.
  final int? count;

  /// Creates a new [QuantityBasedRetention].
  /// [count] The number of backups to retain.
  QuantityBasedRetention({
    this.count,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final countValue = count;
    if (countValue != null) {
      map['count'] = countValue;
    }
    return map;
  }

  factory QuantityBasedRetention.fromMap(Map<String, dynamic> map) {
    return QuantityBasedRetention(
      count: map['count'] == null ? null : map['count'] as int,
    );
  }
}
