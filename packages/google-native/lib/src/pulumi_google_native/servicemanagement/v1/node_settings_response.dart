// ignore_for_file: unused_element, unnecessary_cast

import 'common_language_settings_response.dart';

/// Settings for Node client libraries.
class NodeSettingsResponse {
  /// Some settings.
  final CommonLanguageSettingsResponse common;

  NodeSettingsResponse({
    required this.common,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['common'] = common.toMap();
    return map;
  }

  factory NodeSettingsResponse.fromMap(Map<String, dynamic> map) {
    return NodeSettingsResponse(
      common: CommonLanguageSettingsResponse.fromMap(
          (map['common'] as Map).cast<String, dynamic>()),
    );
  }
}
