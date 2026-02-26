// ignore_for_file: unused_element, unnecessary_cast

class RegistrationManagementSettings {
  /// The desired renewal method for this Registration. The actual renewalMethod is automatically updated to reflect this choice.
  /// If unset or equal to RENEWAL_METHOD_UNSPECIFIED, the actual renewalMethod is treated as if it were set to AUTOMATIC_RENEWAL.
  /// You cannot use RENEWAL_DISABLED during resource creation, and you can update the renewal status only when the Registration
  /// resource has state ACTIVE or SUSPENDED.
  /// When preferredRenewalMethod is set to AUTOMATIC_RENEWAL, the actual renewalMethod can be set to RENEWAL_DISABLED in case of
  /// problems with the billing account or reported domain abuse. In such cases, check the issues field on the Registration. After
  /// the problem is resolved, the renewalMethod is automatically updated to preferredRenewalMethod in a few hours.
  final String? preferredRenewalMethod;

  /// (Output)
  /// Output only. The actual renewal method for this Registration. When preferredRenewalMethod is set to AUTOMATIC_RENEWAL,
  /// the actual renewalMethod can be equal to RENEWAL_DISABLED—for example, when there are problems with the billing account
  /// or reported domain abuse. In such cases, check the issues field on the Registration. After the problem is resolved, the
  /// renewalMethod is automatically updated to preferredRenewalMethod in a few hours.
  final String? renewalMethod;

  /// Controls whether the domain can be transferred to another registrar. Values are UNLOCKED or LOCKED.
  final String? transferLockState;

  RegistrationManagementSettings({
    this.preferredRenewalMethod,
    this.renewalMethod,
    this.transferLockState,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final preferredRenewalMethodValue = preferredRenewalMethod;
    if (preferredRenewalMethodValue != null) {
      map['preferredRenewalMethod'] = preferredRenewalMethodValue;
    }
    final renewalMethodValue = renewalMethod;
    if (renewalMethodValue != null) {
      map['renewalMethod'] = renewalMethodValue;
    }
    final transferLockStateValue = transferLockState;
    if (transferLockStateValue != null) {
      map['transferLockState'] = transferLockStateValue;
    }
    return map;
  }

  factory RegistrationManagementSettings.fromMap(Map<String, dynamic> map) {
    return RegistrationManagementSettings(
      preferredRenewalMethod: map['preferredRenewalMethod'] == null
          ? null
          : map['preferredRenewalMethod'] as String,
      renewalMethod:
          map['renewalMethod'] == null ? null : map['renewalMethod'] as String,
      transferLockState: map['transferLockState'] == null
          ? null
          : map['transferLockState'] as String,
    );
  }
}
