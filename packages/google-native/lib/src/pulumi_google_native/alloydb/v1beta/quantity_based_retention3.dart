// ignore_for_file: unused_element, unnecessary_cast

/// A quantity based policy specifies that a certain number of the most recent successful backups should be retained.
class QuantityBasedRetention3 {
  /// The number of backups to retain.
  final int? count;

  QuantityBasedRetention3({
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

  factory QuantityBasedRetention3.fromMap(Map<String, dynamic> map) {
    return QuantityBasedRetention3(
      count: map['count'] == null ? null : map['count'] as int,
    );
  }
}
