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
  UserSettingsCookieSynchronizationConfiguration({
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
      allowlists: map['allowlists'] == null ? null : ((pulumi.Input.decodeList<UserSettingsCookieSynchronizationConfigurationAllowlist>(map['allowlists']!, (value) => UserSettingsCookieSynchronizationConfigurationAllowlist.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      blocklists: map['blocklists'] == null ? null : ((pulumi.Input.decodeList<UserSettingsCookieSynchronizationConfigurationBlocklist>(map['blocklists']!, (value) => UserSettingsCookieSynchronizationConfigurationBlocklist.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
    );
  }
}

