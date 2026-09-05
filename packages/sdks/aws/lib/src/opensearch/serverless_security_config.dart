import 'package:pulumi/pulumi.dart' as pulumi;
import 'serverless_security_config_args.dart';
import 'serverless_security_config_iam_federation_options.dart';
import 'serverless_security_config_iam_identity_center_options.dart';
import 'serverless_security_config_saml_options.dart';
import 'serverless_security_config_state.dart';

/// Resource for managing an AWS OpenSearch Serverless Security Config.
///
/// ## Example Usage
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import OpenSearchServerless Security Config using the `name` argument prefixed with the string `saml/account_id/`. For example:
///
/// ```sh
/// $ pulumi import aws:opensearch/serverlessSecurityConfig:ServerlessSecurityConfig example saml/123456789012/example
/// ```
class ServerlessSecurityConfig extends pulumi.CustomResource {
  /// Version of the configuration.
  late final pulumi.Output<String> configVersion;
  /// Description of the security configuration.
  late final pulumi.Output<String?> description;
  /// Configuration block for IAM Federation options. Required if `type` is set to `iamfederation`. See `iamFederationOptions` Block below for details.
  late final pulumi.Output<ServerlessSecurityConfigIamFederationOptions?> iamFederationOptions;
  /// Configuration block for IAM Identity Center options. Required if `type` is set to `iamidentitycenter`. See `iamIdentityCenterOptions` Block below for details.
  late final pulumi.Output<ServerlessSecurityConfigIamIdentityCenterOptions?> iamIdentityCenterOptions;
  /// Name of the policy.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Configuration block for SAML options. Required if `type` is set to `saml`. See `samlOptions` Block below for details.
  late final pulumi.Output<ServerlessSecurityConfigSamlOptions?> samlOptions;
  /// Type of configuration. Valid values are `saml`, `iamidentitycenter` and `iamfederation`.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> type;

  /// Creates a new [ServerlessSecurityConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ServerlessSecurityConfig]. {@macro pulumi_opensearch_serverless_security_config_serverless_security_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ServerlessSecurityConfig(
    String name, {
    ServerlessSecurityConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:opensearch/serverlessSecurityConfig:ServerlessSecurityConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    configVersion = registerOutput<String>('configVersion');
    description = registerOutput<String?>('description');
    iamFederationOptions = registerOutput<ServerlessSecurityConfigIamFederationOptions?>('iamFederationOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServerlessSecurityConfigIamFederationOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    iamIdentityCenterOptions = registerOutput<ServerlessSecurityConfigIamIdentityCenterOptions?>('iamIdentityCenterOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServerlessSecurityConfigIamIdentityCenterOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    samlOptions = registerOutput<ServerlessSecurityConfigSamlOptions?>('samlOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServerlessSecurityConfigSamlOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Gets an existing [ServerlessSecurityConfig] resource's state with the given [name] and [id].
  static ServerlessSecurityConfig get(
    String name,
    pulumi.Input<String> id, {
    ServerlessSecurityConfigState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ServerlessSecurityConfig._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ServerlessSecurityConfig._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:opensearch/serverlessSecurityConfig:ServerlessSecurityConfig',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    configVersion = registerOutput<String>('configVersion');
    description = registerOutput<String?>('description');
    iamFederationOptions = registerOutput<ServerlessSecurityConfigIamFederationOptions?>('iamFederationOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServerlessSecurityConfigIamFederationOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    iamIdentityCenterOptions = registerOutput<ServerlessSecurityConfigIamIdentityCenterOptions?>('iamIdentityCenterOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServerlessSecurityConfigIamIdentityCenterOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    samlOptions = registerOutput<ServerlessSecurityConfigSamlOptions?>('samlOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServerlessSecurityConfigSamlOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [ServerlessSecurityConfig] resource.
  ServerlessSecurityConfig.reference(String urn)
    : super(
        'aws:opensearch/serverlessSecurityConfig:ServerlessSecurityConfig',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    configVersion = registerOutput<String>('configVersion');
    description = registerOutput<String?>('description');
    iamFederationOptions = registerOutput<ServerlessSecurityConfigIamFederationOptions?>('iamFederationOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServerlessSecurityConfigIamFederationOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    iamIdentityCenterOptions = registerOutput<ServerlessSecurityConfigIamIdentityCenterOptions?>('iamIdentityCenterOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServerlessSecurityConfigIamIdentityCenterOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    samlOptions = registerOutput<ServerlessSecurityConfigSamlOptions?>('samlOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServerlessSecurityConfigSamlOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
