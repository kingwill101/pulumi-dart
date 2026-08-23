// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_settings_cookie_synchronization_configuration_allowlist.dart';
import 'user_settings_cookie_synchronization_configuration_blocklist.dart';

class UserSettingsCookieSynchronizationConfiguration {
  /// List of cookie specifications that are allowed to be synchronized to the remote browser.
  final pulumi.Input<List<UserSettingsCookieSynchronizationConfigurationAllowlist>>? allowlists;
  /// List of cookie specifications that are blocked from being synchronized to the remote browser.
  final pulumi.Input<List<UserSettingsCookieSynchronizationConfigurationBlocklist>>? blocklists;

  /// Creates a new [UserSettingsCookieSynchronizationConfiguration].
  /// [allowlists] List of cookie specifications that are allowed to be synchronized to the remote browser.
  /// [blocklists] List of cookie specifications that are blocked from being synchronized to the remote browser.
  const UserSettingsCookieSynchronizationConfiguration({
    this.allowlists,
    this.blocklists,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowlists': ?pulumi.Input.mapOptionalInputValue<List<UserSettingsCookieSynchronizationConfigurationAllowlist>, List<Map<String, dynamic>>>(allowlists, (value) => pulumi.Input.encodeList<UserSettingsCookieSynchronizationConfigurationAllowlist, Map<String, dynamic>>(value, (value) => value.toMap())),
      'blocklists': ?pulumi.Input.mapOptionalInputValue<List<UserSettingsCookieSynchronizationConfigurationBlocklist>, List<Map<String, dynamic>>>(blocklists, (value) => pulumi.Input.encodeList<UserSettingsCookieSynchronizationConfigurationBlocklist, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory UserSettingsCookieSynchronizationConfiguration.fromMap(Map<String, dynamic> map) {
    return UserSettingsCookieSynchronizationConfiguration(
      allowlists: (() { final guardedValue = map['allowlists']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<UserSettingsCookieSynchronizationConfigurationAllowlist>(guardedValue, (value) => UserSettingsCookieSynchronizationConfigurationAllowlist.fromMap((value as Map).cast<String, dynamic>()))); })(),
      blocklists: (() { final guardedValue = map['blocklists']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<UserSettingsCookieSynchronizationConfigurationBlocklist>(guardedValue, (value) => UserSettingsCookieSynchronizationConfigurationBlocklist.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
