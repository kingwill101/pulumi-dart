// ignore_for_file: unused_element, unnecessary_cast

import 'common_language_settings_response.dart';

/// Settings for Ruby client libraries.
class RubySettingsResponse {
  /// Some settings.
  final CommonLanguageSettingsResponse common;

  /// Creates a new [RubySettingsResponse].
  /// [common] Some settings.
  RubySettingsResponse({
    required this.common,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['common'] = common.toMap();
    return map;
  }

  factory RubySettingsResponse.fromMap(Map<String, dynamic> map) {
    return RubySettingsResponse(
      common: CommonLanguageSettingsResponse.fromMap(
          (map['common'] as Map).cast<String, dynamic>()),
    );
  }
}
