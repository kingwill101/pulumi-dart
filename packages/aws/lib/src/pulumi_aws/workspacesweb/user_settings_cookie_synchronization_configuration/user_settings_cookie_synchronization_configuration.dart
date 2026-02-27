// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../user_settings_cookie_synchronization_configuration_allowlist/user_settings_cookie_synchronization_configuration_allowlist.dart';
import '../user_settings_cookie_synchronization_configuration_blocklist/user_settings_cookie_synchronization_configuration_blocklist.dart';

class UserSettingsCookieSynchronizationConfiguration {
  /// List of cookie specifications that are allowed to be synchronized to the remote browser.
  final List<UserSettingsCookieSynchronizationConfigurationAllowlist>?
      allowlists;

  /// List of cookie specifications that are blocked from being synchronized to the remote browser.
  final List<UserSettingsCookieSynchronizationConfigurationBlocklist>?
      blocklists;

  UserSettingsCookieSynchronizationConfiguration({
    this.allowlists,
    this.blocklists,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allowlistsValue = allowlists;
    if (allowlistsValue != null) {
      map['allowlists'] = pulumi.Input.encodeList<
          UserSettingsCookieSynchronizationConfigurationAllowlist,
          Map<String, dynamic>>(allowlistsValue, (value) => value.toMap());
    }
    final blocklistsValue = blocklists;
    if (blocklistsValue != null) {
      map['blocklists'] = pulumi.Input.encodeList<
          UserSettingsCookieSynchronizationConfigurationBlocklist,
          Map<String, dynamic>>(blocklistsValue, (value) => value.toMap());
    }
    return map;
  }

  factory UserSettingsCookieSynchronizationConfiguration.fromMap(
      Map<String, dynamic> map) {
    return UserSettingsCookieSynchronizationConfiguration(
      allowlists: map['allowlists'] == null
          ? null
          : pulumi.Input.decodeList<
                  UserSettingsCookieSynchronizationConfigurationAllowlist>(
              map['allowlists'],
              (value) => UserSettingsCookieSynchronizationConfigurationAllowlist
                  .fromMap((value as Map).cast<String, dynamic>())),
      blocklists: map['blocklists'] == null
          ? null
          : pulumi.Input.decodeList<
                  UserSettingsCookieSynchronizationConfigurationBlocklist>(
              map['blocklists'],
              (value) => UserSettingsCookieSynchronizationConfigurationBlocklist
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
