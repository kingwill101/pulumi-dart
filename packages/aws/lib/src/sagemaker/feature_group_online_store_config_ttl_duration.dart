// ignore_for_file: unused_element, unnecessary_cast

class FeatureGroupOnlineStoreConfigTtlDuration {
  /// TtlDuration time unit. Valid values are `Seconds`, `Minutes`, `Hours`, `Days`, or `Weeks`.
  final String? unit;

  /// TtlDuration time value.
  final int? value;

  /// Creates a new [FeatureGroupOnlineStoreConfigTtlDuration].
  /// [unit] TtlDuration time unit. Valid values are `Seconds`, `Minutes`, `Hours`, `Days`, or `Weeks`.
  /// [value] TtlDuration time value.
  FeatureGroupOnlineStoreConfigTtlDuration({this.unit, this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'unit': ?unit, 'value': ?value};
  }

  factory FeatureGroupOnlineStoreConfigTtlDuration.fromMap(
    Map<String, dynamic> map,
  ) {
    return FeatureGroupOnlineStoreConfigTtlDuration(
      unit: map['unit'] == null ? null : map['unit'] as String,
      value: map['value'] == null ? null : map['value'] as int,
    );
  }
}
