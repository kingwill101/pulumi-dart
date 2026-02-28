// ignore_for_file: unused_element, unnecessary_cast

class GetThemeConfigurationSheetTileLayoutGutter {
  /// This Boolean value controls whether to display sheet margins.
  final bool show;

  /// Creates a new [GetThemeConfigurationSheetTileLayoutGutter].
  /// [show] This Boolean value controls whether to display sheet margins.
  GetThemeConfigurationSheetTileLayoutGutter({
    required this.show,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['show'] = show;
    return map;
  }

  factory GetThemeConfigurationSheetTileLayoutGutter.fromMap(
      Map<String, dynamic> map) {
    return GetThemeConfigurationSheetTileLayoutGutter(
      show: map['show'] as bool,
    );
  }
}
