// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetThemeConfigurationSheetTileLayoutGutter {
  /// This Boolean value controls whether to display sheet margins.
  final pulumi.Input<bool> show;

  /// Creates a new [GetThemeConfigurationSheetTileLayoutGutter].
  /// [show] This Boolean value controls whether to display sheet margins.
  const GetThemeConfigurationSheetTileLayoutGutter({
    required this.show,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'show': show,
    };
  }

  factory GetThemeConfigurationSheetTileLayoutGutter.fromMap(Map<String, dynamic> map) {
    return GetThemeConfigurationSheetTileLayoutGutter(
      show: pulumi.Input.fromValue(map['show'] as bool),
    );
  }
}
