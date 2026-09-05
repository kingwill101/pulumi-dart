// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FeatureGroupOnlineStoreConfigTtlDuration {
  /// TtlDuration time unit. Valid values are `Seconds`, `Minutes`, `Hours`, `Days`, or `Weeks`.
  final pulumi.Input<String?>? unit;
  /// TtlDuration time value.
  final pulumi.Input<int?>? value;

  /// Creates a new [FeatureGroupOnlineStoreConfigTtlDuration].
  /// [unit] TtlDuration time unit. Valid values are `Seconds`, `Minutes`, `Hours`, `Days`, or `Weeks`.
  /// [value] TtlDuration time value.
  const FeatureGroupOnlineStoreConfigTtlDuration({
    this.unit,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'unit': ?unit,
      'value': ?value,
    };
  }

  factory FeatureGroupOnlineStoreConfigTtlDuration.fromMap(Map<String, dynamic> map) {
    return FeatureGroupOnlineStoreConfigTtlDuration(
      unit: (() { final guardedValue = map['unit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
