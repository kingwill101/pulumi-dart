// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetThemeConfigurationSheetTileLayoutMargin {
  /// Whether to display sheet margins.
  final pulumi.Input<bool> show;

  /// Creates a new [GetThemeConfigurationSheetTileLayoutMargin].
  /// [show] Whether to display sheet margins.
  const GetThemeConfigurationSheetTileLayoutMargin({
    required this.show,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'show': show,
    };
  }

  factory GetThemeConfigurationSheetTileLayoutMargin.fromMap(Map<String, dynamic> map) {
    return GetThemeConfigurationSheetTileLayoutMargin(
      show: pulumi.Input.fromValue(map['show'] as bool),
    );
  }
}
