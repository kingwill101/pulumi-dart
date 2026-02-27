// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// The set of arguments for BillingAccount.
class BillingAccountArgs {
  /// The display name given to the billing account, such as `My Billing Account`. This name is displayed in the Google Cloud Console.
  final Input<String>? displayName;

  /// If this account is a [subaccount](https://cloud.google.com/billing/docs/concepts), then this will be the resource name of the parent billing account that it is being resold through. Otherwise this will be empty.
  final Input<String>? masterBillingAccount;

  /// Optional. The parent to create a billing account from. Format: - organizations/{organization_id} eg organizations/12345678 - billingAccounts/{billing_account_id} eg `billingAccounts/012345-567890-ABCDEF`
  final Input<String>? parent;

  BillingAccountArgs({
    this.displayName,
    this.masterBillingAccount,
    this.parent,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final masterBillingAccountValue = masterBillingAccount;
    if (masterBillingAccountValue != null) {
      map['masterBillingAccount'] = masterBillingAccountValue;
    }
    final parentValue = parent;
    if (parentValue != null) {
      map['parent'] = parentValue;
    }
    return map;
  }

  factory BillingAccountArgs.fromMap(Map<String, dynamic> map) {
    return BillingAccountArgs(
      displayName: Input.asOptionalInput<String>(map['displayName']),
      masterBillingAccount:
          Input.asOptionalInput<String>(map['masterBillingAccount']),
      parent: Input.asOptionalInput<String>(map['parent']),
    );
  }
}
