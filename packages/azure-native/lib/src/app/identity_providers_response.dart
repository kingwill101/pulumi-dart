// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'apple_response.dart';
import 'azure_active_directory_response.dart';
import 'azure_static_web_apps_response.dart';
import 'custom_open_id_connect_provider_response.dart';
import 'facebook_response.dart';
import 'git_hub_response.dart';
import 'google_response.dart';
import 'twitter_response.dart';

/// The configuration settings of each of the identity providers used to configure ContainerApp Service Authentication/Authorization.
class IdentityProvidersResponse {
  /// The configuration settings of the Apple provider.
  final AppleResponse? apple;
  /// The configuration settings of the Azure Active directory provider.
  final AzureActiveDirectoryResponse? azureActiveDirectory;
  /// The configuration settings of the Azure Static Web Apps provider.
  final AzureStaticWebAppsResponse? azureStaticWebApps;
  /// The map of the name of the alias of each custom Open ID Connect provider to the
  /// configuration settings of the custom Open ID Connect provider.
  final Map<String, CustomOpenIdConnectProviderResponse>? customOpenIdConnectProviders;
  /// The configuration settings of the Facebook provider.
  final FacebookResponse? facebook;
  /// The configuration settings of the GitHub provider.
  final GitHubResponse? gitHub;
  /// The configuration settings of the Google provider.
  final GoogleResponse? google;
  /// The configuration settings of the Twitter provider.
  final TwitterResponse? twitter;

  /// Creates a new [IdentityProvidersResponse].
  /// [apple] The configuration settings of the Apple provider.
  /// [azureActiveDirectory] The configuration settings of the Azure Active directory provider.
  /// [azureStaticWebApps] The configuration settings of the Azure Static Web Apps provider.
  /// [customOpenIdConnectProviders] The map of the name of the alias of each custom Open ID Connect provider to the
  /// [facebook] The configuration settings of the Facebook provider.
  /// [gitHub] The configuration settings of the GitHub provider.
  /// [google] The configuration settings of the Google provider.
  /// [twitter] The configuration settings of the Twitter provider.
  IdentityProvidersResponse({
    this.apple,
    this.azureActiveDirectory,
    this.azureStaticWebApps,
    this.customOpenIdConnectProviders,
    this.facebook,
    this.gitHub,
    this.google,
    this.twitter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apple': ?apple == null ? null : apple!.toMap(),
      'azureActiveDirectory': ?azureActiveDirectory == null ? null : azureActiveDirectory!.toMap(),
      'azureStaticWebApps': ?azureStaticWebApps == null ? null : azureStaticWebApps!.toMap(),
      'customOpenIdConnectProviders': ?customOpenIdConnectProviders == null ? null : pulumi.Input.encodeMapValues<CustomOpenIdConnectProviderResponse, Map<String, dynamic>>(customOpenIdConnectProviders!, (value) => value.toMap()),
      'facebook': ?facebook == null ? null : facebook!.toMap(),
      'gitHub': ?gitHub == null ? null : gitHub!.toMap(),
      'google': ?google == null ? null : google!.toMap(),
      'twitter': ?twitter == null ? null : twitter!.toMap(),
    };
  }

  factory IdentityProvidersResponse.fromMap(Map<String, dynamic> map) {
    return IdentityProvidersResponse(
      apple: map['apple'] == null ? null : AppleResponse.fromMap((map['apple'] as Map).cast<String, dynamic>()),
      azureActiveDirectory: map['azureActiveDirectory'] == null ? null : AzureActiveDirectoryResponse.fromMap((map['azureActiveDirectory'] as Map).cast<String, dynamic>()),
      azureStaticWebApps: map['azureStaticWebApps'] == null ? null : AzureStaticWebAppsResponse.fromMap((map['azureStaticWebApps'] as Map).cast<String, dynamic>()),
      customOpenIdConnectProviders: map['customOpenIdConnectProviders'] == null ? null : pulumi.Input.decodeMapValues<CustomOpenIdConnectProviderResponse>(map['customOpenIdConnectProviders'], (value) => CustomOpenIdConnectProviderResponse.fromMap((value as Map).cast<String, dynamic>())),
      facebook: map['facebook'] == null ? null : FacebookResponse.fromMap((map['facebook'] as Map).cast<String, dynamic>()),
      gitHub: map['gitHub'] == null ? null : GitHubResponse.fromMap((map['gitHub'] as Map).cast<String, dynamic>()),
      google: map['google'] == null ? null : GoogleResponse.fromMap((map['google'] as Map).cast<String, dynamic>()),
      twitter: map['twitter'] == null ? null : TwitterResponse.fromMap((map['twitter'] as Map).cast<String, dynamic>()),
    );
  }
}

