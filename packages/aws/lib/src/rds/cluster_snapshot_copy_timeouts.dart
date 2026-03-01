// ignore_for_file: unused_element, unnecessary_cast

class ClusterSnapshotCopyTimeouts {
  /// A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds), "m" (minutes), "h" (hours).
  final String? create;

  /// Creates a new [ClusterSnapshotCopyTimeouts].
  /// [create] A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds), "m" (minutes), "h" (hours).
  ClusterSnapshotCopyTimeouts({this.create});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'create': ?create};
  }

  factory ClusterSnapshotCopyTimeouts.fromMap(Map<String, dynamic> map) {
    return ClusterSnapshotCopyTimeouts(
      create: map['create'] == null ? null : map['create'] as String,
    );
  }
}
