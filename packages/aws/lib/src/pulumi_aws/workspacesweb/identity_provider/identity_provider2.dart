import 'package:pulumi/pulumi.dart';
import 'identity_provider_args2.dart';

/// Resource for managing an AWS WorkSpaces Web Identity Provider.
///
/// ## Example Usage
///
/// ### Basic Usage with SAML
///
///
///
/// ### OIDC Identity Provider
///
///
///
/// ## Import
///
/// Using `pulumi import`, import WorkSpaces Web Identity Provider using the `identity_provider_arn`. For example:
///
/// ```sh
/// $ pulumi import aws:workspacesweb/identityProvider:IdentityProvider example arn:aws:workspaces-web:us-west-2:123456789012:identityprovider/abcdef12345678/12345678-1234-1234-1234-123456789012
/// ```
class IdentityProvider2 extends CustomResource {
  /// ARN of the identity provider.
  late final Output<String> identityProviderArn;

  /// Identity provider details. The following list describes the provider detail keys for each identity provider type:
  /// * For Google and Login with Amazon:
  late final Output<Map<String, String>> identityProviderDetails;

  /// Identity provider name.
  late final Output<String> identityProviderName;

  /// Identity provider type. Valid values: `SAML`, `Facebook`, `Google`, `LoginWithAmazon`, `SignInWithApple`, `OIDC`.
  late final Output<String> identityProviderType;

  /// ARN of the web portal. Forces replacement if changed.
  ///
  /// The following arguments are optional:
  late final Output<String> portalArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  IdentityProvider2(
    String name, {
    IdentityProviderArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:workspacesweb/identityProvider:IdentityProvider',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.identityProviderArn = registerOutput<String>('identityProviderArn');
    this.identityProviderDetails =
        registerOutput<Map<String, String>>('identityProviderDetails');
    this.identityProviderName = registerOutput<String>('identityProviderName');
    this.identityProviderType = registerOutput<String>('identityProviderType');
    this.portalArn = registerOutput<String>('portalArn');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
