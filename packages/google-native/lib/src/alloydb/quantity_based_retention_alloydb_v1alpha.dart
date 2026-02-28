// ignore_for_file: unused_element, unnecessary_cast

/// A quantity based policy specifies that a certain number of the most recent successful backups should be retained.
class QuantityBasedRetentionAlloydbV1alpha {
  /// The number of backups to retain.
  final int? count;

  /// Creates a new [QuantityBasedRetentionAlloydbV1alpha].
  /// [count] The number of backups to retain.
  QuantityBasedRetentionAlloydbV1alpha({
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

  factory QuantityBasedRetentionAlloydbV1alpha.fromMap(
      Map<String, dynamic> map) {
    return QuantityBasedRetentionAlloydbV1alpha(
      count: map['count'] == null ? null : map['count'] as int,
    );
  }
}
