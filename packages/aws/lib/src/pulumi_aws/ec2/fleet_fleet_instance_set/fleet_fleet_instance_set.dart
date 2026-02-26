// ignore_for_file: unused_element, unnecessary_cast

class FleetFleetInstanceSet {
  /// The IDs of the instances.
  final List<String>? instanceIds;

  /// The instance type.
  final String? instanceType;

  /// Indicates if the instance that was launched is a Spot Instance or On-Demand Instance.
  final String? lifecycle;

  /// The value is `Windows` for Windows instances. Otherwise, the value is blank.
  final String? platform;

  FleetFleetInstanceSet({
    this.instanceIds,
    this.instanceType,
    this.lifecycle,
    this.platform,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final instanceIdsValue = instanceIds;
    if (instanceIdsValue != null) {
      map['instanceIds'] = instanceIdsValue;
    }
    final instanceTypeValue = instanceType;
    if (instanceTypeValue != null) {
      map['instanceType'] = instanceTypeValue;
    }
    final lifecycleValue = lifecycle;
    if (lifecycleValue != null) {
      map['lifecycle'] = lifecycleValue;
    }
    final platformValue = platform;
    if (platformValue != null) {
      map['platform'] = platformValue;
    }
    return map;
  }

  factory FleetFleetInstanceSet.fromMap(Map<String, dynamic> map) {
    return FleetFleetInstanceSet(
      instanceIds: map['instanceIds'] == null
          ? null
          : (map['instanceIds'] as List).cast<String>(),
      instanceType:
          map['instanceType'] == null ? null : map['instanceType'] as String,
      lifecycle: map['lifecycle'] == null ? null : map['lifecycle'] as String,
      platform: map['platform'] == null ? null : map['platform'] as String,
    );
  }
}
