// ignore_for_file: unused_element, unnecessary_cast

class SettingsEmailNotificationSettingsCustomNotificationBehaviorRequesterNotifications {
  /// Notification mode for entitlement assigned.
  /// Possible values are: `NOTIFICATION_MODE_UNSPECIFIED`, `ENABLED`, `DISABLED`.
  final String? entitlementAssigned;

  /// Notification mode for grant activated.
  /// Possible values are: `NOTIFICATION_MODE_UNSPECIFIED`, `ENABLED`, `DISABLED`.
  final String? grantActivated;

  /// Notification mode for grant activation failed.
  /// Possible values are: `NOTIFICATION_MODE_UNSPECIFIED`, `ENABLED`, `DISABLED`.
  final String? grantActivationFailed;

  /// Notification mode for grant denied.
  /// Possible values are: `NOTIFICATION_MODE_UNSPECIFIED`, `ENABLED`, `DISABLED`.
  final String? grantDenied;

  /// Notification mode for grant ended.
  /// Possible values are: `NOTIFICATION_MODE_UNSPECIFIED`, `ENABLED`, `DISABLED`.
  final String? grantEnded;

  /// Notification mode for grant expired.
  /// Possible values are: `NOTIFICATION_MODE_UNSPECIFIED`, `ENABLED`, `DISABLED`.
  final String? grantExpired;

  /// Notification mode for grant externally modified.
  /// Possible values are: `NOTIFICATION_MODE_UNSPECIFIED`, `ENABLED`, `DISABLED`.
  final String? grantExternallyModified;

  /// Notification mode for grant revoked.
  /// Possible values are: `NOTIFICATION_MODE_UNSPECIFIED`, `ENABLED`, `DISABLED`.
  final String? grantRevoked;

  /// Creates a new [SettingsEmailNotificationSettingsCustomNotificationBehaviorRequesterNotifications].
  /// [entitlementAssigned] Notification mode for entitlement assigned.
  /// [grantActivated] Notification mode for grant activated.
  /// [grantActivationFailed] Notification mode for grant activation failed.
  /// [grantDenied] Notification mode for grant denied.
  /// [grantEnded] Notification mode for grant ended.
  /// [grantExpired] Notification mode for grant expired.
  /// [grantExternallyModified] Notification mode for grant externally modified.
  /// [grantRevoked] Notification mode for grant revoked.
  SettingsEmailNotificationSettingsCustomNotificationBehaviorRequesterNotifications({
    this.entitlementAssigned,
    this.grantActivated,
    this.grantActivationFailed,
    this.grantDenied,
    this.grantEnded,
    this.grantExpired,
    this.grantExternallyModified,
    this.grantRevoked,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final entitlementAssignedValue = entitlementAssigned;
    if (entitlementAssignedValue != null) {
      map['entitlementAssigned'] = entitlementAssignedValue;
    }
    final grantActivatedValue = grantActivated;
    if (grantActivatedValue != null) {
      map['grantActivated'] = grantActivatedValue;
    }
    final grantActivationFailedValue = grantActivationFailed;
    if (grantActivationFailedValue != null) {
      map['grantActivationFailed'] = grantActivationFailedValue;
    }
    final grantDeniedValue = grantDenied;
    if (grantDeniedValue != null) {
      map['grantDenied'] = grantDeniedValue;
    }
    final grantEndedValue = grantEnded;
    if (grantEndedValue != null) {
      map['grantEnded'] = grantEndedValue;
    }
    final grantExpiredValue = grantExpired;
    if (grantExpiredValue != null) {
      map['grantExpired'] = grantExpiredValue;
    }
    final grantExternallyModifiedValue = grantExternallyModified;
    if (grantExternallyModifiedValue != null) {
      map['grantExternallyModified'] = grantExternallyModifiedValue;
    }
    final grantRevokedValue = grantRevoked;
    if (grantRevokedValue != null) {
      map['grantRevoked'] = grantRevokedValue;
    }
    return map;
  }

  factory SettingsEmailNotificationSettingsCustomNotificationBehaviorRequesterNotifications.fromMap(
      Map<String, dynamic> map) {
    return SettingsEmailNotificationSettingsCustomNotificationBehaviorRequesterNotifications(
      entitlementAssigned: map['entitlementAssigned'] == null
          ? null
          : map['entitlementAssigned'] as String,
      grantActivated: map['grantActivated'] == null
          ? null
          : map['grantActivated'] as String,
      grantActivationFailed: map['grantActivationFailed'] == null
          ? null
          : map['grantActivationFailed'] as String,
      grantDenied:
          map['grantDenied'] == null ? null : map['grantDenied'] as String,
      grantEnded:
          map['grantEnded'] == null ? null : map['grantEnded'] as String,
      grantExpired:
          map['grantExpired'] == null ? null : map['grantExpired'] as String,
      grantExternallyModified: map['grantExternallyModified'] == null
          ? null
          : map['grantExternallyModified'] as String,
      grantRevoked:
          map['grantRevoked'] == null ? null : map['grantRevoked'] as String,
    );
  }
}
