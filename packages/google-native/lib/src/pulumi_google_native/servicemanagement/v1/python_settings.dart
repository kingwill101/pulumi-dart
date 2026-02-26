// ignore_for_file: unused_element, unnecessary_cast

import 'common_language_settings.dart';

/// Settings for Python client libraries.
class PythonSettings {
  /// Some settings.
  final CommonLanguageSettings? common;

  PythonSettings({
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

  factory PythonSettings.fromMap(Map<String, dynamic> map) {
    return PythonSettings(
      common: map['common'] == null
          ? null
          : CommonLanguageSettings.fromMap(
              (map['common'] as Map).cast<String, dynamic>()),
    );
  }
}
