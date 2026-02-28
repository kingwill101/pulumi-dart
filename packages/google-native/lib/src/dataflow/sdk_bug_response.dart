// ignore_for_file: unused_element, unnecessary_cast

/// A bug found in the Dataflow SDK.
class SdkBugResponse {
  /// How severe the SDK bug is.
  final String severity;

  /// Describes the impact of this SDK bug.
  final String type;

  /// Link to more information on the bug.
  final String uri;

  /// Creates a new [SdkBugResponse].
  /// [severity] How severe the SDK bug is.
  /// [type] Describes the impact of this SDK bug.
  /// [uri] Link to more information on the bug.
  SdkBugResponse({
    required this.severity,
    required this.type,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['severity'] = severity;
    map['type'] = type;
    map['uri'] = uri;
    return map;
  }

  factory SdkBugResponse.fromMap(Map<String, dynamic> map) {
    return SdkBugResponse(
      severity: map['severity'] as String,
      type: map['type'] as String,
      uri: map['uri'] as String,
    );
  }
}
