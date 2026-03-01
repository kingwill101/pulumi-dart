// ignore_for_file: unused_element, unnecessary_cast


class FeatureStatusResponse {
  /// The status representing the state of this feature.
  final String detailedStatus;
  /// The descriptive message about the current detailed status.
  final String detailedStatusMessage;
  /// The name of the feature.
  final String name;
  /// The version of the feature.
  final String version;

  /// Creates a new [FeatureStatusResponse].
  /// [detailedStatus] The status representing the state of this feature.
  /// [detailedStatusMessage] The descriptive message about the current detailed status.
  /// [name] The name of the feature.
  /// [version] The version of the feature.
  FeatureStatusResponse({
    required this.detailedStatus,
    required this.detailedStatusMessage,
    required this.name,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'detailedStatus': detailedStatus,
      'detailedStatusMessage': detailedStatusMessage,
      'name': name,
      'version': version,
    };
  }

  factory FeatureStatusResponse.fromMap(Map<String, dynamic> map) {
    return FeatureStatusResponse(
      detailedStatus: map['detailedStatus'] as String,
      detailedStatusMessage: map['detailedStatusMessage'] as String,
      name: map['name'] as String,
      version: map['version'] as String,
    );
  }
}

