// ignore_for_file: unused_element, unnecessary_cast

import 'common_language_settings.dart';

/// Settings for Python client libraries.
class PythonSettings {
  /// Some settings.
  final CommonLanguageSettings? common;

  /// Creates a new [PythonSettings].
  /// [common] Some settings.
  PythonSettings({
    this.common,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'common': ?common == null ? null : common!.toMap(),
    };
  }

  factory PythonSettings.fromMap(Map<String, dynamic> map) {
    return PythonSettings(
      common: map['common'] == null ? null : CommonLanguageSettings.fromMap((map['common'] as Map).cast<String, dynamic>()),
    );
  }
}

