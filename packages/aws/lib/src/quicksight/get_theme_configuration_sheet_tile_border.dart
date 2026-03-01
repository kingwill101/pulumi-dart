// ignore_for_file: unused_element, unnecessary_cast

class GetThemeConfigurationSheetTileBorder {
  /// This Boolean value controls whether to display sheet margins.
  final bool show;

  /// Creates a new [GetThemeConfigurationSheetTileBorder].
  /// [show] This Boolean value controls whether to display sheet margins.
  GetThemeConfigurationSheetTileBorder({required this.show});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'show': show};
  }

  factory GetThemeConfigurationSheetTileBorder.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetThemeConfigurationSheetTileBorder(show: map['show'] as bool);
  }
}
