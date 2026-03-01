// ignore_for_file: unused_element, unnecessary_cast

import 'common_language_settings.dart';

/// Settings for Go client libraries.
class GoSettings {
  /// Some settings.
  final CommonLanguageSettings? common;

  /// Creates a new [GoSettings].
  /// [common] Some settings.
  GoSettings({this.common});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'common': ?common == null ? null : common!.toMap(),
    };
  }

  factory GoSettings.fromMap(Map<String, dynamic> map) {
    return GoSettings(
      common: map['common'] == null
          ? null
          : CommonLanguageSettings.fromMap(
              (map['common'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
