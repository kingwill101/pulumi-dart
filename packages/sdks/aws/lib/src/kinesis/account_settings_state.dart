// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_settings_minimum_throughput_billing_commitment.dart';

/// Input properties used for looking up and filtering AccountSettings resources.
class AccountSettingsState {
  /// Minimum throughput billing commitment configuration. Detailed below.
  final pulumi.Input<AccountSettingsMinimumThroughputBillingCommitment?>? minimumThroughputBillingCommitment;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;

  /// Creates a new [AccountSettingsState].
  /// [minimumThroughputBillingCommitment] Minimum throughput billing commitment configuration. Detailed below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const AccountSettingsState({
    this.minimumThroughputBillingCommitment,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'minimumThroughputBillingCommitment': ?pulumi.Input.mapOptionalInputValue<AccountSettingsMinimumThroughputBillingCommitment, Map<String, dynamic>>(minimumThroughputBillingCommitment, (value) => value.toMap()),
      'region': ?region,
    };
  }

  factory AccountSettingsState.fromMap(Map<String, dynamic> map) {
    return AccountSettingsState(
      minimumThroughputBillingCommitment: (() { final guardedValue = map['minimumThroughputBillingCommitment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccountSettingsMinimumThroughputBillingCommitment.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
