// ignore_for_file: unused_element, unnecessary_cast

import 'common_language_settings_response.dart';

/// Settings for Php client libraries.
class PhpSettingsResponse {
  /// Some settings.
  final CommonLanguageSettingsResponse common;

  PhpSettingsResponse({
    required this.common,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['common'] = common.toMap();
    return map;
  }

  factory PhpSettingsResponse.fromMap(Map<String, dynamic> map) {
    return PhpSettingsResponse(
      common: CommonLanguageSettingsResponse.fromMap(
          (map['common'] as Map).cast<String, dynamic>()),
    );
  }
}
