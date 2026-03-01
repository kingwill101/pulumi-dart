// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_windows_web_app_auth_setting_active_directory.dart';
import 'get_windows_web_app_auth_setting_facebook.dart';
import 'get_windows_web_app_auth_setting_github.dart';
import 'get_windows_web_app_auth_setting_google.dart';
import 'get_windows_web_app_auth_setting_microsoft.dart';
import 'get_windows_web_app_auth_setting_twitter.dart';

class GetWindowsWebAppAuthSetting {
  /// A `active_directory` block as defined above.
  final List<GetWindowsWebAppAuthSettingActiveDirectory> activeDirectories;
  /// A `additional_login_parameters` block as defined above.
  final Map<String, String> additionalLoginParameters;
  /// External URLs that can be redirected to as part of logging in or logging out of the app.
  final List<String> allowedExternalRedirectUrls;
  /// The Default Authentication Provider used when more than one Authentication Provider is configured and the `unauthenticated_action` is set to `RedirectToLoginPage`.
  final String defaultProvider;
  /// Is the Backup enabled?
  final bool enabled;
  /// A `facebook` block as defined below.
  final List<GetWindowsWebAppAuthSettingFacebook> facebooks;
  /// A `github` block as defined below.
  final List<GetWindowsWebAppAuthSettingGithub> githubs;
  /// A `google` block as defined below.
  final List<GetWindowsWebAppAuthSettingGoogle> googles;
  /// The OpenID Connect Issuer URI that represents the entity which issues access tokens for this Windows Web App.
  final String issuer;
  /// A `microsoft` block as defined below.
  final List<GetWindowsWebAppAuthSettingMicrosoft> microsofts;
  /// The Runtime Version of the Authentication and Authorisation feature of this App.
  final String runtimeVersion;
  /// The number of hours after session token expiration that a session token can be used to call the token refresh API.
  final double tokenRefreshExtensionHours;
  /// Is the Token Store configuration Enabled.
  final bool tokenStoreEnabled;
  /// A `twitter` block as defined below.
  final List<GetWindowsWebAppAuthSettingTwitter> twitters;
  /// The action to take when an unauthenticated client attempts to access the app.
  final String unauthenticatedClientAction;

  /// Creates a new [GetWindowsWebAppAuthSetting].
  /// [activeDirectories] A `active_directory` block as defined above.
  /// [additionalLoginParameters] A `additional_login_parameters` block as defined above.
  /// [allowedExternalRedirectUrls] External URLs that can be redirected to as part of logging in or logging out of the app.
  /// [defaultProvider] The Default Authentication Provider used when more than one Authentication Provider is configured and the `unauthenticated_action` is set to `RedirectToLoginPage`.
  /// [enabled] Is the Backup enabled?
  /// [facebooks] A `facebook` block as defined below.
  /// [githubs] A `github` block as defined below.
  /// [googles] A `google` block as defined below.
  /// [issuer] The OpenID Connect Issuer URI that represents the entity which issues access tokens for this Windows Web App.
  /// [microsofts] A `microsoft` block as defined below.
  /// [runtimeVersion] The Runtime Version of the Authentication and Authorisation feature of this App.
  /// [tokenRefreshExtensionHours] The number of hours after session token expiration that a session token can be used to call the token refresh API.
  /// [tokenStoreEnabled] Is the Token Store configuration Enabled.
  /// [twitters] A `twitter` block as defined below.
  /// [unauthenticatedClientAction] The action to take when an unauthenticated client attempts to access the app.
  GetWindowsWebAppAuthSetting({
    required this.activeDirectories,
    required this.additionalLoginParameters,
    required this.allowedExternalRedirectUrls,
    required this.defaultProvider,
    required this.enabled,
    required this.facebooks,
    required this.githubs,
    required this.googles,
    required this.issuer,
    required this.microsofts,
    required this.runtimeVersion,
    required this.tokenRefreshExtensionHours,
    required this.tokenStoreEnabled,
    required this.twitters,
    required this.unauthenticatedClientAction,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeDirectories': pulumi.Input.encodeList<GetWindowsWebAppAuthSettingActiveDirectory, Map<String, dynamic>>(activeDirectories, (value) => value.toMap()),
      'additionalLoginParameters': additionalLoginParameters,
      'allowedExternalRedirectUrls': allowedExternalRedirectUrls,
      'defaultProvider': defaultProvider,
      'enabled': enabled,
      'facebooks': pulumi.Input.encodeList<GetWindowsWebAppAuthSettingFacebook, Map<String, dynamic>>(facebooks, (value) => value.toMap()),
      'githubs': pulumi.Input.encodeList<GetWindowsWebAppAuthSettingGithub, Map<String, dynamic>>(githubs, (value) => value.toMap()),
      'googles': pulumi.Input.encodeList<GetWindowsWebAppAuthSettingGoogle, Map<String, dynamic>>(googles, (value) => value.toMap()),
      'issuer': issuer,
      'microsofts': pulumi.Input.encodeList<GetWindowsWebAppAuthSettingMicrosoft, Map<String, dynamic>>(microsofts, (value) => value.toMap()),
      'runtimeVersion': runtimeVersion,
      'tokenRefreshExtensionHours': tokenRefreshExtensionHours,
      'tokenStoreEnabled': tokenStoreEnabled,
      'twitters': pulumi.Input.encodeList<GetWindowsWebAppAuthSettingTwitter, Map<String, dynamic>>(twitters, (value) => value.toMap()),
      'unauthenticatedClientAction': unauthenticatedClientAction,
    };
  }

