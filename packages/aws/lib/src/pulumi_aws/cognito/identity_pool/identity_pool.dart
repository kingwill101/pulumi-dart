import 'package:pulumi/pulumi.dart';
import '../identity_pool_cognito_identity_provider/identity_pool_cognito_identity_provider.dart';
import 'identity_pool_args.dart';

/// Provides an AWS Cognito Identity Pool.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Cognito Identity Pool using its ID. For example:
///
/// ```sh
/// $ pulumi import aws:cognito/identityPool:IdentityPool mypool us-west-2:1a234567-8901-234b-5cde-f6789g01h2i3
/// ```
class IdentityPool extends CustomResource {
  /// Enables or disables the classic / basic authentication flow. Default is `false`.
  late final Output<bool?> allowClassicFlow;

  /// Whether the identity pool supports unauthenticated logins or not.
  late final Output<bool?> allowUnauthenticatedIdentities;

  /// The ARN of the identity pool.
  late final Output<String> arn;

  /// An array of Amazon Cognito Identity user pools and their client IDs.
  late final Output<List<IdentityPoolCognitoIdentityProvider>?>
      cognitoIdentityProviders;

  /// The "domain" by which Cognito will refer to your users. This name acts as a placeholder that allows your
  /// backend and the Cognito service to communicate about the developer provider.
  late final Output<String?> developerProviderName;

  /// The Cognito Identity Pool name.
  late final Output<String> identityPoolName;

  /// Set of OpendID Connect provider ARNs.
  late final Output<List<String>?> openidConnectProviderArns;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// An array of Amazon Resource Names (ARNs) of the SAML provider for your identity.
  late final Output<List<String>?> samlProviderArns;

  /// Key-Value pairs mapping provider names to provider app IDs.
  late final Output<Map<String, String>?> supportedLoginProviders;

  /// A map of tags to assign to the Identity Pool. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  IdentityPool(
    String name, {
    IdentityPoolArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:cognito/identityPool:IdentityPool',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.allowClassicFlow = registerOutput<bool?>('allowClassicFlow');
    this.allowUnauthenticatedIdentities =
        registerOutput<bool?>('allowUnauthenticatedIdentities');
    this.arn = registerOutput<String>('arn');
    this.cognitoIdentityProviders =
        registerOutput<List<IdentityPoolCognitoIdentityProvider>?>(
            'cognitoIdentityProviders');
    this.developerProviderName =
        registerOutput<String?>('developerProviderName');
    this.identityPoolName = registerOutput<String>('identityPoolName');
    this.openidConnectProviderArns =
        registerOutput<List<String>?>('openidConnectProviderArns');
    this.region = registerOutput<String>('region');
    this.samlProviderArns = registerOutput<List<String>?>('samlProviderArns');
    this.supportedLoginProviders =
        registerOutput<Map<String, String>?>('supportedLoginProviders');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
