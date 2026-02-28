// ignore_for_file: unused_element, unnecessary_cast

/// A quantity based policy specifies that a certain number of the most recent successful backups should be retained.
class QuantityBasedRetentionResponseAlloydbV1alpha {
  /// The number of backups to retain.
  final int count;

  /// Creates a new [QuantityBasedRetentionResponseAlloydbV1alpha].
  /// [count] The number of backups to retain.
  QuantityBasedRetentionResponseAlloydbV1alpha({
    required this.count,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['count'] = count;
    return map;
  }

  factory QuantityBasedRetentionResponseAlloydbV1alpha.fromMap(
      Map<String, dynamic> map) {
    return QuantityBasedRetentionResponseAlloydbV1alpha(
      count: map['count'] as int,
    );
  }
}
