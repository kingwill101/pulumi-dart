// ignore_for_file: unused_element, unnecessary_cast


/// Definition of SnapshotOptions
class SnapshotOptions {
  /// <p>The time, in UTC format, when OpenSearch Service takes a daily automated snapshot of the specified domain. Default is <code>0</code> hours.</p>
  final int? automatedSnapshotStartHour;

  /// Creates a new [SnapshotOptions].
  /// [automatedSnapshotStartHour] <p>The time, in UTC format, when OpenSearch Service takes a daily automated snapshot of the specified domain. Default is <code>0</code> hours.</p>
  SnapshotOptions({
    this.automatedSnapshotStartHour,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automatedSnapshotStartHour': ?automatedSnapshotStartHour,
    };
  }

  factory SnapshotOptions.fromMap(Map<String, dynamic> map) {
    return SnapshotOptions(
      automatedSnapshotStartHour: map['automatedSnapshotStartHour'] == null ? null : map['automatedSnapshotStartHour'] as int,
    );
  }
}

