// ignore_for_file: unused_element, unnecessary_cast

class DeploymentChannelProfileWebWidgetConfig {
  /// The modality of the web widget.
  /// Possible values:
  /// UNKNOWN_MODALITY
  /// CHAT_AND_VOICE
  /// VOICE_ONLY
  /// CHAT_ONLY
  final String? modality;

  /// The theme of the web widget.
  /// Possible values:
  /// UNKNOWN_THEME
  /// LIGHT
  /// DARK
  final String? theme;

  /// The title of the web widget.
  final String? webWidgetTitle;

  /// Creates a new [DeploymentChannelProfileWebWidgetConfig].
  /// [modality] The modality of the web widget.
  /// [theme] The theme of the web widget.
  /// [webWidgetTitle] The title of the web widget.
  DeploymentChannelProfileWebWidgetConfig({
    this.modality,
    this.theme,
    this.webWidgetTitle,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'modality': ?modality,
      'theme': ?theme,
      'webWidgetTitle': ?webWidgetTitle,
    };
  }

  factory DeploymentChannelProfileWebWidgetConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return DeploymentChannelProfileWebWidgetConfig(
      modality: map['modality'] == null ? null : map['modality'] as String,
      theme: map['theme'] == null ? null : map['theme'] as String,
      webWidgetTitle: map['webWidgetTitle'] == null
          ? null
          : map['webWidgetTitle'] as String,
    );
  }
}
