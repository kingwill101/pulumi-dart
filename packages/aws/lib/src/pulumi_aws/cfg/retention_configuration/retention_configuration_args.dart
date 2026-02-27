// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for RetentionConfiguration.
class RetentionConfigurationArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The number of days AWS Config stores historical information.
  final pulumi.Input<int> retentionPeriodInDays;

  RetentionConfigurationArgs({
    this.region,
    required this.retentionPeriodInDays,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['retentionPeriodInDays'] = retentionPeriodInDays;
    return map;
  }

  factory RetentionConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return RetentionConfigurationArgs(
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      retentionPeriodInDays:
          pulumi.Input.asInput<int>(map['retentionPeriodInDays']),
    );
  }
}
