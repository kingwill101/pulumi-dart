// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetThemeConfigurationSheetTileLayoutMargin {
  /// This Boolean value controls whether to display sheet margins.
  final pulumi.Input<bool> show;

  /// Creates a new [GetThemeConfigurationSheetTileLayoutMargin].
  /// [show] This Boolean value controls whether to display sheet margins.
  GetThemeConfigurationSheetTileLayoutMargin({
    required this.show,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'show': show,
    };
  }

  factory GetThemeConfigurationSheetTileLayoutMargin.fromMap(Map<String, dynamic> map) {
    return GetThemeConfigurationSheetTileLayoutMargin(
      show: (map['show'] as bool).input(),
    );
  }
}

