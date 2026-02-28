// ignore_for_file: unused_element, unnecessary_cast

import 'common_language_settings_response.dart';

/// Settings for Php client libraries.
class PhpSettingsResponse {
  /// Some settings.
  final CommonLanguageSettingsResponse common;

  /// Creates a new [PhpSettingsResponse].
  /// [common] Some settings.
  PhpSettingsResponse({
    required this.common,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'common': common.toMap(),
    };
  }

  factory PhpSettingsResponse.fromMap(Map<String, dynamic> map) {
    return PhpSettingsResponse(
      common: CommonLanguageSettingsResponse.fromMap((map['common'] as Map).cast<String, dynamic>()),
    );
  }
}

