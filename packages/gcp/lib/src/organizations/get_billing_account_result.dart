// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getBillingAccount.
class GetBillingAccountResult {
  final String? billingAccount;

  /// The currency code of the billing account, e.g. `USD`.
  final String currencyCode;
  final String displayName;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final bool? lookupProjects;

  /// The resource name of the billing account in the form `billingAccounts/{billing_account_id}`.
  final String name;
  final bool open;

  /// The IDs of any projects associated with the billing account. `lookup_projects` must not be false
  /// for this to be populated.
  final List<String> projectIds;

  /// Creates a new [GetBillingAccountResult].
  /// [billingAccount] Optional.
  /// [currencyCode] The currency code of the billing account, e.g. `USD`.
  /// [displayName] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [lookupProjects] Optional.
  /// [name] The resource name of the billing account in the form `billingAccounts/{billing_account_id}`.
  /// [open] Required.
  /// [projectIds] The IDs of any projects associated with the billing account. `lookup_projects` must not be false
  GetBillingAccountResult({
    this.billingAccount,
    required this.currencyCode,
    required this.displayName,
    required this.id,
    this.lookupProjects,
    required this.name,
    required this.open,
    required this.projectIds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final billingAccountValue = billingAccount;
    if (billingAccountValue != null) {
      map['billingAccount'] = billingAccountValue;
    }
    map['currencyCode'] = currencyCode;
    map['displayName'] = displayName;
    map['id'] = id;
    final lookupProjectsValue = lookupProjects;
    if (lookupProjectsValue != null) {
      map['lookupProjects'] = lookupProjectsValue;
    }
    map['name'] = name;
    map['open'] = open;
    map['projectIds'] = projectIds;
    return map;
  }

  factory GetBillingAccountResult.fromMap(Map<String, dynamic> map) {
    return GetBillingAccountResult(
      billingAccount: map['billingAccount'] == null
          ? null
          : map['billingAccount'] as String,
      currencyCode: map['currencyCode'] as String,
      displayName: map['displayName'] as String,
      id: map['id'] as String,
      lookupProjects:
          map['lookupProjects'] == null ? null : map['lookupProjects'] as bool,
      name: map['name'] as String,
      open: map['open'] as bool,
      projectIds: (map['projectIds'] as List).cast<String>(),
    );
  }
}
