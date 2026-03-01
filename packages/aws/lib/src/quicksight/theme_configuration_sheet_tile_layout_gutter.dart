// ignore_for_file: unused_element, unnecessary_cast

class ThemeConfigurationSheetTileLayoutGutter {
  /// This Boolean value controls whether to display a gutter space between sheet tiles.
  final bool? show;

  /// Creates a new [ThemeConfigurationSheetTileLayoutGutter].
  /// [show] This Boolean value controls whether to display a gutter space between sheet tiles.
  ThemeConfigurationSheetTileLayoutGutter({this.show});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'show': ?show};
  }

  factory ThemeConfigurationSheetTileLayoutGutter.fromMap(
    Map<String, dynamic> map,
  ) {
    return ThemeConfigurationSheetTileLayoutGutter(
      show: map['show'] == null ? null : map['show'] as bool,
    );
  }
}
