// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_application_configuration_application_code_configuration_code_content.dart';

class ApplicationApplicationConfigurationApplicationCodeConfiguration {
  /// The location and type of the application code.
  final pulumi.Input<
    ApplicationApplicationConfigurationApplicationCodeConfigurationCodeContent
  >?
  codeContent;

  /// Specifies whether the code content is in text or zip format. Valid values: `PLAINTEXT`, `ZIPFILE`.
  final pulumi.Input<String> codeContentType;

  /// Creates a new [ApplicationApplicationConfigurationApplicationCodeConfiguration].
  /// [codeContent] The location and type of the application code.
  /// [codeContentType] Specifies whether the code content is in text or zip format. Valid values: `PLAINTEXT`, `ZIPFILE`.
  ApplicationApplicationConfigurationApplicationCodeConfiguration({
    this.codeContent,
    required this.codeContentType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'codeContent':
          ?pulumi.Input.mapOptionalInputValue<
            ApplicationApplicationConfigurationApplicationCodeConfigurationCodeContent,
            Map<String, dynamic>
          >(codeContent, (value) => value.toMap()),
      'codeContentType': codeContentType,
    };
  }

  factory ApplicationApplicationConfigurationApplicationCodeConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return ApplicationApplicationConfigurationApplicationCodeConfiguration(
      codeContent: (() {
        final guardedValue = map['codeContent'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ApplicationApplicationConfigurationApplicationCodeConfigurationCodeContent.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      codeContentType: pulumi.Input.fromValue(map['codeContentType'] as String),
    );
  }
}
