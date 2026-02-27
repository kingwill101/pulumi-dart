import 'package:pulumi/pulumi.dart';
import 'identity_provider_args.dart';

/// Provides a Cognito User Identity Provider resource.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.cognito.IdentityProvider` resources using their User Pool ID and Provider Name. For example:
///
/// ```sh
/// $ pulumi import aws:cognito/identityProvider:IdentityProvider example us-west-2_abc123:CorpAD
/// ```
class IdentityProvider extends CustomResource {
  /// The map of attribute mapping of user pool attributes. [AttributeMapping in AWS API documentation](https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_CreateIdentityProvider.html#CognitoUserPools-CreateIdentityProvider-request-AttributeMapping)
  late final Output<Map<String, String>> attributeMapping;

  /// The list of identity providers.
  late final Output<List<String>?> idpIdentifiers;

  /// The map of identity details, such as access token
  late final Output<Map<String, String>> providerDetails;

  /// The provider name
  late final Output<String> providerName;

  /// The provider type.  [See AWS API for valid values](https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_CreateIdentityProvider.html#CognitoUserPools-CreateIdentityProvider-request-ProviderType)
  late final Output<String> providerType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The user pool id
  late final Output<String> userPoolId;

  IdentityProvider(
    String name, {
    IdentityProviderArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:cognito/identityProvider:IdentityProvider',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.attributeMapping =
        registerOutput<Map<String, String>>('attributeMapping');
    this.idpIdentifiers = registerOutput<List<String>?>('idpIdentifiers');
    this.providerDetails =
        registerOutput<Map<String, String>>('providerDetails');
    this.providerName = registerOutput<String>('providerName');
    this.providerType = registerOutput<String>('providerType');
    this.region = registerOutput<String>('region');
    this.userPoolId = registerOutput<String>('userPoolId');
  }
}
