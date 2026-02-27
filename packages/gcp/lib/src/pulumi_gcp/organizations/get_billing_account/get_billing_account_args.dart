// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getBillingAccount.
class GetBillingAccountArgs {
  /// The name of the billing account in the form `{billing_account_id}` or `billingAccounts/{billing_account_id}`.
  final Input<String>? billingAccount;

  /// The display name of the billing account.
  final Input<String>? displayName;

  /// `true` if projects associated with the billing account should be read, `false` if this step
  /// should be skipped. Setting `false` may be useful if the user permissions do not allow listing projects. Defaults to `true`.
  ///
  /// > **NOTE:** One of `billing_account` or `display_name` must be specified.
  final Input<bool>? lookupProjects;

  /// `true` if the billing account is open, `false` if the billing account is closed.
  final Input<bool>? open;

  GetBillingAccountArgs({
    this.billingAccount,
    this.displayName,
    this.lookupProjects,
    this.open,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final billingAccountValue = billingAccount;
    if (billingAccountValue != null) {
      map['billingAccount'] = billingAccountValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final lookupProjectsValue = lookupProjects;
    if (lookupProjectsValue != null) {
      map['lookupProjects'] = lookupProjectsValue;
    }
    final openValue = open;
    if (openValue != null) {
      map['open'] = openValue;
    }
    return map;
  }

  factory GetBillingAccountArgs.fromMap(Map<String, dynamic> map) {
    return GetBillingAccountArgs(
      billingAccount: Input.asOptionalInput<String>(map['billingAccount']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      lookupProjects: Input.asOptionalInput<bool>(map['lookupProjects']),
      open: Input.asOptionalInput<bool>(map['open']),
    );
  }
}
