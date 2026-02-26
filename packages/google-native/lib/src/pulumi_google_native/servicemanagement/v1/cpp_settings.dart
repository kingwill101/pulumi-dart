// ignore_for_file: unused_element, unnecessary_cast

import 'common_language_settings.dart';

/// Settings for C++ client libraries.
class CppSettings {
  /// Some settings.
  final CommonLanguageSettings? common;

  CppSettings({
    this.common,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final commonValue = common;
    if (commonValue != null) {
      map['common'] = commonValue.toMap();
    }
    return map;
  }

  factory CppSettings.fromMap(Map<String, dynamic> map) {
    return CppSettings(
      common: map['common'] == null
          ? null
          : CommonLanguageSettings.fromMap(
              (map['common'] as Map).cast<String, dynamic>()),
    );
  }
}
