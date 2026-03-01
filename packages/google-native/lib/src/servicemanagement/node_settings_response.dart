// ignore_for_file: unused_element, unnecessary_cast

import 'common_language_settings_response.dart';

/// Settings for Node client libraries.
class NodeSettingsResponse {
  /// Some settings.
  final CommonLanguageSettingsResponse common;

  /// Creates a new [NodeSettingsResponse].
  /// [common] Some settings.
  NodeSettingsResponse({required this.common});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'common': common.toMap()};
  }

  factory NodeSettingsResponse.fromMap(Map<String, dynamic> map) {
    return NodeSettingsResponse(
      common: CommonLanguageSettingsResponse.fromMap(
        (map['common'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
