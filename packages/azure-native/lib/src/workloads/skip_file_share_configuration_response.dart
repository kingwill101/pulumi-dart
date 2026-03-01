// ignore_for_file: unused_element, unnecessary_cast


/// Gets or sets the file share configuration for scenarios where transport directory fileshare is not created or required.
class SkipFileShareConfigurationResponse {
  /// The type of file share config.
  /// Expected value is 'Skip'.
  final String configurationType;

  /// Creates a new [SkipFileShareConfigurationResponse].
  /// [configurationType] The type of file share config.
  SkipFileShareConfigurationResponse({
    required this.configurationType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationType': configurationType,
    };
  }

  factory SkipFileShareConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return SkipFileShareConfigurationResponse(
      configurationType: map['configurationType'] as String,
    );
  }
}

