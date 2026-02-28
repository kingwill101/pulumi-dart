/// Optional. The desired renewal method for this `Registration`. The actual `renewal_method` is automatically updated to reflect this choice. If unset or equal to `RENEWAL_METHOD_UNSPECIFIED`, it will be treated as if it were set to `AUTOMATIC_RENEWAL`. Can't be set to `RENEWAL_DISABLED` during resource creation and can only be updated when the `Registration` resource has state `ACTIVE` or `SUSPENDED`. When `preferred_renewal_method` is set to `AUTOMATIC_RENEWAL` the actual `renewal_method` can be set to `RENEWAL_DISABLED` in case of e.g. problems with the Billing Account or reported domain abuse. In such cases check the `issues` field on the `Registration`. After the problem is resolved the `renewal_method` will be automatically updated to `preferred_renewal_method` in a few hours.
enum ManagementSettingsPreferredRenewalMethod {
  renewalMethodUnspecified("RENEWAL_METHOD_UNSPECIFIED"),
  automaticRenewal("AUTOMATIC_RENEWAL"),
  manualRenewal("MANUAL_RENEWAL"),
  renewalDisabled("RENEWAL_DISABLED");

  const ManagementSettingsPreferredRenewalMethod(this.value);
  final String value;

  static ManagementSettingsPreferredRenewalMethod fromValue(String value) {
    for (final item in ManagementSettingsPreferredRenewalMethod.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown ManagementSettingsPreferredRenewalMethod value: $value');
  }
}
