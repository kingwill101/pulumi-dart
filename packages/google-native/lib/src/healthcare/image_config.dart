// ignore_for_file: unused_element, unnecessary_cast

import 'image_config_text_redaction_mode.dart';

/// Specifies how to handle de-identification of image pixels.
class ImageConfig {
  /// Determines how to redact text from image.
  final ImageConfigTextRedactionMode? textRedactionMode;

  /// Creates a new [ImageConfig].
  /// [textRedactionMode] Determines how to redact text from image.
  ImageConfig({
    this.textRedactionMode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final textRedactionModeValue = textRedactionMode;
    if (textRedactionModeValue != null) {
      map['textRedactionMode'] = textRedactionModeValue.value;
    }
    return map;
  }

  factory ImageConfig.fromMap(Map<String, dynamic> map) {
    return ImageConfig(
      textRedactionMode: map['textRedactionMode'] == null
          ? null
          : ImageConfigTextRedactionMode.fromValue(
              map['textRedactionMode'] as String),
    );
  }
}
