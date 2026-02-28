// ignore_for_file: unused_element, unnecessary_cast

/// A quantity based policy specifies that a certain number of the most recent successful backups should be retained.
class QuantityBasedRetentionResponse {
  /// The number of backups to retain.
  final int count;

  /// Creates a new [QuantityBasedRetentionResponse].
  /// [count] The number of backups to retain.
  QuantityBasedRetentionResponse({
    required this.count,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['count'] = count;
    return map;
  }

  factory QuantityBasedRetentionResponse.fromMap(Map<String, dynamic> map) {
    return QuantityBasedRetentionResponse(
      count: map['count'] as int,
    );
  }
}
