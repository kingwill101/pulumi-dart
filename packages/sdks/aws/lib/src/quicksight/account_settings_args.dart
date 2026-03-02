// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_settings_timeouts.dart';

/// {@template pulumi_quicksight_account_settings_account_settings_args_doc}
/// The set of arguments for AccountSettings.
/// {@endtemplate}
/// {@macro pulumi_quicksight_account_settings_account_settings_args_doc}
class AccountSettingsArgs {
  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  final pulumi.Input<String>? awsAccountId;
  /// The default namespace for this Amazon Web Services account. Currently, the default is `default`.
  final pulumi.Input<String>? defaultNamespace;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A boolean value that determines whether or not an Amazon QuickSight account can be deleted. If `true`, it does not allow the account to be deleted and results in an error message if a user tries to make a DeleteAccountSubscription request. If `false`, it will allow the account to be deleted.
  final pulumi.Input<bool>? terminationProtectionEnabled;
  final pulumi.Input<AccountSettingsTimeouts>? timeouts;

  /// Creates a new [AccountSettingsArgs].
  /// [awsAccountId] AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  /// [defaultNamespace] The default namespace for this Amazon Web Services account. Currently, the default is `default`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [terminationProtectionEnabled] A boolean value that determines whether or not an Amazon QuickSight account can be deleted. If `true`, it does not allow the account to be deleted and results in an error message if a user tries to make a DeleteAccountSubscription request. If `false`, it will allow the account to be deleted.
  /// [timeouts] Optional.
  AccountSettingsArgs({
    this.awsAccountId,
    this.defaultNamespace,
    this.region,
    this.terminationProtectionEnabled,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsAccountId': ?awsAccountId,
      'defaultNamespace': ?defaultNamespace,
      'region': ?region,
      'terminationProtectionEnabled': ?terminationProtectionEnabled,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<AccountSettingsTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory AccountSettingsArgs.fromMap(Map<String, dynamic> map) {
    return AccountSettingsArgs(
      awsAccountId: map['awsAccountId'] == null ? null : (map['awsAccountId'] as String).input(),
      defaultNamespace: map['defaultNamespace'] == null ? null : (map['defaultNamespace'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      terminationProtectionEnabled: map['terminationProtectionEnabled'] == null ? null : (map['terminationProtectionEnabled'] as bool).input(),
      timeouts: map['timeouts'] == null ? null : (AccountSettingsTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

