// ignore_for_file: unused_element, unnecessary_cast

/// A quantity based policy specifies that a certain number of the most recent successful backups should be retained.
class QuantityBasedRetentionResponse2 {
  /// The number of backups to retain.
  final int count;

  QuantityBasedRetentionResponse2({
    required this.count,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['count'] = count;
    return map;
  }

  factory QuantityBasedRetentionResponse2.fromMap(Map<String, dynamic> map) {
    return QuantityBasedRetentionResponse2(
      count: map['count'] as int,
    );
  }
}
