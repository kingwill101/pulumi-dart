// ignore_for_file: unused_element, unnecessary_cast

import 'common_language_settings.dart';

/// Settings for Php client libraries.
class PhpSettings {
  /// Some settings.
  final CommonLanguageSettings? common;

  /// Creates a new [PhpSettings].
  /// [common] Some settings.
  PhpSettings({
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

  factory PhpSettings.fromMap(Map<String, dynamic> map) {
    return PhpSettings(
      common: map['common'] == null
          ? null
          : CommonLanguageSettings.fromMap(
              (map['common'] as Map).cast<String, dynamic>()),
    );
  }
}
