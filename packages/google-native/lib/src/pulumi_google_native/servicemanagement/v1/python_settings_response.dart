// ignore_for_file: unused_element, unnecessary_cast

import 'common_language_settings_response.dart';

/// Settings for Python client libraries.
class PythonSettingsResponse {
  /// Some settings.
  final CommonLanguageSettingsResponse common;

  PythonSettingsResponse({
    required this.common,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['common'] = common.toMap();
    return map;
  }

  factory PythonSettingsResponse.fromMap(Map<String, dynamic> map) {
    return PythonSettingsResponse(
      common: CommonLanguageSettingsResponse.fromMap(
          (map['common'] as Map).cast<String, dynamic>()),
    );
  }
}
