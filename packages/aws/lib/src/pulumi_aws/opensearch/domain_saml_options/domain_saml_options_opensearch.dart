import 'package:pulumi/pulumi.dart' as pulumi;
import '../domain_saml_options_saml_options/domain_saml_options_saml_options_opensearch.dart';
import 'domain_saml_options_opensearch_args.dart';

/// Manages SAML authentication options for an AWS OpenSearch Domain.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import OpenSearch domains using the `domain_name`. For example:
///
/// ```sh
/// $ pulumi import aws:opensearch/domainSamlOptions:DomainSamlOptions example domain_name
/// ```
class DomainSamlOptionsOpensearch extends pulumi.CustomResource {
  /// Name of the domain.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> domainName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// SAML authentication options for an AWS OpenSearch Domain.
  late final pulumi.Output<DomainSamlOptionsSamlOptionsOpensearch?> samlOptions;

  DomainSamlOptionsOpensearch(
    String name, {
    DomainSamlOptionsOpensearchArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:opensearch/domainSamlOptions:DomainSamlOptions',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.domainName = registerOutput<String>('domainName');
    this.region = registerOutput<String>('region');
    this.samlOptions =
        registerOutput<DomainSamlOptionsSamlOptionsOpensearch?>('samlOptions');
  }
}
