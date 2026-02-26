import 'package:pulumi/pulumi.dart';
import 'inbound_saml_sso_profile_args2.dart';
import 'saml_idp_config_response2.dart';
import 'saml_sp_config_response2.dart';

/// Creates an InboundSamlSsoProfile for a customer.
/// Auto-naming is currently not supported for this resource.
class InboundSamlSsoProfile2 extends CustomResource {
  /// Immutable. The customer. For example: `customers/C0123abc`.
  late final Output<String> customer;

  /// Human-readable name of the SAML SSO profile.
  late final Output<String> displayName;

  /// SAML identity provider configuration.
  late final Output<SamlIdpConfigResponse2> idpConfig;

  /// [Resource name](https://cloud.google.com/apis/design/resource_names) of the SAML SSO profile.
  late final Output<String> name;

  /// SAML service provider configuration for this SAML SSO profile. These are the service provider details provided by Google that should be configured on the corresponding identity provider.
  late final Output<SamlSpConfigResponse2> spConfig;

  InboundSamlSsoProfile2(
    String name, {
    InboundSamlSsoProfileArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:cloudidentity/v1beta1:InboundSamlSsoProfile',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.customer = Output.createUnknown<String>();
    this.displayName = Output.createUnknown<String>();
    this.idpConfig = Output.createUnknown<SamlIdpConfigResponse2>();
    this.name = Output.createUnknown<String>();
    this.spConfig = Output.createUnknown<SamlSpConfigResponse2>();
  }
}
