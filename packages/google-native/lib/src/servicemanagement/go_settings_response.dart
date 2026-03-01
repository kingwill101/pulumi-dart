// ignore_for_file: unused_element, unnecessary_cast

import 'common_language_settings_response.dart';

/// Settings for Go client libraries.
class GoSettingsResponse {
  /// Some settings.
  final CommonLanguageSettingsResponse common;

  /// Creates a new [GoSettingsResponse].
  /// [common] Some settings.
  GoSettingsResponse({required this.common});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'common': common.toMap()};
  }

  factory GoSettingsResponse.fromMap(Map<String, dynamic> map) {
    return GoSettingsResponse(
      common: CommonLanguageSettingsResponse.fromMap(
        (map['common'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
