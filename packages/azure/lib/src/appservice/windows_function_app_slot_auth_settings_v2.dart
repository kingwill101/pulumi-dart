// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'windows_function_app_slot_auth_settings_v2_active_directory_v2.dart';
import 'windows_function_app_slot_auth_settings_v2_apple_v2.dart';
import 'windows_function_app_slot_auth_settings_v2_azure_static_web_app_v2.dart';
import 'windows_function_app_slot_auth_settings_v2_custom_oidc_v2.dart';
import 'windows_function_app_slot_auth_settings_v2_facebook_v2.dart';
import 'windows_function_app_slot_auth_settings_v2_github_v2.dart';
import 'windows_function_app_slot_auth_settings_v2_google_v2.dart';
import 'windows_function_app_slot_auth_settings_v2_login.dart';
import 'windows_function_app_slot_auth_settings_v2_microsoft_v2.dart';
import 'windows_function_app_slot_auth_settings_v2_twitter_v2.dart';

class WindowsFunctionAppSlotAuthSettingsV2 {
  /// An `active_directory_v2` block as defined below.
  final WindowsFunctionAppSlotAuthSettingsV2ActiveDirectoryV2? activeDirectoryV2;
  /// An `apple_v2` block as defined below.
  final WindowsFunctionAppSlotAuthSettingsV2AppleV2? appleV2;
  /// Should the AuthV2 Settings be enabled. Defaults to `false`.
  final bool? authEnabled;
  /// An `azure_static_web_app_v2` block as defined below.
  final WindowsFunctionAppSlotAuthSettingsV2AzureStaticWebAppV2? azureStaticWebAppV2;
  /// The path to the App Auth settings.
  ///
  /// > **Note:** Relative Paths are evaluated from the Site Root directory.
  final String? configFilePath;
  /// Zero or more `custom_oidc_v2` blocks as defined below.
  final List<WindowsFunctionAppSlotAuthSettingsV2CustomOidcV2>? customOidcV2s;
  /// The Default Authentication Provider to use when the `unauthenticated_action` is set to `RedirectToLoginPage`. Possible values include: `apple`, `azureactivedirectory`, `facebook`, `github`, `google`, `twitter` and the `name` of your `custom_oidc_v2` provider.
  ///
  /// > **Note:** Whilst any value will be accepted by the API for `default_provider`, it can leave the app in an unusable state if this value does not correspond to the name of a known provider (either built-in value, or custom_oidc name) as it is used to build the auth endpoint URI.
  final String? defaultProvider;
  /// The paths which should be excluded from the `unauthenticated_action` when it is set to `RedirectToLoginPage`.
  ///
  /// > **Note:** This list should be used instead of setting `WEBSITE_WARMUP_PATH` in `app_settings` as it takes priority.
  final List<String>? excludedPaths;
  /// A `facebook_v2` block as defined below.
  final WindowsFunctionAppSlotAuthSettingsV2FacebookV2? facebookV2;
  /// The convention used to determine the url of the request made. Possible values include `NoProxy`, `Standard`, `Custom`. Defaults to `NoProxy`.
  final String? forwardProxyConvention;
  /// The name of the custom header containing the host of the request.
  final String? forwardProxyCustomHostHeaderName;
  /// The name of the custom header containing the scheme of the request.
  final String? forwardProxyCustomSchemeHeaderName;
  /// A `github_v2` block as defined below.
  final WindowsFunctionAppSlotAuthSettingsV2GithubV2? githubV2;
  /// A `google_v2` block as defined below.
  final WindowsFunctionAppSlotAuthSettingsV2GoogleV2? googleV2;
  /// The prefix that should precede all the authentication and authorisation paths. Defaults to `/.auth`.
  final String? httpRouteApiPrefix;
  /// A `login` block as defined below.
  final WindowsFunctionAppSlotAuthSettingsV2Login login;
  /// A `microsoft_v2` block as defined below.
  final WindowsFunctionAppSlotAuthSettingsV2MicrosoftV2? microsoftV2;
  /// Should the authentication flow be used for all requests.
  final bool? requireAuthentication;
  /// Should HTTPS be required on connections? Defaults to `true`.
  final bool? requireHttps;
  /// The Runtime Version of the Authentication and Authorisation feature of this App. Defaults to `~1`.
  final String? runtimeVersion;
  /// A `twitter_v2` block as defined below.
  final WindowsFunctionAppSlotAuthSettingsV2TwitterV2? twitterV2;
  /// The action to take for requests made without authentication. Possible values include `RedirectToLoginPage`, `AllowAnonymous`, `Return401`, and `Return403`. Defaults to `RedirectToLoginPage`.
  final String? unauthenticatedAction;

