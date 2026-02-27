// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for UserStore.
class UserStoreArgs {
  /// The resource name of the default license config assigned to users created in
  /// this user store. Format:
  /// `projects/{project}/locations/{location}/licenseConfigs/{license_config}`.
  /// If `enableLicenseAutoRegister` is true, new users will automatically
  /// register under the default subscription.
  /// If the default license config doesn't have remaining license seats left,
  /// new users will not be assigned with license.
  final pulumi.Input<String>? defaultLicenseConfig;

  /// Whether to enable automatic license update for users with expired licenses
  /// in this user store. If enabled, users with expired licenses will
  /// automatically be updated to the default subscription if there are
  /// remaining license seats.
  final pulumi.Input<bool>? enableExpiredLicenseAutoUpdate;

  /// Whether to enable automatic license registration for new users created in
  /// this user store. If enabled, new users will automatically register under
  /// the default subscription.
  final pulumi.Input<bool>? enableLicenseAutoRegister;

  /// The geographic location where the data store should reside. The value can
  /// only be one of "global", "us" and "eu".
  final pulumi.Input<String> location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The ID of the user store. Currently only accepts "default_user_store".
  final pulumi.Input<String>? userStoreId;

  UserStoreArgs({
    this.defaultLicenseConfig,
    this.enableExpiredLicenseAutoUpdate,
    this.enableLicenseAutoRegister,
    required this.location,
    this.project,
    this.userStoreId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final defaultLicenseConfigValue = defaultLicenseConfig;
    if (defaultLicenseConfigValue != null) {
      map['defaultLicenseConfig'] = defaultLicenseConfigValue;
    }
    final enableExpiredLicenseAutoUpdateValue = enableExpiredLicenseAutoUpdate;
    if (enableExpiredLicenseAutoUpdateValue != null) {
      map['enableExpiredLicenseAutoUpdate'] =
          enableExpiredLicenseAutoUpdateValue;
    }
    final enableLicenseAutoRegisterValue = enableLicenseAutoRegister;
    if (enableLicenseAutoRegisterValue != null) {
      map['enableLicenseAutoRegister'] = enableLicenseAutoRegisterValue;
    }
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final userStoreIdValue = userStoreId;
    if (userStoreIdValue != null) {
      map['userStoreId'] = userStoreIdValue;
    }
    return map;
  }

  factory UserStoreArgs.fromMap(Map<String, dynamic> map) {
    return UserStoreArgs(
      defaultLicenseConfig:
          pulumi.Input.asOptionalInput<String>(map['defaultLicenseConfig']),
      enableExpiredLicenseAutoUpdate: pulumi.Input.asOptionalInput<bool>(
          map['enableExpiredLicenseAutoUpdate']),
      enableLicenseAutoRegister:
          pulumi.Input.asOptionalInput<bool>(map['enableLicenseAutoRegister']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      userStoreId: pulumi.Input.asOptionalInput<String>(map['userStoreId']),
    );
  }
}
