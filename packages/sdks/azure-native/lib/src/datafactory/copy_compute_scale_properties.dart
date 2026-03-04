// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// CopyComputeScale properties for managed integration runtime.
class CopyComputeScaleProperties {
  /// DIU number setting reserved for copy activity execution. Supported values are multiples of 4 in range 4-256.
  final pulumi.Input<int>? dataIntegrationUnit;

  /// Time to live (in minutes) setting of integration runtime which will execute copy activity.
  final pulumi.Input<int>? timeToLive;

  /// Creates a new [CopyComputeScaleProperties].
  /// [dataIntegrationUnit] DIU number setting reserved for copy activity execution. Supported values are multiples of 4 in range 4-256.
  /// [timeToLive] Time to live (in minutes) setting of integration runtime which will execute copy activity.
  CopyComputeScaleProperties({this.dataIntegrationUnit, this.timeToLive});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataIntegrationUnit': ?dataIntegrationUnit,
      'timeToLive': ?timeToLive,
    };
  }

  factory CopyComputeScaleProperties.fromMap(Map<String, dynamic> map) {
    return CopyComputeScaleProperties(
      dataIntegrationUnit: (() {
        final guardedValue = map['dataIntegrationUnit'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      timeToLive: (() {
        final guardedValue = map['timeToLive'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
