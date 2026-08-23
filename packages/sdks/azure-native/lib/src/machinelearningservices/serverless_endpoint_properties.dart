// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'content_safety.dart';
import 'model_settings.dart';

class ServerlessEndpointProperties {
  /// [Required] Specifies the authentication mode for the Serverless endpoint.
  final pulumi.Input<String> authMode;
  /// Specifies the content safety options. If omitted, the default content safety settings will be configured
  final pulumi.Input<ContentSafety>? contentSafety;
  /// The model settings (model id) for the model being serviced on the ServerlessEndpoint.
  final pulumi.Input<ModelSettings>? modelSettings;

  /// Creates a new [ServerlessEndpointProperties].
  /// [authMode] [Required] Specifies the authentication mode for the Serverless endpoint.
  /// [contentSafety] Specifies the content safety options. If omitted, the default content safety settings will be configured
  /// [modelSettings] The model settings (model id) for the model being serviced on the ServerlessEndpoint.
  const ServerlessEndpointProperties({
    required this.authMode,
    this.contentSafety,
    this.modelSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authMode': authMode,
      'contentSafety': ?pulumi.Input.mapOptionalInputValue<ContentSafety, Map<String, dynamic>>(contentSafety, (value) => value.toMap()),
      'modelSettings': ?pulumi.Input.mapOptionalInputValue<ModelSettings, Map<String, dynamic>>(modelSettings, (value) => value.toMap()),
    };
  }

  factory ServerlessEndpointProperties.fromMap(Map<String, dynamic> map) {
    return ServerlessEndpointProperties(
      authMode: pulumi.Input.fromValue(map['authMode'] as String),
      contentSafety: (() { final guardedValue = map['contentSafety']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ContentSafety.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      modelSettings: (() { final guardedValue = map['modelSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ModelSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
