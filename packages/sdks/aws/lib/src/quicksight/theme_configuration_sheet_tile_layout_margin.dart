// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ThemeConfigurationSheetTileLayoutMargin {
  /// This Boolean value controls whether to display sheet margins.
  final pulumi.Input<bool>? show;

  /// Creates a new [ThemeConfigurationSheetTileLayoutMargin].
  /// [show] This Boolean value controls whether to display sheet margins.
  ThemeConfigurationSheetTileLayoutMargin({
    this.show,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'show': ?show,
    };
  }

  factory ThemeConfigurationSheetTileLayoutMargin.fromMap(Map<String, dynamic> map) {
    return ThemeConfigurationSheetTileLayoutMargin(
      show: map['show'] == null ? null : ((map['show'] as bool).input()).input(),
    );
  }
}

