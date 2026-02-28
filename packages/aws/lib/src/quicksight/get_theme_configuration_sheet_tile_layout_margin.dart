// ignore_for_file: unused_element, unnecessary_cast

class GetThemeConfigurationSheetTileLayoutMargin {
  /// This Boolean value controls whether to display sheet margins.
  final bool show;

  /// Creates a new [GetThemeConfigurationSheetTileLayoutMargin].
  /// [show] This Boolean value controls whether to display sheet margins.
  GetThemeConfigurationSheetTileLayoutMargin({
    required this.show,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['show'] = show;
    return map;
  }

  factory GetThemeConfigurationSheetTileLayoutMargin.fromMap(
      Map<String, dynamic> map) {
    return GetThemeConfigurationSheetTileLayoutMargin(
      show: map['show'] as bool,
    );
  }
}
