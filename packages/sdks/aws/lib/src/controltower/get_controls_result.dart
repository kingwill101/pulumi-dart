// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getControls.
class GetControlsResult {
  /// List of all the ARNs for the controls applied to the `target_identifier`.
  final List<String> enabledControls;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String region;
  final String targetIdentifier;

  /// Creates a new [GetControlsResult].
  /// [enabledControls] List of all the ARNs for the controls applied to the `target_identifier`.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [region] Required.
  /// [targetIdentifier] Required.
  const GetControlsResult({
    required this.enabledControls,
    required this.id,
    required this.region,
    required this.targetIdentifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabledControls': enabledControls,
      'id': id,
      'region': region,
      'targetIdentifier': targetIdentifier,
    };
  }

  factory GetControlsResult.fromMap(Map<String, dynamic> map) {
    return GetControlsResult(
      enabledControls: (map['enabledControls'] as List).cast<String>(),
      id: map['id'] as String,
      region: map['region'] as String,
      targetIdentifier: map['targetIdentifier'] as String,
    );
  }
}

