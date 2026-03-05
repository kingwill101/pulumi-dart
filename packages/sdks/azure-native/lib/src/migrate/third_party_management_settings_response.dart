// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Third Party Management settings.
class ThirdPartyManagementSettingsResponse {
  /// License Cost.
  final pulumi.Input<double> licenseCost;
  /// Support Cost.
  final pulumi.Input<double> supportCost;

  /// Creates a new [ThirdPartyManagementSettingsResponse].
  /// [licenseCost] License Cost.
  /// [supportCost] Support Cost.
  ThirdPartyManagementSettingsResponse({
    required this.licenseCost,
    required this.supportCost,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'licenseCost': licenseCost,
      'supportCost': supportCost,
    };
  }

  factory ThirdPartyManagementSettingsResponse.fromMap(Map<String, dynamic> map) {
    return ThirdPartyManagementSettingsResponse(
      licenseCost: pulumi.Input.fromValue(map['licenseCost'] as double),
      supportCost: pulumi.Input.fromValue(map['supportCost'] as double),
    );
  }
}

