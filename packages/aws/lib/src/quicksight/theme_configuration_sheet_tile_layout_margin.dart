// ignore_for_file: unused_element, unnecessary_cast

class ThemeConfigurationSheetTileLayoutMargin {
  /// This Boolean value controls whether to display sheet margins.
  final bool? show;

  /// Creates a new [ThemeConfigurationSheetTileLayoutMargin].
  /// [show] This Boolean value controls whether to display sheet margins.
  ThemeConfigurationSheetTileLayoutMargin({this.show});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'show': ?show};
  }

  factory ThemeConfigurationSheetTileLayoutMargin.fromMap(
    Map<String, dynamic> map,
  ) {
    return ThemeConfigurationSheetTileLayoutMargin(
      show: map['show'] == null ? null : map['show'] as bool,
    );
  }
}