  /// Creates a new [WindowsFunctionAppSlotAuthSettingsV2].
  /// [activeDirectoryV2] An `active_directory_v2` block as defined below.
  /// [appleV2] An `apple_v2` block as defined below.
  /// [authEnabled] Should the AuthV2 Settings be enabled. Defaults to `false`.
  /// [azureStaticWebAppV2] An `azure_static_web_app_v2` block as defined below.
  /// [configFilePath] The path to the App Auth settings.
  /// [customOidcV2s] Zero or more `custom_oidc_v2` blocks as defined below.
  /// [defaultProvider] The Default Authentication Provider to use when the `unauthenticated_action` is set to `RedirectToLoginPage`. Possible values include: `apple`, `azureactivedirectory`, `facebook`, `github`, `google`, `twitter` and the `name` of your `custom_oidc_v2` provider.
  /// [excludedPaths] The paths which should be excluded from the `unauthenticated_action` when it is set to `RedirectToLoginPage`.
  /// [facebookV2] A `facebook_v2` block as defined below.
  /// [forwardProxyConvention] The convention used to determine the url of the request made. Possible values include `NoProxy`, `Standard`, `Custom`. Defaults to `NoProxy`.
  /// [forwardProxyCustomHostHeaderName] The name of the custom header containing the host of the request.
  /// [forwardProxyCustomSchemeHeaderName] The name of the custom header containing the scheme of the request.
  /// [githubV2] A `github_v2` block as defined below.
  /// [googleV2] A `google_v2` block as defined below.
  /// [httpRouteApiPrefix] The prefix that should precede all the authentication and authorisation paths. Defaults to `/.auth`.
  /// [login] A `login` block as defined below.
  /// [microsoftV2] A `microsoft_v2` block as defined below.
  /// [requireAuthentication] Should the authentication flow be used for all requests.
  /// [requireHttps] Should HTTPS be required on connections? Defaults to `true`.
  /// [runtimeVersion] The Runtime Version of the Authentication and Authorisation feature of this App. Defaults to `~1`.
  /// [twitterV2] A `twitter_v2` block as defined below.
  /// [unauthenticatedAction] The action to take for requests made without authentication. Possible values include `RedirectToLoginPage`, `AllowAnonymous`, `Return401`, and `Return403`. Defaults to `RedirectToLoginPage`.
  WindowsFunctionAppSlotAuthSettingsV2({
    this.activeDirectoryV2,
    this.appleV2,
    this.authEnabled,
    this.azureStaticWebAppV2,
    this.configFilePath,
    this.customOidcV2s,
    this.defaultProvider,
    this.excludedPaths,
    this.facebookV2,
    this.forwardProxyConvention,
    this.forwardProxyCustomHostHeaderName,
    this.forwardProxyCustomSchemeHeaderName,
    this.githubV2,
    this.googleV2,
    this.httpRouteApiPrefix,
    required this.login,
    this.microsoftV2,
    this.requireAuthentication,
    this.requireHttps,
    this.runtimeVersion,
    this.twitterV2,
    this.unauthenticatedAction,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeDirectoryV2': ?activeDirectoryV2 == null ? null : activeDirectoryV2!.toMap(),
      'appleV2': ?appleV2 == null ? null : appleV2!.toMap(),
      'authEnabled': ?authEnabled,
      'azureStaticWebAppV2': ?azureStaticWebAppV2 == null ? null : azureStaticWebAppV2!.toMap(),
      'configFilePath': ?configFilePath,
      'customOidcV2s': ?customOidcV2s == null ? null : pulumi.Input.encodeList<WindowsFunctionAppSlotAuthSettingsV2CustomOidcV2, Map<String, dynamic>>(customOidcV2s!, (value) => value.toMap()),
      'defaultProvider': ?defaultProvider,
      'excludedPaths': ?excludedPaths,
      'facebookV2': ?facebookV2 == null ? null : facebookV2!.toMap(),
      'forwardProxyConvention': ?forwardProxyConvention,
      'forwardProxyCustomHostHeaderName': ?forwardProxyCustomHostHeaderName,
      'forwardProxyCustomSchemeHeaderName': ?forwardProxyCustomSchemeHeaderName,
      'githubV2': ?githubV2 == null ? null : githubV2!.toMap(),
      'googleV2': ?googleV2 == null ? null : googleV2!.toMap(),
      'httpRouteApiPrefix': ?httpRouteApiPrefix,
      'login': login.toMap(),
      'microsoftV2': ?microsoftV2 == null ? null : microsoftV2!.toMap(),
      'requireAuthentication': ?requireAuthentication,
      'requireHttps': ?requireHttps,
      'runtimeVersion': ?runtimeVersion,
      'twitterV2': ?twitterV2 == null ? null : twitterV2!.toMap(),
      'unauthenticatedAction': ?unauthenticatedAction,
    };
  }

