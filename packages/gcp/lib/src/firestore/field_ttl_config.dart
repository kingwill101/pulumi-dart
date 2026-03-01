// ignore_for_file: unused_element, unnecessary_cast

class FieldTtlConfig {
  /// (Output)
  /// The state of TTL (time-to-live) configuration for documents that have this Field set.
  final String? state;

  /// Creates a new [FieldTtlConfig].
  /// [state] (Output)
  FieldTtlConfig({this.state});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'state': ?state};
  }

  factory FieldTtlConfig.fromMap(Map<String, dynamic> map) {
    return FieldTtlConfig(
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}
