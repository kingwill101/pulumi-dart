// ignore_for_file: unused_element, unnecessary_cast

import 'common_language_settings_response.dart';

/// Settings for C++ client libraries.
class CppSettingsResponse {
  /// Some settings.
  final CommonLanguageSettingsResponse common;

  /// Creates a new [CppSettingsResponse].
  /// [common] Some settings.
  CppSettingsResponse({
    required this.common,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['common'] = common.toMap();
    return map;
  }

  factory CppSettingsResponse.fromMap(Map<String, dynamic> map) {
    return CppSettingsResponse(
      common: CommonLanguageSettingsResponse.fromMap(
          (map['common'] as Map).cast<String, dynamic>()),
    );
  }
}
