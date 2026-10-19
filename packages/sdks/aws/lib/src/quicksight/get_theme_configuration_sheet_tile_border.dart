// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetThemeConfigurationSheetTileBorder {
  /// Whether to display sheet margins.
  final pulumi.Input<bool> show;

  /// Creates a new [GetThemeConfigurationSheetTileBorder].
  /// [show] Whether to display sheet margins.
  const GetThemeConfigurationSheetTileBorder({
    required this.show,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'show': show,
    };
  }

  factory GetThemeConfigurationSheetTileBorder.fromMap(Map<String, dynamic> map) {
    return GetThemeConfigurationSheetTileBorder(
      show: pulumi.Input.fromValue(map['show'] as bool),
    );
  }
}
