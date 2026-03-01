import 'package:pulumi/pulumi.dart' as pulumi;
import 'inbound_saml_sso_profile_cloudidentity_v1beta1_args.dart';
import 'saml_idp_config_response_cloudidentity_v1beta1.dart';
import 'saml_sp_config_response_cloudidentity_v1beta1.dart';

/// Creates an InboundSamlSsoProfile for a customer.
/// Auto-naming is currently not supported for this resource.
class InboundSamlSsoProfileCloudidentityV1beta1 extends pulumi.CustomResource {
  /// Immutable. The customer. For example: `customers/C0123abc`.
  late final pulumi.Output<String> customer;

  /// Human-readable name of the SAML SSO profile.
  late final pulumi.Output<String> displayName;

  /// SAML identity provider configuration.
  late final pulumi.Output<SamlIdpConfigResponseCloudidentityV1beta1> idpConfig;

  /// [Resource name](https://cloud.google.com/apis/design/resource_names) of the SAML SSO profile.
  late final pulumi.Output<String> name;

  /// SAML service provider configuration for this SAML SSO profile. These are the service provider details provided by Google that should be configured on the corresponding identity provider.
  late final pulumi.Output<SamlSpConfigResponseCloudidentityV1beta1> spConfig;

  /// Creates a new [InboundSamlSsoProfileCloudidentityV1beta1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [InboundSamlSsoProfileCloudidentityV1beta1]. {@macro pulumi_cloudidentity_v1beta1_inbound_saml_sso_profile_cloudidentity_v1beta1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  InboundSamlSsoProfileCloudidentityV1beta1(
    String name, {
    InboundSamlSsoProfileCloudidentityV1beta1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:cloudidentity/v1beta1:InboundSamlSsoProfile',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.customer = registerOutput<String>('customer');
    this.displayName = registerOutput<String>('displayName');
    this.idpConfig = registerOutput<SamlIdpConfigResponseCloudidentityV1beta1>(
      'idpConfig',
    );
    this.name = registerOutput<String>('name');
    this.spConfig = registerOutput<SamlSpConfigResponseCloudidentityV1beta1>(
      'spConfig',
    );
  }
}
