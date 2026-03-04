// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cfg_retention_configuration_retention_configuration_args_doc}
/// The set of arguments for RetentionConfiguration.
/// {@endtemplate}
/// {@macro pulumi_cfg_retention_configuration_retention_configuration_args_doc}
class RetentionConfigurationArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The number of days AWS Config stores historical information.
  final pulumi.Input<int> retentionPeriodInDays;

  /// Creates a new [RetentionConfigurationArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [retentionPeriodInDays] The number of days AWS Config stores historical information.
  RetentionConfigurationArgs({
    this.region,
    required this.retentionPeriodInDays,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'retentionPeriodInDays': retentionPeriodInDays,
    };
  }

  factory RetentionConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return RetentionConfigurationArgs(
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      retentionPeriodInDays: pulumi.Input.fromValue(
        map['retentionPeriodInDays'] as int,
      ),
    );
  }
}
