import 'package:pulumi/pulumi.dart' as pulumi;
import 'serverless_security_config_args.dart';
import 'serverless_security_config_saml_options.dart';
import 'serverless_security_config_state.dart';

/// Resource for managing an AWS OpenSearch Serverless Security Config.
///
/// ## Example Usage
///
/// ## Import
///
/// Using `pulumi import`, import OpenSearchServerless Access Policy using the `name` argument prefixed with the string `saml/account_id/`. For example:
///
/// ```sh
/// $ pulumi import aws:opensearch/serverlessSecurityConfig:ServerlessSecurityConfig example saml/123456789012/example
/// ```
class ServerlessSecurityConfig extends pulumi.CustomResource {
  /// Version of the configuration.
  late final pulumi.Output<String> configVersion;

  /// Description of the security configuration.
  late final pulumi.Output<String?> description;

  /// Name of the policy.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Configuration block for SAML options.
  late final pulumi.Output<ServerlessSecurityConfigSamlOptions?> samlOptions;

  /// Type of configuration. Must be `saml`.
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
         options ?? pulumi.CustomResourceOptions(),
       ) {
    configVersion = registerOutput<String>('configVersion');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    samlOptions = registerOutput<ServerlessSecurityConfigSamlOptions?>(
      'samlOptions',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ServerlessSecurityConfigSamlOptions.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    type = registerOutput<String>('type');
  }

  /// Gets an existing [ServerlessSecurityConfig] resource's state with the given [name] and [id].
  static ServerlessSecurityConfig get(
    String name,
    pulumi.Input<String> id, {
    ServerlessSecurityConfigState? state,
  }) {
    return ServerlessSecurityConfig._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
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
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    samlOptions = registerOutput<ServerlessSecurityConfigSamlOptions?>(
      'samlOptions',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ServerlessSecurityConfigSamlOptions.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    type = registerOutput<String>('type');
  }
}
