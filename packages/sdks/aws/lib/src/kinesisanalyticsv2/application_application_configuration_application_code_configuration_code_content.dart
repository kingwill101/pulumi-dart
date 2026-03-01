// ignore_for_file: unused_element, unnecessary_cast

import 'application_application_configuration_application_code_configuration_code_content_s3_content_location.dart';

class ApplicationApplicationConfigurationApplicationCodeConfigurationCodeContent {
  /// Information about the Amazon S3 bucket containing the application code.
  final ApplicationApplicationConfigurationApplicationCodeConfigurationCodeContentS3ContentLocation? s3ContentLocation;
  /// The text-format code for the application.
  final String? textContent;

  /// Creates a new [ApplicationApplicationConfigurationApplicationCodeConfigurationCodeContent].
  /// [s3ContentLocation] Information about the Amazon S3 bucket containing the application code.
  /// [textContent] The text-format code for the application.
  ApplicationApplicationConfigurationApplicationCodeConfigurationCodeContent({
    this.s3ContentLocation,
    this.textContent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      's3ContentLocation': ?s3ContentLocation == null ? null : s3ContentLocation!.toMap(),
      'textContent': ?textContent,
    };
  }

  factory ApplicationApplicationConfigurationApplicationCodeConfigurationCodeContent.fromMap(Map<String, dynamic> map) {
    return ApplicationApplicationConfigurationApplicationCodeConfigurationCodeContent(
      s3ContentLocation: map['s3ContentLocation'] == null ? null : ApplicationApplicationConfigurationApplicationCodeConfigurationCodeContentS3ContentLocation.fromMap((map['s3ContentLocation'] as Map).cast<String, dynamic>()),
      textContent: map['textContent'] == null ? null : map['textContent'] as String,
    );
  }
}

