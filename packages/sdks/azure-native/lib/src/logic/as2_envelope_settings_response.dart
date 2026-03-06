// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The AS2 agreement envelope settings.
class AS2EnvelopeSettingsResponse {
  /// The value indicating whether to auto generate file name.
  final pulumi.Input<bool> autogenerateFileName;
  /// The template for file name.
  final pulumi.Input<String> fileNameTemplate;
  /// The message content type.
  final pulumi.Input<String> messageContentType;
  /// The value indicating whether to suspend message on file name generation error.
  final pulumi.Input<bool> suspendMessageOnFileNameGenerationError;
  /// The value indicating whether to transmit file name in mime header.
  final pulumi.Input<bool> transmitFileNameInMimeHeader;

  /// Creates a new [AS2EnvelopeSettingsResponse].
  /// [autogenerateFileName] The value indicating whether to auto generate file name.
  /// [fileNameTemplate] The template for file name.
  /// [messageContentType] The message content type.
  /// [suspendMessageOnFileNameGenerationError] The value indicating whether to suspend message on file name generation error.
  /// [transmitFileNameInMimeHeader] The value indicating whether to transmit file name in mime header.
  const AS2EnvelopeSettingsResponse({
    required this.autogenerateFileName,
    required this.fileNameTemplate,
    required this.messageContentType,
    required this.suspendMessageOnFileNameGenerationError,
    required this.transmitFileNameInMimeHeader,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autogenerateFileName': autogenerateFileName,
      'fileNameTemplate': fileNameTemplate,
      'messageContentType': messageContentType,
      'suspendMessageOnFileNameGenerationError': suspendMessageOnFileNameGenerationError,
      'transmitFileNameInMimeHeader': transmitFileNameInMimeHeader,
    };
  }

  factory AS2EnvelopeSettingsResponse.fromMap(Map<String, dynamic> map) {
    return AS2EnvelopeSettingsResponse(
      autogenerateFileName: pulumi.Input.fromValue(map['autogenerateFileName'] as bool),
      fileNameTemplate: pulumi.Input.fromValue(map['fileNameTemplate'] as String),
      messageContentType: pulumi.Input.fromValue(map['messageContentType'] as String),
      suspendMessageOnFileNameGenerationError: pulumi.Input.fromValue(map['suspendMessageOnFileNameGenerationError'] as bool),
      transmitFileNameInMimeHeader: pulumi.Input.fromValue(map['transmitFileNameInMimeHeader'] as bool),
    );
  }
}

