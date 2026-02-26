// ignore_for_file: unused_element, unnecessary_cast

/// A quantity based policy specifies that a certain number of the most recent successful backups should be retained.
class QuantityBasedRetentionResponse3 {
  /// The number of backups to retain.
  final int count;

  QuantityBasedRetentionResponse3({
    required this.count,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['count'] = count;
    return map;
  }

  factory QuantityBasedRetentionResponse3.fromMap(Map<String, dynamic> map) {
    return QuantityBasedRetentionResponse3(
      count: map['count'] as int,
    );
  }
}
