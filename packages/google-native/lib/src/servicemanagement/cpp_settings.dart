// ignore_for_file: unused_element, unnecessary_cast

import 'common_language_settings.dart';

/// Settings for C++ client libraries.
class CppSettings {
  /// Some settings.
  final CommonLanguageSettings? common;

  /// Creates a new [CppSettings].
  /// [common] Some settings.
  CppSettings({
    this.common,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'common': ?common == null ? null : common!.toMap(),
    };
  }

  factory CppSettings.fromMap(Map<String, dynamic> map) {
    return CppSettings(
      common: map['common'] == null ? null : CommonLanguageSettings.fromMap((map['common'] as Map).cast<String, dynamic>()),
    );
  }
}

