import 'package:pulumi/pulumi.dart';
import 'identity_pool_provider_principal_tag_args.dart';

/// Provides an AWS Cognito Identity Principal Mapping.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Cognito Identity Pool Roles Attachment using the Identity Pool ID and provider name. For example:
///
/// ```sh
/// $ pulumi import aws:cognito/identityPoolProviderPrincipalTag:IdentityPoolProviderPrincipalTag example us-west-2_abc123:CorpAD
/// ```
class IdentityPoolProviderPrincipalTag extends CustomResource {
  /// An identity pool ID.
  late final Output<String> identityPoolId;

  /// The name of the identity provider.
  late final Output<String> identityProviderName;

  /// String to string map of variables.
  late final Output<Map<String, String>?> principalTags;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// use default (username and clientID) attribute mappings.
  late final Output<bool?> useDefaults;

  IdentityPoolProviderPrincipalTag(
    String name, {
    IdentityPoolProviderPrincipalTagArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:cognito/identityPoolProviderPrincipalTag:IdentityPoolProviderPrincipalTag',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.identityPoolId = registerOutput<String>('identityPoolId');
    this.identityProviderName = registerOutput<String>('identityProviderName');
    this.principalTags = registerOutput<Map<String, String>?>('principalTags');
    this.region = registerOutput<String>('region');
    this.useDefaults = registerOutput<bool?>('useDefaults');
  }
}
