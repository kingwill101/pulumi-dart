// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ThemeConfigurationSheetTileBorder {
  /// Whether to enable display of borders for visuals.
  final pulumi.Input<bool?>? show;

  /// Creates a new [ThemeConfigurationSheetTileBorder].
  /// [show] Whether to enable display of borders for visuals.
  const ThemeConfigurationSheetTileBorder({
    this.show,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'show': ?show,
    };
  }

  factory ThemeConfigurationSheetTileBorder.fromMap(Map<String, dynamic> map) {
    return ThemeConfigurationSheetTileBorder(
      show: (() { final guardedValue = map['show']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
