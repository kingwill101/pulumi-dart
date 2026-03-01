// ignore_for_file: unused_element, unnecessary_cast


/// Zone details data.
class A2AZoneDetailsResponse {
  /// Source zone info.
  final String? source;
  /// The target zone info.
  final String? target;

  /// Creates a new [A2AZoneDetailsResponse].
  /// [source] Source zone info.
  /// [target] The target zone info.
  A2AZoneDetailsResponse({
    this.source,
    this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'source': ?source,
      'target': ?target,
    };
  }

  factory A2AZoneDetailsResponse.fromMap(Map<String, dynamic> map) {
    return A2AZoneDetailsResponse(
      source: map['source'] == null ? null : map['source'] as String,
      target: map['target'] == null ? null : map['target'] as String,
    );
  }
}

