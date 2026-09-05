// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securityhub_get_enabled_standards_get_enabled_standards_args_doc}
/// Arguments for getEnabledStandards.
/// {@endtemplate}
/// {@macro pulumi_securityhub_get_enabled_standards_get_enabled_standards_args_doc}
class GetEnabledStandardsArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// List of the standards subscription ARNs for the standards to retrieve.
  final pulumi.Input<List<String>?>? standardsSubscriptionArns;

  /// Creates a new [GetEnabledStandardsArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [standardsSubscriptionArns] List of the standards subscription ARNs for the standards to retrieve.
  const GetEnabledStandardsArgs({
    this.region,
    this.standardsSubscriptionArns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'standardsSubscriptionArns': ?standardsSubscriptionArns,
    };
  }

  factory GetEnabledStandardsArgs.fromMap(Map<String, dynamic> map) {
    return GetEnabledStandardsArgs(
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      standardsSubscriptionArns: (() { final guardedValue = map['standardsSubscriptionArns']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
