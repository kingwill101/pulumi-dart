// ignore_for_file: unused_element, unnecessary_cast

import 'application_application_configuration_application_code_configuration_code_content.dart';

class ApplicationApplicationConfigurationApplicationCodeConfiguration {
  /// The location and type of the application code.
  final ApplicationApplicationConfigurationApplicationCodeConfigurationCodeContent?
      codeContent;

  /// Specifies whether the code content is in text or zip format. Valid values: `PLAINTEXT`, `ZIPFILE`.
  final String codeContentType;

  /// Creates a new [ApplicationApplicationConfigurationApplicationCodeConfiguration].
  /// [codeContent] The location and type of the application code.
  /// [codeContentType] Specifies whether the code content is in text or zip format. Valid values: `PLAINTEXT`, `ZIPFILE`.
  ApplicationApplicationConfigurationApplicationCodeConfiguration({
    this.codeContent,
    required this.codeContentType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final codeContentValue = codeContent;
    if (codeContentValue != null) {
      map['codeContent'] = codeContentValue.toMap();
    }
    map['codeContentType'] = codeContentType;
    return map;
  }

  factory ApplicationApplicationConfigurationApplicationCodeConfiguration.fromMap(
      Map<String, dynamic> map) {
    return ApplicationApplicationConfigurationApplicationCodeConfiguration(
      codeContent: map['codeContent'] == null
          ? null
          : ApplicationApplicationConfigurationApplicationCodeConfigurationCodeContent
              .fromMap((map['codeContent'] as Map).cast<String, dynamic>()),
      codeContentType: map['codeContentType'] as String,
    );
  }
}
