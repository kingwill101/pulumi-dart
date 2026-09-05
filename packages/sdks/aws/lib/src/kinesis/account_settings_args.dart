// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_settings_minimum_throughput_billing_commitment.dart';

/// {@template pulumi_kinesis_account_settings_account_settings_args_doc}
/// The set of arguments for AccountSettings.
/// {@endtemplate}
/// {@macro pulumi_kinesis_account_settings_account_settings_args_doc}
class AccountSettingsArgs {
  /// Minimum throughput billing commitment configuration. Detailed below.
  final pulumi.Input<AccountSettingsMinimumThroughputBillingCommitment?>? minimumThroughputBillingCommitment;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;

  /// Creates a new [AccountSettingsArgs].
  /// [minimumThroughputBillingCommitment] Minimum throughput billing commitment configuration. Detailed below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const AccountSettingsArgs({
    this.minimumThroughputBillingCommitment,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'minimumThroughputBillingCommitment': ?pulumi.Input.mapOptionalInputValue<AccountSettingsMinimumThroughputBillingCommitment, Map<String, dynamic>>(minimumThroughputBillingCommitment, (value) => value.toMap()),
      'region': ?region,
    };
  }

  factory AccountSettingsArgs.fromMap(Map<String, dynamic> map) {
    return AccountSettingsArgs(
      minimumThroughputBillingCommitment: (() { final guardedValue = map['minimumThroughputBillingCommitment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccountSettingsMinimumThroughputBillingCommitment.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
