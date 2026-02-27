import 'package:pulumi/pulumi.dart';
import '../domain_saml_options_saml_options/domain_saml_options_saml_options.dart';
import 'domain_saml_options_args.dart';

/// Manages SAML authentication options for an AWS Elasticsearch Domain.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Elasticsearch domains using the `domain_name`. For example:
///
/// ```sh
/// $ pulumi import aws:elasticsearch/domainSamlOptions:DomainSamlOptions example domain_name
/// ```
class DomainSamlOptions extends CustomResource {
  /// Name of the domain.
  ///
  /// The following arguments are optional:
  late final Output<String> domainName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The SAML authentication options for an AWS Elasticsearch Domain.
  late final Output<DomainSamlOptionsSamlOptions?> samlOptions;

  DomainSamlOptions(
    String name, {
    DomainSamlOptionsArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:elasticsearch/domainSamlOptions:DomainSamlOptions',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.domainName = registerOutput<String>('domainName');
    this.region = registerOutput<String>('region');
    this.samlOptions =
        registerOutput<DomainSamlOptionsSamlOptions?>('samlOptions');
  }
}
