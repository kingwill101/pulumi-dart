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
  const ManagedLoginBrandingArgs({
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
      assets: (() { final guardedValue = map['assets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ManagedLoginBrandingAsset>(guardedValue, (value) => ManagedLoginBrandingAsset.fromMap((value as Map).cast<String, dynamic>()))); })(),
      clientId: pulumi.Input.fromValue(map['clientId'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      settings: (() { final guardedValue = map['settings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      useCognitoProvidedValues: (() { final guardedValue = map['useCognitoProvidedValues']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      userPoolId: pulumi.Input.fromValue(map['userPoolId'] as String),
    );
  }
}
