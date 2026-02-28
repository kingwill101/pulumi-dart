// ignore_for_file: unused_element, unnecessary_cast

/// Provides compatibility information for a specific metadata store.
class GoogleCloudDataplexV1EntityCompatibilityStatusCompatibilityResponse {
  /// Whether the entity is compatible and can be represented in the metadata store.
  final bool compatible;

  /// Provides additional detail if the entity is incompatible with the metadata store.
  final String reason;

  /// Creates a new [GoogleCloudDataplexV1EntityCompatibilityStatusCompatibilityResponse].
  /// [compatible] Whether the entity is compatible and can be represented in the metadata store.
  /// [reason] Provides additional detail if the entity is incompatible with the metadata store.
  GoogleCloudDataplexV1EntityCompatibilityStatusCompatibilityResponse({
    required this.compatible,
    required this.reason,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['compatible'] = compatible;
    map['reason'] = reason;
    return map;
  }

  factory GoogleCloudDataplexV1EntityCompatibilityStatusCompatibilityResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDataplexV1EntityCompatibilityStatusCompatibilityResponse(
      compatible: map['compatible'] as bool,
      reason: map['reason'] as String,
    );
  }
}
