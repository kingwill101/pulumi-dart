// ignore_for_file: unused_element, unnecessary_cast


/// Purview configuration.
class PurviewConfigurationResponse {
  /// Purview resource id.
  final String? purviewResourceId;

  /// Creates a new [PurviewConfigurationResponse].
  /// [purviewResourceId] Purview resource id.
  PurviewConfigurationResponse({
    this.purviewResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'purviewResourceId': ?purviewResourceId,
    };
  }

  factory PurviewConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return PurviewConfigurationResponse(
      purviewResourceId: map['purviewResourceId'] == null ? null : map['purviewResourceId'] as String,
    );
  }
}

