// ignore_for_file: unused_element, unnecessary_cast


/// Specifies the custom settings for the virtual machine.
class CustomProfile {
  /// Path for metadata configuration.
  final String? metadataConfigurationPath;

  /// Creates a new [CustomProfile].
  /// [metadataConfigurationPath] Path for metadata configuration.
  CustomProfile({
    this.metadataConfigurationPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metadataConfigurationPath': ?metadataConfigurationPath,
    };
  }

  factory CustomProfile.fromMap(Map<String, dynamic> map) {
    return CustomProfile(
      metadataConfigurationPath: map['metadataConfigurationPath'] == null ? null : map['metadataConfigurationPath'] as String,
    );
  }
}

