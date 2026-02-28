// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_identitytoolkit_admin_v2_allow_by_default.dart';
import 'google_cloud_identitytoolkit_admin_v2_allowlist_only.dart';

/// Configures the regions where users are allowed to send verification SMS for the project or tenant. This is based on the calling code of the destination phone number.
class GoogleCloudIdentitytoolkitAdminV2SmsRegionConfig {
  /// A policy of allowing SMS to every region by default and adding disallowed regions to a disallow list.
  final GoogleCloudIdentitytoolkitAdminV2AllowByDefault? allowByDefault;

  /// A policy of only allowing regions by explicitly adding them to an allowlist.
  final GoogleCloudIdentitytoolkitAdminV2AllowlistOnly? allowlistOnly;

  /// Creates a new [GoogleCloudIdentitytoolkitAdminV2SmsRegionConfig].
  /// [allowByDefault] A policy of allowing SMS to every region by default and adding disallowed regions to a disallow list.
  /// [allowlistOnly] A policy of only allowing regions by explicitly adding them to an allowlist.
  GoogleCloudIdentitytoolkitAdminV2SmsRegionConfig({
    this.allowByDefault,
    this.allowlistOnly,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allowByDefaultValue = allowByDefault;
    if (allowByDefaultValue != null) {
      map['allowByDefault'] = allowByDefaultValue.toMap();
    }
    final allowlistOnlyValue = allowlistOnly;
    if (allowlistOnlyValue != null) {
      map['allowlistOnly'] = allowlistOnlyValue.toMap();
    }
    return map;
  }

  factory GoogleCloudIdentitytoolkitAdminV2SmsRegionConfig.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudIdentitytoolkitAdminV2SmsRegionConfig(
      allowByDefault: map['allowByDefault'] == null
          ? null
          : GoogleCloudIdentitytoolkitAdminV2AllowByDefault.fromMap(
              (map['allowByDefault'] as Map).cast<String, dynamic>()),
      allowlistOnly: map['allowlistOnly'] == null
          ? null
          : GoogleCloudIdentitytoolkitAdminV2AllowlistOnly.fromMap(
              (map['allowlistOnly'] as Map).cast<String, dynamic>()),
    );
  }
}
