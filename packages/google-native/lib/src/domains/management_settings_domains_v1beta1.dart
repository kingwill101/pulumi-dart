// ignore_for_file: unused_element, unnecessary_cast

import 'management_settings_preferred_renewal_method_domains_v1beta1.dart';
import 'management_settings_transfer_lock_state_domains_v1beta1.dart';

/// Defines renewal, billing, and transfer settings for a `Registration`.
class ManagementSettingsDomainsV1beta1 {
  /// Optional. The desired renewal method for this `Registration`. The actual `renewal_method` is automatically updated to reflect this choice. If unset or equal to `RENEWAL_METHOD_UNSPECIFIED`, it will be treated as if it were set to `AUTOMATIC_RENEWAL`. Can't be set to `RENEWAL_DISABLED` during resource creation and can only be updated when the `Registration` resource has state `ACTIVE` or `SUSPENDED`. When `preferred_renewal_method` is set to `AUTOMATIC_RENEWAL` the actual `renewal_method` can be set to `RENEWAL_DISABLED` in case of e.g. problems with the Billing Account or reported domain abuse. In such cases check the `issues` field on the `Registration`. After the problem is resolved the `renewal_method` will be automatically updated to `preferred_renewal_method` in a few hours.
  final ManagementSettingsPreferredRenewalMethodDomainsV1beta1?
      preferredRenewalMethod;

  /// Controls whether the domain can be transferred to another registrar.
  final ManagementSettingsTransferLockStateDomainsV1beta1? transferLockState;

  /// Creates a new [ManagementSettingsDomainsV1beta1].
  /// [preferredRenewalMethod] Optional. The desired renewal method for this `Registration`. The actual `renewal_method` is automatically updated to reflect this choice. If unset or equal to `RENEWAL_METHOD_UNSPECIFIED`, it will be treated as if it were set to `AUTOMATIC_RENEWAL`. Can't be set to `RENEWAL_DISABLED` during resource creation and can only be updated when the `Registration` resource has state `ACTIVE` or `SUSPENDED`. When `preferred_renewal_method` is set to `AUTOMATIC_RENEWAL` the actual `renewal_method` can be set to `RENEWAL_DISABLED` in case of e.g. problems with the Billing Account or reported domain abuse. In such cases check the `issues` field on the `Registration`. After the problem is resolved the `renewal_method` will be automatically updated to `preferred_renewal_method` in a few hours.
  /// [transferLockState] Controls whether the domain can be transferred to another registrar.
  ManagementSettingsDomainsV1beta1({
    this.preferredRenewalMethod,
    this.transferLockState,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final preferredRenewalMethodValue = preferredRenewalMethod;
    if (preferredRenewalMethodValue != null) {
      map['preferredRenewalMethod'] = preferredRenewalMethodValue.value;
    }
    final transferLockStateValue = transferLockState;
    if (transferLockStateValue != null) {
      map['transferLockState'] = transferLockStateValue.value;
    }
    return map;
  }

  factory ManagementSettingsDomainsV1beta1.fromMap(Map<String, dynamic> map) {
    return ManagementSettingsDomainsV1beta1(
      preferredRenewalMethod: map['preferredRenewalMethod'] == null
          ? null
          : ManagementSettingsPreferredRenewalMethodDomainsV1beta1.fromValue(
              map['preferredRenewalMethod'] as String),
      transferLockState: map['transferLockState'] == null
          ? null
          : ManagementSettingsTransferLockStateDomainsV1beta1.fromValue(
              map['transferLockState'] as String),
    );
  }
}