  factory GetWindowsWebAppAuthSetting.fromMap(Map<String, dynamic> map) {
    return GetWindowsWebAppAuthSetting(
      activeDirectories: pulumi.Input.decodeList<GetWindowsWebAppAuthSettingActiveDirectory>(map['activeDirectories'], (value) => GetWindowsWebAppAuthSettingActiveDirectory.fromMap((value as Map).cast<String, dynamic>())),
      additionalLoginParameters: (map['additionalLoginParameters'] as Map).cast<String, String>(),
      allowedExternalRedirectUrls: (map['allowedExternalRedirectUrls'] as List).cast<String>(),
      defaultProvider: map['defaultProvider'] as String,
      enabled: map['enabled'] as bool,
      facebooks: pulumi.Input.decodeList<GetWindowsWebAppAuthSettingFacebook>(map['facebooks'], (value) => GetWindowsWebAppAuthSettingFacebook.fromMap((value as Map).cast<String, dynamic>())),
      githubs: pulumi.Input.decodeList<GetWindowsWebAppAuthSettingGithub>(map['githubs'], (value) => GetWindowsWebAppAuthSettingGithub.fromMap((value as Map).cast<String, dynamic>())),
      googles: pulumi.Input.decodeList<GetWindowsWebAppAuthSettingGoogle>(map['googles'], (value) => GetWindowsWebAppAuthSettingGoogle.fromMap((value as Map).cast<String, dynamic>())),
      issuer: map['issuer'] as String,
      microsofts: pulumi.Input.decodeList<GetWindowsWebAppAuthSettingMicrosoft>(map['microsofts'], (value) => GetWindowsWebAppAuthSettingMicrosoft.fromMap((value as Map).cast<String, dynamic>())),
      runtimeVersion: map['runtimeVersion'] as String,
      tokenRefreshExtensionHours: map['tokenRefreshExtensionHours'] as double,
      tokenStoreEnabled: map['tokenStoreEnabled'] as bool,
      twitters: pulumi.Input.decodeList<GetWindowsWebAppAuthSettingTwitter>(map['twitters'], (value) => GetWindowsWebAppAuthSettingTwitter.fromMap((value as Map).cast<String, dynamic>())),
      unauthenticatedClientAction: map['unauthenticatedClientAction'] as String,
    );
  }
}

