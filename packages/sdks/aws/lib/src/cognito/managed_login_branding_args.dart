// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_login_branding_asset.dart';

/// {@template pulumi_cognito_managed_login_branding_managed_login_branding_args_doc}
/// The set of arguments for ManagedLoginBranding.
/// {@endtemplate}
/// {@macro pulumi_cognito_managed_login_branding_managed_login_branding_args_doc}
class ManagedLoginBrandingArgs {
  /// Image files to apply to roles like backgrounds, logos, and icons. See details below.
  final pulumi.Input<List<ManagedLoginBrandingAsset>>? assets;
  /// App client that the branding style is for.
  final pulumi.Input<String> clientId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// JSON document with the the settings to apply to the style.
  final pulumi.Input<String>? settings;
  /// When `true`, applies the default branding style options.
  final pulumi.Input<bool>? useCognitoProvidedValues;
  /// User pool the client belongs to.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> userPoolId;

  /// Creates a new [ManagedLoginBrandingArgs].
  /// [assets] Image files to apply to roles like backgrounds, logos, and icons. See details below.
  /// [clientId] App client that the branding style is for.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [settings] JSON document with the the settings to apply to the style.
  /// [useCognitoProvidedValues] When `true`, applies the default branding style options.
  /// [userPoolId] User pool the client belongs to.
  ManagedLoginBrandingArgs({
    this.assets,
    required this.clientId,
    this.region,
    this.settings,
    this.useCognitoProvidedValues,
    required this.userPoolId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assets': ?pulumi.Input.mapOptionalInputValue<List<ManagedLoginBrandingAsset>, List<Map<String, dynamic>>>(assets, (value) => pulumi.Input.encodeList<ManagedLoginBrandingAsset, Map<String, dynamic>>(value, (value) => value.toMap())),
      'clientId': clientId,
      'region': ?region,
      'settings': ?settings,
      'useCognitoProvidedValues': ?useCognitoProvidedValues,
      'userPoolId': userPoolId,
    };
  }

  factory ManagedLoginBrandingArgs.fromMap(Map<String, dynamic> map) {
    return ManagedLoginBrandingArgs(
      assets: map['assets'] == null ? null : ((pulumi.Input.decodeList<ManagedLoginBrandingAsset>(map['assets']!, (value) => ManagedLoginBrandingAsset.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      clientId: (map['clientId'] as String).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      settings: map['settings'] == null ? null : ((map['settings'] as String).input()).input(),
      useCognitoProvidedValues: map['useCognitoProvidedValues'] == null ? null : ((map['useCognitoProvidedValues'] as bool).input()).input(),
      userPoolId: (map['userPoolId'] as String).input(),
    );
  }
}

