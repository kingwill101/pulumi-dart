import 'package:pulumi/pulumi.dart';
import '../serverless_security_config_saml_options/serverless_security_config_saml_options.dart';
import 'serverless_security_config_args.dart';

/// Resource for managing an AWS OpenSearch Serverless Security Config.
///
/// ## Example Usage
///
/// ## Import
///
/// Using `pulumi import`, import OpenSearchServerless Access Policy using the <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span> argument prefixed with the string `saml/account_id/`. For example:
///
/// ```sh
/// $ pulumi import aws:opensearch/serverlessSecurityConfig:ServerlessSecurityConfig example saml/123456789012/example
/// ```
class ServerlessSecurityConfig extends CustomResource {
  /// Version of the configuration.
  late final Output<String> configVersion;

  /// Description of the security configuration.
  late final Output<String?> description;

  /// Name of the policy.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Configuration block for SAML options.
  late final Output<ServerlessSecurityConfigSamlOptions?> samlOptions;

  /// Type of configuration. Must be <span pulumi-lang-nodejs="`saml`" pulumi-lang-dotnet="`Saml`" pulumi-lang-go="`saml`" pulumi-lang-python="`saml`" pulumi-lang-yaml="`saml`" pulumi-lang-java="`saml`">`saml`</span>.
  ///
  /// The following arguments are optional:
  late final Output<String> type;

  ServerlessSecurityConfig(
    String name, {
    ServerlessSecurityConfigArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:opensearch/serverlessSecurityConfig:ServerlessSecurityConfig',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.configVersion = Output.createUnknown<String>();
    this.description = Output.createUnknown<String?>();
    this.name = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.samlOptions =
        Output.createUnknown<ServerlessSecurityConfigSamlOptions?>();
    this.type = Output.createUnknown<String>();
  }
}
