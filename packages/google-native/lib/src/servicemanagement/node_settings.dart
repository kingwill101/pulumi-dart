// ignore_for_file: unused_element, unnecessary_cast

import 'common_language_settings.dart';

/// Settings for Node client libraries.
class NodeSettings {
  /// Some settings.
  final CommonLanguageSettings? common;

  /// Creates a new [NodeSettings].
  /// [common] Some settings.
  NodeSettings({
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

  factory NodeSettings.fromMap(Map<String, dynamic> map) {
    return NodeSettings(
      common: map['common'] == null
          ? null
          : CommonLanguageSettings.fromMap(
              (map['common'] as Map).cast<String, dynamic>()),
    );
  }
}
