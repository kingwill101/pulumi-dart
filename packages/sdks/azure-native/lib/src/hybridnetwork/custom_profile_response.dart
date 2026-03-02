// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the custom settings for the virtual machine.
class CustomProfileResponse {
  /// Path for metadata configuration.
  final pulumi.Input<String>? metadataConfigurationPath;

  /// Creates a new [CustomProfileResponse].
  /// [metadataConfigurationPath] Path for metadata configuration.
  CustomProfileResponse({
    this.metadataConfigurationPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metadataConfigurationPath': ?metadataConfigurationPath,
    };
  }

  factory CustomProfileResponse.fromMap(Map<String, dynamic> map) {
    return CustomProfileResponse(
      metadataConfigurationPath: map['metadataConfigurationPath'] == null ? null : (map['metadataConfigurationPath']! as String).input(),
    );
  }
}

