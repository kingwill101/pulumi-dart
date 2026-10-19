// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_application_configuration_application_code_configuration_code_content.dart';

class ApplicationApplicationConfigurationApplicationCodeConfiguration {
  /// Location and type of the application code. See `codeContent` Block below.
  final pulumi.Input<ApplicationApplicationConfigurationApplicationCodeConfigurationCodeContent?>? codeContent;
  /// Whether the code content is in text or zip format. Valid values: `PLAINTEXT`, `ZIPFILE`.
  final pulumi.Input<String> codeContentType;

  /// Creates a new [ApplicationApplicationConfigurationApplicationCodeConfiguration].
  /// [codeContent] Location and type of the application code. See `codeContent` Block below.
  /// [codeContentType] Whether the code content is in text or zip format. Valid values: `PLAINTEXT`, `ZIPFILE`.
  const ApplicationApplicationConfigurationApplicationCodeConfiguration({
    this.codeContent,
    required this.codeContentType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'codeContent': ?pulumi.Input.mapOptionalInputValue<ApplicationApplicationConfigurationApplicationCodeConfigurationCodeContent, Map<String, dynamic>>(codeContent, (value) => value.toMap()),
      'codeContentType': codeContentType,
    };
  }

  factory ApplicationApplicationConfigurationApplicationCodeConfiguration.fromMap(Map<String, dynamic> map) {
    return ApplicationApplicationConfigurationApplicationCodeConfiguration(
      codeContent: (() { final guardedValue = map['codeContent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApplicationApplicationConfigurationApplicationCodeConfigurationCodeContent.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      codeContentType: pulumi.Input.fromValue(map['codeContentType'] as String),
    );
  }
}
