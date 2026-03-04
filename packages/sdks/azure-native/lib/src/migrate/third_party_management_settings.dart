// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Third Party Management settings.
class ThirdPartyManagementSettings {
  /// License Cost.
  final pulumi.Input<double> licenseCost;

  /// Support Cost.
  final pulumi.Input<double> supportCost;

  /// Creates a new [ThirdPartyManagementSettings].
  /// [licenseCost] License Cost.
  /// [supportCost] Support Cost.
  ThirdPartyManagementSettings({
    required this.licenseCost,
    required this.supportCost,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'licenseCost': licenseCost,
      'supportCost': supportCost,
    };
  }

  factory ThirdPartyManagementSettings.fromMap(Map<String, dynamic> map) {
    return ThirdPartyManagementSettings(
      licenseCost: pulumi.Input.fromValue(map['licenseCost'] as double),
      supportCost: pulumi.Input.fromValue(map['supportCost'] as double),
    );
  }
}
