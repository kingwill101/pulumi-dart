// ignore_for_file: unused_element, unnecessary_cast

import 'common_language_settings.dart';

/// Settings for Ruby client libraries.
class RubySettings {
  /// Some settings.
  final CommonLanguageSettings? common;

  /// Creates a new [RubySettings].
  /// [common] Some settings.
  RubySettings({
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

  factory RubySettings.fromMap(Map<String, dynamic> map) {
    return RubySettings(
      common: map['common'] == null
          ? null
          : CommonLanguageSettings.fromMap(
              (map['common'] as Map).cast<String, dynamic>()),
    );
  }
}
