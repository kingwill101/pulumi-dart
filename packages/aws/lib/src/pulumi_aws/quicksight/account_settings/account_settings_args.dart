// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../account_settings_timeouts/account_settings_timeouts.dart';

/// The set of arguments for AccountSettings.
class AccountSettingsArgs {
  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  final Input<String>? awsAccountId;

  /// The default namespace for this Amazon Web Services account. Currently, the default is <span pulumi-lang-nodejs="`default`" pulumi-lang-dotnet="`Default`" pulumi-lang-go="`default`" pulumi-lang-python="`default`" pulumi-lang-yaml="`default`" pulumi-lang-java="`default`">`default`</span>.
  final Input<String>? defaultNamespace;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// A boolean value that determines whether or not an Amazon QuickSight account can be deleted. If <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>, it does not allow the account to be deleted and results in an error message if a user tries to make a DeleteAccountSubscription request. If <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>, it will allow the account to be deleted.
  final Input<bool>? terminationProtectionEnabled;
  final Input<AccountSettingsTimeouts>? timeouts;

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
      map['timeouts'] = Input.mapOptionalInputValue<AccountSettingsTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory AccountSettingsArgs.fromMap(Map<String, dynamic> map) {
    return AccountSettingsArgs(
      awsAccountId: Input.asOptionalInput<String>(map['awsAccountId']),
      defaultNamespace: Input.asOptionalInput<String>(map['defaultNamespace']),
      region: Input.asOptionalInput<String>(map['region']),
      terminationProtectionEnabled:
          Input.asOptionalInput<bool>(map['terminationProtectionEnabled']),
      timeouts: Input.asOptionalInput<AccountSettingsTimeouts>(map['timeouts']),
    );
  }
}
