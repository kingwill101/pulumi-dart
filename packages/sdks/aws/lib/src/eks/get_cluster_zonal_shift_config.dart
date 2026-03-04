// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterZonalShiftConfig {
  /// Whether zonal shift is enabled.
  final pulumi.Input<bool> enabled;

  /// Creates a new [GetClusterZonalShiftConfig].
  /// [enabled] Whether zonal shift is enabled.
  GetClusterZonalShiftConfig({required this.enabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': enabled};
  }

  factory GetClusterZonalShiftConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterZonalShiftConfig(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
