// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'apple.dart';
import 'azure_active_directory.dart';
import 'azure_static_web_apps.dart';
import 'custom_open_id_connect_provider.dart';
import 'facebook.dart';
import 'git_hub.dart';
import 'google.dart';
import 'twitter.dart';

/// The configuration settings of each of the identity providers used to configure ContainerApp Service Authentication/Authorization.
class IdentityProviders {
  /// The configuration settings of the Apple provider.
  final Apple? apple;
  /// The configuration settings of the Azure Active directory provider.
  final AzureActiveDirectory? azureActiveDirectory;
  /// The configuration settings of the Azure Static Web Apps provider.
  final AzureStaticWebApps? azureStaticWebApps;
  /// The map of the name of the alias of each custom Open ID Connect provider to the
  /// configuration settings of the custom Open ID Connect provider.
  final Map<String, CustomOpenIdConnectProvider>? customOpenIdConnectProviders;
  /// The configuration settings of the Facebook provider.
  final Facebook? facebook;
  /// The configuration settings of the GitHub provider.
  final GitHub? gitHub;
  /// The configuration settings of the Google provider.
  final Google? google;
  /// The configuration settings of the Twitter provider.
  final Twitter? twitter;

  /// Creates a new [IdentityProviders].
  /// [apple] The configuration settings of the Apple provider.
  /// [azureActiveDirectory] The configuration settings of the Azure Active directory provider.
  /// [azureStaticWebApps] The configuration settings of the Azure Static Web Apps provider.
  /// [customOpenIdConnectProviders] The map of the name of the alias of each custom Open ID Connect provider to the
  /// [facebook] The configuration settings of the Facebook provider.
  /// [gitHub] The configuration settings of the GitHub provider.
  /// [google] The configuration settings of the Google provider.
  /// [twitter] The configuration settings of the Twitter provider.
  IdentityProviders({
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
      'customOpenIdConnectProviders': ?customOpenIdConnectProviders == null ? null : pulumi.Input.encodeMapValues<CustomOpenIdConnectProvider, Map<String, dynamic>>(customOpenIdConnectProviders!, (value) => value.toMap()),
      'facebook': ?facebook == null ? null : facebook!.toMap(),
      'gitHub': ?gitHub == null ? null : gitHub!.toMap(),
      'google': ?google == null ? null : google!.toMap(),
      'twitter': ?twitter == null ? null : twitter!.toMap(),
    };
  }

  factory IdentityProviders.fromMap(Map<String, dynamic> map) {
    return IdentityProviders(
      apple: map['apple'] == null ? null : Apple.fromMap((map['apple'] as Map).cast<String, dynamic>()),
      azureActiveDirectory: map['azureActiveDirectory'] == null ? null : AzureActiveDirectory.fromMap((map['azureActiveDirectory'] as Map).cast<String, dynamic>()),
      azureStaticWebApps: map['azureStaticWebApps'] == null ? null : AzureStaticWebApps.fromMap((map['azureStaticWebApps'] as Map).cast<String, dynamic>()),
      customOpenIdConnectProviders: map['customOpenIdConnectProviders'] == null ? null : pulumi.Input.decodeMapValues<CustomOpenIdConnectProvider>(map['customOpenIdConnectProviders'], (value) => CustomOpenIdConnectProvider.fromMap((value as Map).cast<String, dynamic>())),
      facebook: map['facebook'] == null ? null : Facebook.fromMap((map['facebook'] as Map).cast<String, dynamic>()),
      gitHub: map['gitHub'] == null ? null : GitHub.fromMap((map['gitHub'] as Map).cast<String, dynamic>()),
      google: map['google'] == null ? null : Google.fromMap((map['google'] as Map).cast<String, dynamic>()),
      twitter: map['twitter'] == null ? null : Twitter.fromMap((map['twitter'] as Map).cast<String, dynamic>()),
    );
  }
}

