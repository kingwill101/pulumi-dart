// ignore_for_file: unused_element, unnecessary_cast

import 'plugin_instance_action_curation_config_custom_curation.dart';

class PluginInstanceActionCurationConfig {
  /// Possible values:
  /// CURATION_TYPE_UNSPECIFIED
  /// DEFAULT_CURATION_FOR_API_METADATA
  /// CUSTOM_CURATION_FOR_API_METADATA
  final String? curationType;
  /// Custom curation information for this plugin instance.
  /// Structure is documented below.
  final PluginInstanceActionCurationConfigCustomCuration? customCuration;

  /// Creates a new [PluginInstanceActionCurationConfig].
  /// [curationType] Possible values:
  /// [customCuration] Custom curation information for this plugin instance.
  PluginInstanceActionCurationConfig({
    this.curationType,
    this.customCuration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'curationType': ?curationType,
      'customCuration': ?customCuration == null ? null : customCuration!.toMap(),
    };
  }

  factory PluginInstanceActionCurationConfig.fromMap(Map<String, dynamic> map) {
    return PluginInstanceActionCurationConfig(
      curationType: map['curationType'] == null ? null : map['curationType'] as String,
      customCuration: map['customCuration'] == null ? null : PluginInstanceActionCurationConfigCustomCuration.fromMap((map['customCuration'] as Map).cast<String, dynamic>()),
    );
  }
}

