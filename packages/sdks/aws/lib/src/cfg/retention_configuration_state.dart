// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering RetentionConfiguration resources.
class RetentionConfigurationState {
  /// The name of the retention configuration object. The object is always named **default**.
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The number of days AWS Config stores historical information.
  final pulumi.Input<int>? retentionPeriodInDays;

  /// Creates a new [RetentionConfigurationState].
  /// [name] The name of the retention configuration object. The object is always named **default**.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [retentionPeriodInDays] The number of days AWS Config stores historical information.
  RetentionConfigurationState({
    this.name,
    this.region,
    this.retentionPeriodInDays,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'region': ?region,
      'retentionPeriodInDays': ?retentionPeriodInDays,
    };
  }

  factory RetentionConfigurationState.fromMap(Map<String, dynamic> map) {
    return RetentionConfigurationState(
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      retentionPeriodInDays: (() {
        final guardedValue = map['retentionPeriodInDays'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
