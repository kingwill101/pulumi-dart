// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getBillingAccount.
class GetBillingAccountArgs {
  /// The name of the billing account in the form `{billing_account_id}` or `billingAccounts/{billing_account_id}`.
  final Input<String>? billingAccount;

  /// The display name of the billing account.
  final Input<String>? displayName;

  /// <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> if projects associated with the billing account should be read, <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span> if this step
  /// should be skipped. Setting <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span> may be useful if the user permissions do not allow listing projects. Defaults to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  ///
  /// > **NOTE:** One of <span pulumi-lang-nodejs="`billingAccount`" pulumi-lang-dotnet="`BillingAccount`" pulumi-lang-go="`billingAccount`" pulumi-lang-python="`billing_account`" pulumi-lang-yaml="`billingAccount`" pulumi-lang-java="`billingAccount`">`billing_account`</span> or <span pulumi-lang-nodejs="`displayName`" pulumi-lang-dotnet="`DisplayName`" pulumi-lang-go="`displayName`" pulumi-lang-python="`display_name`" pulumi-lang-yaml="`displayName`" pulumi-lang-java="`displayName`">`display_name`</span> must be specified.
  final Input<bool>? lookupProjects;

  /// <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> if the billing account is open, <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span> if the billing account is closed.
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
