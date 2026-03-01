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
    pulumi.Output<List<ManagedLoginBrandingAsset>>? assets,
    required pulumi.Output<String> clientId,
    pulumi.Output<String>? region,
    pulumi.Output<String>? settings,
    pulumi.Output<bool>? useCognitoProvidedValues,
    required pulumi.Output<String> userPoolId,
  }) :
      assets = pulumi.Input.asOptionalInput<List<ManagedLoginBrandingAsset>>(assets),
      clientId = pulumi.Input.asInput<String>(clientId),
      region = pulumi.Input.asOptionalInput<String>(region),
      settings = pulumi.Input.asOptionalInput<String>(settings),
      useCognitoProvidedValues = pulumi.Input.asOptionalInput<bool>(useCognitoProvidedValues),
      userPoolId = pulumi.Input.asInput<String>(userPoolId);

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
      assets: map['assets'] == null ? null : pulumi.Output.create<List<ManagedLoginBrandingAsset>>(pulumi.Input.decodeList<ManagedLoginBrandingAsset>(map['assets'], (value) => ManagedLoginBrandingAsset.fromMap((value as Map).cast<String, dynamic>()))),
      clientId: pulumi.Output.create<String>(map['clientId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      settings: map['settings'] == null ? null : pulumi.Output.create<String>(map['settings'] as String),
      useCognitoProvidedValues: map['useCognitoProvidedValues'] == null ? null : pulumi.Output.create<bool>(map['useCognitoProvidedValues'] as bool),
      userPoolId: pulumi.Output.create<String>(map['userPoolId'] as String),
    );
  }
}

