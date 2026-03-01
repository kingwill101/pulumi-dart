// ignore_for_file: unused_element, unnecessary_cast


class PolicyFileShareRetentionDaily {
  /// The number of daily backups to keep. Must be between `1` and `200` (inclusive)
  final int count;

  /// Creates a new [PolicyFileShareRetentionDaily].
  /// [count] The number of daily backups to keep. Must be between `1` and `200` (inclusive)
  PolicyFileShareRetentionDaily({
    required this.count,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
    };
  }

  factory PolicyFileShareRetentionDaily.fromMap(Map<String, dynamic> map) {
    return PolicyFileShareRetentionDaily(
      count: map['count'] as int,
    );
  }
}

