// ignore_for_file: unused_element, unnecessary_cast


/// The AS2 agreement envelope settings.
class AS2EnvelopeSettings {
  /// The value indicating whether to auto generate file name.
  final bool autogenerateFileName;
  /// The template for file name.
  final String fileNameTemplate;
  /// The message content type.
  final String messageContentType;
  /// The value indicating whether to suspend message on file name generation error.
  final bool suspendMessageOnFileNameGenerationError;
  /// The value indicating whether to transmit file name in mime header.
  final bool transmitFileNameInMimeHeader;

  /// Creates a new [AS2EnvelopeSettings].
  /// [autogenerateFileName] The value indicating whether to auto generate file name.
  /// [fileNameTemplate] The template for file name.
  /// [messageContentType] The message content type.
  /// [suspendMessageOnFileNameGenerationError] The value indicating whether to suspend message on file name generation error.
  /// [transmitFileNameInMimeHeader] The value indicating whether to transmit file name in mime header.
  AS2EnvelopeSettings({
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

  factory AS2EnvelopeSettings.fromMap(Map<String, dynamic> map) {
    return AS2EnvelopeSettings(
      autogenerateFileName: map['autogenerateFileName'] as bool,
      fileNameTemplate: map['fileNameTemplate'] as String,
      messageContentType: map['messageContentType'] as String,
      suspendMessageOnFileNameGenerationError: map['suspendMessageOnFileNameGenerationError'] as bool,
      transmitFileNameInMimeHeader: map['transmitFileNameInMimeHeader'] as bool,
    );
  }
}

