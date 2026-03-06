// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OntapVolumeTieringPolicy {
  /// Specifies the number of days that user data in a volume must remain inactive before it is considered "cold" and moved to the capacity pool. Used with `AUTO` and `SNAPSHOT_ONLY` tiering policies only. Valid values are whole numbers between 2 and 183. Default values are 31 days for `AUTO` and 2 days for `SNAPSHOT_ONLY`.
  final pulumi.Input<int>? coolingPeriod;
  /// Specifies the tiering policy for the ONTAP volume for moving data to the capacity pool storage. Valid values are `SNAPSHOT_ONLY`, `AUTO`, `ALL`, `NONE`. Default value is `SNAPSHOT_ONLY`.
  final pulumi.Input<String>? name;

  /// Creates a new [OntapVolumeTieringPolicy].
  /// [coolingPeriod] Specifies the number of days that user data in a volume must remain inactive before it is considered "cold" and moved to the capacity pool. Used with `AUTO` and `SNAPSHOT_ONLY` tiering policies only. Valid values are whole numbers between 2 and 183. Default values are 31 days for `AUTO` and 2 days for `SNAPSHOT_ONLY`.
  /// [name] Specifies the tiering policy for the ONTAP volume for moving data to the capacity pool storage. Valid values are `SNAPSHOT_ONLY`, `AUTO`, `ALL`, `NONE`. Default value is `SNAPSHOT_ONLY`.
  const OntapVolumeTieringPolicy({
    this.coolingPeriod,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'coolingPeriod': ?coolingPeriod,
      'name': ?name,
    };
  }

  factory OntapVolumeTieringPolicy.fromMap(Map<String, dynamic> map) {
    return OntapVolumeTieringPolicy(
      coolingPeriod: (() { final guardedValue = map['coolingPeriod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

