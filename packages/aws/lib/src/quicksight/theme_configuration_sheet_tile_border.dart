// ignore_for_file: unused_element, unnecessary_cast

class ThemeConfigurationSheetTileBorder {
  /// The option to enable display of borders for visuals.
  final bool? show;

  /// Creates a new [ThemeConfigurationSheetTileBorder].
  /// [show] The option to enable display of borders for visuals.
  ThemeConfigurationSheetTileBorder({this.show});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'show': ?show};
  }

  factory ThemeConfigurationSheetTileBorder.fromMap(Map<String, dynamic> map) {
    return ThemeConfigurationSheetTileBorder(
      show: map['show'] == null ? null : map['show'] as bool,
    );
  }
}
