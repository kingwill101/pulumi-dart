// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudbilling_v1_billing_account_args_doc}
/// The set of arguments for BillingAccount.
/// {@endtemplate}
/// {@macro pulumi_cloudbilling_v1_billing_account_args_doc}
class BillingAccountArgs {
  /// The display name given to the billing account, such as `My Billing Account`. This name is displayed in the Google Cloud Console.
  final pulumi.Input<String>? displayName;

  /// If this account is a [subaccount](https://cloud.google.com/billing/docs/concepts), then this will be the resource name of the parent billing account that it is being resold through. Otherwise this will be empty.
  final pulumi.Input<String>? masterBillingAccount;

  /// Optional. The parent to create a billing account from. Format: - organizations/{organization_id} eg organizations/12345678 - billingAccounts/{billing_account_id} eg `billingAccounts/012345-567890-ABCDEF`
  final pulumi.Input<String>? parent;

  /// Creates a new [BillingAccountArgs].
  /// [displayName] The display name given to the billing account, such as `My Billing Account`. This name is displayed in the Google Cloud Console.
  /// [masterBillingAccount] If this account is a [subaccount](https://cloud.google.com/billing/docs/concepts), then this will be the resource name of the parent billing account that it is being resold through. Otherwise this will be empty.
  /// [parent] Optional. The parent to create a billing account from. Format: - organizations/{organization_id} eg organizations/12345678 - billingAccounts/{billing_account_id} eg `billingAccounts/012345-567890-ABCDEF`
  BillingAccountArgs({
    String? displayName,
    String? masterBillingAccount,
    String? parent,
  })  : displayName = pulumi.Input.asOptionalInput<String>(displayName),
        masterBillingAccount =
            pulumi.Input.asOptionalInput<String>(masterBillingAccount),
        parent = pulumi.Input.asOptionalInput<String>(parent);

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
      displayName:
          map['displayName'] == null ? null : map['displayName'] as String,
      masterBillingAccount: map['masterBillingAccount'] == null
          ? null
          : map['masterBillingAccount'] as String,
      parent: map['parent'] == null ? null : map['parent'] as String,
    );
  }
}
