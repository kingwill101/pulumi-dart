// ignore_for_file: unused_element, unnecessary_cast

import 'content_safety.dart';
import 'model_settings.dart';

class ServerlessEndpoint {
  /// [Required] Specifies the authentication mode for the Serverless endpoint.
  final String authMode;
  /// Specifies the content safety options. If omitted, the default content safety settings will be configured
  final ContentSafety? contentSafety;
  /// The model settings (model id) for the model being serviced on the ServerlessEndpoint.
  final ModelSettings? modelSettings;

  /// Creates a new [ServerlessEndpoint].
  /// [authMode] [Required] Specifies the authentication mode for the Serverless endpoint.
  /// [contentSafety] Specifies the content safety options. If omitted, the default content safety settings will be configured
  /// [modelSettings] The model settings (model id) for the model being serviced on the ServerlessEndpoint.
  ServerlessEndpoint({
    required this.authMode,
    this.contentSafety,
    this.modelSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authMode': authMode,
      'contentSafety': ?contentSafety == null ? null : contentSafety!.toMap(),
      'modelSettings': ?modelSettings == null ? null : modelSettings!.toMap(),
    };
  }

  factory ServerlessEndpoint.fromMap(Map<String, dynamic> map) {
    return ServerlessEndpoint(
      authMode: map['authMode'] as String,
      contentSafety: map['contentSafety'] == null ? null : ContentSafety.fromMap((map['contentSafety'] as Map).cast<String, dynamic>()),
      modelSettings: map['modelSettings'] == null ? null : ModelSettings.fromMap((map['modelSettings'] as Map).cast<String, dynamic>()),
    );
  }
}

