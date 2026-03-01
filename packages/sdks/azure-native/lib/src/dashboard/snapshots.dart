// ignore_for_file: unused_element, unnecessary_cast


/// Grafana Snapshots settings
class Snapshots {
  /// Set to false to disable external snapshot publish endpoint
  final bool? externalEnabled;

  /// Creates a new [Snapshots].
  /// [externalEnabled] Set to false to disable external snapshot publish endpoint
  Snapshots({
    this.externalEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'externalEnabled': ?externalEnabled,
    };
  }

  factory Snapshots.fromMap(Map<String, dynamic> map) {
    return Snapshots(
      externalEnabled: map['externalEnabled'] == null ? null : map['externalEnabled'] as bool,
    );
  }
}

