// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FleetFleetInstanceSet {
  /// The IDs of the instances.
  final pulumi.Input<List<String>>? instanceIds;
  /// The instance type.
  final pulumi.Input<String>? instanceType;
  /// Indicates if the instance that was launched is a Spot Instance or On-Demand Instance.
  final pulumi.Input<String>? lifecycle;
  /// The value is `Windows` for Windows instances. Otherwise, the value is blank.
  final pulumi.Input<String>? platform;

  /// Creates a new [FleetFleetInstanceSet].
  /// [instanceIds] The IDs of the instances.
  /// [instanceType] The instance type.
  /// [lifecycle] Indicates if the instance that was launched is a Spot Instance or On-Demand Instance.
  /// [platform] The value is `Windows` for Windows instances. Otherwise, the value is blank.
  const FleetFleetInstanceSet({
    this.instanceIds,
    this.instanceType,
    this.lifecycle,
    this.platform,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceIds': ?instanceIds,
      'instanceType': ?instanceType,
      'lifecycle': ?lifecycle,
      'platform': ?platform,
    };
  }

  factory FleetFleetInstanceSet.fromMap(Map<String, dynamic> map) {
    return FleetFleetInstanceSet(
      instanceIds: (() { final guardedValue = map['instanceIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      instanceType: (() { final guardedValue = map['instanceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lifecycle: (() { final guardedValue = map['lifecycle']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      platform: (() { final guardedValue = map['platform']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
