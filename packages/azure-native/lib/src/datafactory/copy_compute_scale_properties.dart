// ignore_for_file: unused_element, unnecessary_cast


/// CopyComputeScale properties for managed integration runtime.
class CopyComputeScaleProperties {
  /// DIU number setting reserved for copy activity execution. Supported values are multiples of 4 in range 4-256.
  final int? dataIntegrationUnit;
  /// Time to live (in minutes) setting of integration runtime which will execute copy activity.
  final int? timeToLive;

  /// Creates a new [CopyComputeScaleProperties].
  /// [dataIntegrationUnit] DIU number setting reserved for copy activity execution. Supported values are multiples of 4 in range 4-256.
  /// [timeToLive] Time to live (in minutes) setting of integration runtime which will execute copy activity.
  CopyComputeScaleProperties({
    this.dataIntegrationUnit,
    this.timeToLive,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataIntegrationUnit': ?dataIntegrationUnit,
      'timeToLive': ?timeToLive,
    };
  }

  factory CopyComputeScaleProperties.fromMap(Map<String, dynamic> map) {
    return CopyComputeScaleProperties(
      dataIntegrationUnit: map['dataIntegrationUnit'] == null ? null : map['dataIntegrationUnit'] as int,
      timeToLive: map['timeToLive'] == null ? null : map['timeToLive'] as int,
    );
  }
}

