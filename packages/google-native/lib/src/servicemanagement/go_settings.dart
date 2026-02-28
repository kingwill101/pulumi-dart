// ignore_for_file: unused_element, unnecessary_cast

import 'common_language_settings.dart';

/// Settings for Go client libraries.
class GoSettings {
  /// Some settings.
  final CommonLanguageSettings? common;

  /// Creates a new [GoSettings].
  /// [common] Some settings.
  GoSettings({
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

  factory GoSettings.fromMap(Map<String, dynamic> map) {
    return GoSettings(
      common: map['common'] == null
          ? null
          : CommonLanguageSettings.fromMap(
              (map['common'] as Map).cast<String, dynamic>()),
    );
  }
}
