// ignore_for_file: unused_element, unnecessary_cast


/// CopyComputeScale properties for managed integration runtime.
class CopyComputeScalePropertiesResponse {
  /// DIU number setting reserved for copy activity execution. Supported values are multiples of 4 in range 4-256.
  final int? dataIntegrationUnit;
  /// Time to live (in minutes) setting of integration runtime which will execute copy activity.
  final int? timeToLive;

  /// Creates a new [CopyComputeScalePropertiesResponse].
  /// [dataIntegrationUnit] DIU number setting reserved for copy activity execution. Supported values are multiples of 4 in range 4-256.
  /// [timeToLive] Time to live (in minutes) setting of integration runtime which will execute copy activity.
  CopyComputeScalePropertiesResponse({
    this.dataIntegrationUnit,
    this.timeToLive,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataIntegrationUnit': ?dataIntegrationUnit,
      'timeToLive': ?timeToLive,
    };
  }

  factory CopyComputeScalePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return CopyComputeScalePropertiesResponse(
      dataIntegrationUnit: map['dataIntegrationUnit'] == null ? null : map['dataIntegrationUnit'] as int,
      timeToLive: map['timeToLive'] == null ? null : map['timeToLive'] as int,
    );
  }
}

