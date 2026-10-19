// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ThemeConfigurationSheetTileLayoutGutter {
  /// Whether to display a gutter space between sheet tiles.
  final pulumi.Input<bool?>? show;

  /// Creates a new [ThemeConfigurationSheetTileLayoutGutter].
  /// [show] Whether to display a gutter space between sheet tiles.
  const ThemeConfigurationSheetTileLayoutGutter({
    this.show,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'show': ?show,
    };
  }

  factory ThemeConfigurationSheetTileLayoutGutter.fromMap(Map<String, dynamic> map) {
    return ThemeConfigurationSheetTileLayoutGutter(
      show: (() { final guardedValue = map['show']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
