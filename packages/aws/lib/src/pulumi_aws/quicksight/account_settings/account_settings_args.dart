// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../account_settings_timeouts/account_settings_timeouts.dart';

/// The set of arguments for AccountSettings.
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

  AccountSettingsArgs({
    this.awsAccountId,
    this.defaultNamespace,
    this.region,
    this.terminationProtectionEnabled,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final awsAccountIdValue = awsAccountId;
    if (awsAccountIdValue != null) {
      map['awsAccountId'] = awsAccountIdValue;
    }
    final defaultNamespaceValue = defaultNamespace;
    if (defaultNamespaceValue != null) {
      map['defaultNamespace'] = defaultNamespaceValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final terminationProtectionEnabledValue = terminationProtectionEnabled;
    if (terminationProtectionEnabledValue != null) {
      map['terminationProtectionEnabled'] = terminationProtectionEnabledValue;
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = pulumi.Input.mapOptionalInputValue<
          AccountSettingsTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory AccountSettingsArgs.fromMap(Map<String, dynamic> map) {
    return AccountSettingsArgs(
      awsAccountId: pulumi.Input.asOptionalInput<String>(map['awsAccountId']),
      defaultNamespace:
          pulumi.Input.asOptionalInput<String>(map['defaultNamespace']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      terminationProtectionEnabled: pulumi.Input.asOptionalInput<bool>(
          map['terminationProtectionEnabled']),
      timeouts: pulumi.Input.asOptionalInput<AccountSettingsTimeouts>(
          map['timeouts']),
    );
  }
}
