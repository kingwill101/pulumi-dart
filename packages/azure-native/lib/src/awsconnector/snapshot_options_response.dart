// ignore_for_file: unused_element, unnecessary_cast


/// Definition of SnapshotOptions
class SnapshotOptionsResponse {
  /// <p>The time, in UTC format, when OpenSearch Service takes a daily automated snapshot of the specified domain. Default is <code>0</code> hours.</p>
  final int? automatedSnapshotStartHour;

  /// Creates a new [SnapshotOptionsResponse].
  /// [automatedSnapshotStartHour] <p>The time, in UTC format, when OpenSearch Service takes a daily automated snapshot of the specified domain. Default is <code>0</code> hours.</p>
  SnapshotOptionsResponse({
    this.automatedSnapshotStartHour,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automatedSnapshotStartHour': ?automatedSnapshotStartHour,
    };
  }

  factory SnapshotOptionsResponse.fromMap(Map<String, dynamic> map) {
    return SnapshotOptionsResponse(
      automatedSnapshotStartHour: map['automatedSnapshotStartHour'] == null ? null : map['automatedSnapshotStartHour'] as int,
    );
  }
}

