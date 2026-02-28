import 'package:pulumi/pulumi.dart' as pulumi;
import 'serverless_security_config_args.dart';
import 'serverless_security_config_saml_options.dart';

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
    this.configVersion = registerOutput<String>('configVersion');
    this.description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.samlOptions =
        registerOutput<ServerlessSecurityConfigSamlOptions?>('samlOptions');
    this.type = registerOutput<String>('type');
  }
}