  factory WindowsFunctionAppSlotAuthSettingsV2.fromMap(Map<String, dynamic> map) {
    return WindowsFunctionAppSlotAuthSettingsV2(
      activeDirectoryV2: map['activeDirectoryV2'] == null ? null : WindowsFunctionAppSlotAuthSettingsV2ActiveDirectoryV2.fromMap((map['activeDirectoryV2'] as Map).cast<String, dynamic>()),
      appleV2: map['appleV2'] == null ? null : WindowsFunctionAppSlotAuthSettingsV2AppleV2.fromMap((map['appleV2'] as Map).cast<String, dynamic>()),
      authEnabled: map['authEnabled'] == null ? null : map['authEnabled'] as bool,
      azureStaticWebAppV2: map['azureStaticWebAppV2'] == null ? null : WindowsFunctionAppSlotAuthSettingsV2AzureStaticWebAppV2.fromMap((map['azureStaticWebAppV2'] as Map).cast<String, dynamic>()),
      configFilePath: map['configFilePath'] == null ? null : map['configFilePath'] as String,
      customOidcV2s: map['customOidcV2s'] == null ? null : pulumi.Input.decodeList<WindowsFunctionAppSlotAuthSettingsV2CustomOidcV2>(map['customOidcV2s'], (value) => WindowsFunctionAppSlotAuthSettingsV2CustomOidcV2.fromMap((value as Map).cast<String, dynamic>())),
      defaultProvider: map['defaultProvider'] == null ? null : map['defaultProvider'] as String,
      excludedPaths: map['excludedPaths'] == null ? null : (map['excludedPaths'] as List).cast<String>(),
      facebookV2: map['facebookV2'] == null ? null : WindowsFunctionAppSlotAuthSettingsV2FacebookV2.fromMap((map['facebookV2'] as Map).cast<String, dynamic>()),
      forwardProxyConvention: map['forwardProxyConvention'] == null ? null : map['forwardProxyConvention'] as String,
      forwardProxyCustomHostHeaderName: map['forwardProxyCustomHostHeaderName'] == null ? null : map['forwardProxyCustomHostHeaderName'] as String,
      forwardProxyCustomSchemeHeaderName: map['forwardProxyCustomSchemeHeaderName'] == null ? null : map['forwardProxyCustomSchemeHeaderName'] as String,
      githubV2: map['githubV2'] == null ? null : WindowsFunctionAppSlotAuthSettingsV2GithubV2.fromMap((map['githubV2'] as Map).cast<String, dynamic>()),
      googleV2: map['googleV2'] == null ? null : WindowsFunctionAppSlotAuthSettingsV2GoogleV2.fromMap((map['googleV2'] as Map).cast<String, dynamic>()),
      httpRouteApiPrefix: map['httpRouteApiPrefix'] == null ? null : map['httpRouteApiPrefix'] as String,
      login: WindowsFunctionAppSlotAuthSettingsV2Login.fromMap((map['login'] as Map).cast<String, dynamic>()),
      microsoftV2: map['microsoftV2'] == null ? null : WindowsFunctionAppSlotAuthSettingsV2MicrosoftV2.fromMap((map['microsoftV2'] as Map).cast<String, dynamic>()),
      requireAuthentication: map['requireAuthentication'] == null ? null : map['requireAuthentication'] as bool,
      requireHttps: map['requireHttps'] == null ? null : map['requireHttps'] as bool,
      runtimeVersion: map['runtimeVersion'] == null ? null : map['runtimeVersion'] as String,
      twitterV2: map['twitterV2'] == null ? null : WindowsFunctionAppSlotAuthSettingsV2TwitterV2.fromMap((map['twitterV2'] as Map).cast<String, dynamic>()),
      unauthenticatedAction: map['unauthenticatedAction'] == null ? null : map['unauthenticatedAction'] as String,
    );
  }
}

