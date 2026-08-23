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
  const AccountSettingsArgs({
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
      awsAccountId: (() { final guardedValue = map['awsAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultNamespace: (() { final guardedValue = map['defaultNamespace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      terminationProtectionEnabled: (() { final guardedValue = map['terminationProtectionEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccountSettingsTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
