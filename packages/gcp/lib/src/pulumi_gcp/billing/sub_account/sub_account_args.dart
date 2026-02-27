// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for SubAccount.
class SubAccountArgs {
  /// If set to "RENAME_ON_DESTROY" the billing account display_name
  /// will be changed to "Destroyed" along with a timestamp.  If set to "" this will not occur.
  /// Default is "".
  final pulumi.Input<String>? deletionPolicy;

  /// The display name of the billing account.
  final pulumi.Input<String> displayName;

  /// The name of the master billing account that the subaccount
  /// will be created under in the form `{billing_account_id}` or `billingAccounts/{billing_account_id}`.
  final pulumi.Input<String> masterBillingAccount;

  SubAccountArgs({
    this.deletionPolicy,
    required this.displayName,
    required this.masterBillingAccount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final deletionPolicyValue = deletionPolicy;
    if (deletionPolicyValue != null) {
      map['deletionPolicy'] = deletionPolicyValue;
    }
    map['displayName'] = displayName;
    map['masterBillingAccount'] = masterBillingAccount;
    return map;
  }

  factory SubAccountArgs.fromMap(Map<String, dynamic> map) {
    return SubAccountArgs(
      deletionPolicy:
          pulumi.Input.asOptionalInput<String>(map['deletionPolicy']),
      displayName: pulumi.Input.asInput<String>(map['displayName']),
      masterBillingAccount:
          pulumi.Input.asInput<String>(map['masterBillingAccount']),
    );
  }
}
