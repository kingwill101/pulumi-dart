// ignore_for_file: unused_element, unnecessary_cast


/// Defines the properties for manual resolution.
class ManualResolutionPropertiesResponse {
  /// Gets or sets the target resource ARM ID of the dependent resource if the resource type is Manual.
  final String? targetId;

  /// Creates a new [ManualResolutionPropertiesResponse].
  /// [targetId] Gets or sets the target resource ARM ID of the dependent resource if the resource type is Manual.
  ManualResolutionPropertiesResponse({
    this.targetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'targetId': ?targetId,
    };
  }

  factory ManualResolutionPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ManualResolutionPropertiesResponse(
      targetId: map['targetId'] == null ? null : map['targetId'] as String,
    );
  }
}

