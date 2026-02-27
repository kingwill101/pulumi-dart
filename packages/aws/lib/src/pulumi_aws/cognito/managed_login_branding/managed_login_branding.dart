import 'package:pulumi/pulumi.dart';
import '../managed_login_branding_asset/managed_login_branding_asset.dart';
import 'managed_login_branding_args.dart';

/// Manages branding settings for a user pool style and associates it with an app client.
///
/// ## Example Usage
///
/// ### Default Branding Style
///
///
///
/// ### Custom Branding Style
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Cognito branding settings using `user_pool_id` and `managed_login_branding_id` separated by `,`. For example:
///
/// ```sh
/// $ pulumi import aws:cognito/managedLoginBranding:ManagedLoginBranding example us-west-2_rSss9Zltr,06c6ae7b-1e66-46d2-87a9-1203ea3307bd
/// ```
class ManagedLoginBranding extends CustomResource {
  /// Image files to apply to roles like backgrounds, logos, and icons. See details below.
  late final Output<List<ManagedLoginBrandingAsset>?> assets;

  /// App client that the branding style is for.
  late final Output<String> clientId;

  /// ID of the managed login branding style.
  late final Output<String> managedLoginBrandingId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// JSON document with the the settings to apply to the style.
  late final Output<String?> settings;

  /// Settings including Amazon Cognito defaults.
  late final Output<String> settingsAll;

  /// When `true`, applies the default branding style options.
  late final Output<bool> useCognitoProvidedValues;

  /// User pool the client belongs to.
  ///
  /// The following arguments are optional:
  late final Output<String> userPoolId;

  ManagedLoginBranding(
    String name, {
    ManagedLoginBrandingArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:cognito/managedLoginBranding:ManagedLoginBranding',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.assets = registerOutput<List<ManagedLoginBrandingAsset>?>('assets');
    this.clientId = registerOutput<String>('clientId');
    this.managedLoginBrandingId =
        registerOutput<String>('managedLoginBrandingId');
    this.region = registerOutput<String>('region');
    this.settings = registerOutput<String?>('settings');
    this.settingsAll = registerOutput<String>('settingsAll');
    this.useCognitoProvidedValues =
        registerOutput<bool>('useCognitoProvidedValues');
    this.userPoolId = registerOutput<String>('userPoolId');
  }
}
