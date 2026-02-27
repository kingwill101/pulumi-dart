import 'package:pulumi/pulumi.dart';
import '../identity_source_configuration/identity_source_configuration.dart';
import 'identity_source_args.dart';

/// Resource for managing an AWS Verified Permissions Identity Source.
///
/// ## Example Usage
///
/// ### Cognito User Pool Configuration Usage
///
///
///
/// ### OpenID Connect Configuration Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Verified Permissions Identity Source using the `policy_store_id:identity_source_id`. For example:
///
/// ```sh
/// $ pulumi import aws:verifiedpermissions/identitySource:IdentitySource example policy-store-id-12345678:identity-source-id-12345678
/// ```
class IdentitySource extends CustomResource {
  /// Specifies the details required to communicate with the identity provider (IdP) associated with this identity source. See Configuration below.
  late final Output<IdentitySourceConfiguration> configuration;

  /// Specifies the ID of the policy store in which you want to store this identity source.
  late final Output<String> policyStoreId;

  /// Specifies the namespace and data type of the principals generated for identities authenticated by the new identity source.
  late final Output<String> principalEntityType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  IdentitySource(
    String name, {
    IdentitySourceArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:verifiedpermissions/identitySource:IdentitySource',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.configuration =
        registerOutput<IdentitySourceConfiguration>('configuration');
    this.policyStoreId = registerOutput<String>('policyStoreId');
    this.principalEntityType = registerOutput<String>('principalEntityType');
    this.region = registerOutput<String>('region');
  }
}
