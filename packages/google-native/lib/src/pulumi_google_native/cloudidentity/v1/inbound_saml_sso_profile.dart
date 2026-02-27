import 'package:pulumi/pulumi.dart' as pulumi;
import 'inbound_saml_sso_profile_args.dart';
import 'saml_idp_config_response.dart';
import 'saml_sp_config_response.dart';

/// Creates an InboundSamlSsoProfile for a customer.
/// Auto-naming is currently not supported for this resource.
class InboundSamlSsoProfile extends pulumi.CustomResource {
  /// Immutable. The customer. For example: `customers/C0123abc`.
  late final pulumi.Output<String> customer;

  /// Human-readable name of the SAML SSO profile.
  late final pulumi.Output<String> displayName;

  /// SAML identity provider configuration.
  late final pulumi.Output<SamlIdpConfigResponse> idpConfig;

  /// [Resource name](https://cloud.google.com/apis/design/resource_names) of the SAML SSO profile.
  late final pulumi.Output<String> name;

  /// SAML service provider configuration for this SAML SSO profile. These are the service provider details provided by Google that should be configured on the corresponding identity provider.
  late final pulumi.Output<SamlSpConfigResponse> spConfig;

  InboundSamlSsoProfile(
    String name, {
    InboundSamlSsoProfileArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:cloudidentity/v1:InboundSamlSsoProfile',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.customer = registerOutput<String>('customer');
    this.displayName = registerOutput<String>('displayName');
    this.idpConfig = registerOutput<SamlIdpConfigResponse>('idpConfig');
    this.name = registerOutput<String>('name');
    this.spConfig = registerOutput<SamlSpConfigResponse>('spConfig');
  }
}
