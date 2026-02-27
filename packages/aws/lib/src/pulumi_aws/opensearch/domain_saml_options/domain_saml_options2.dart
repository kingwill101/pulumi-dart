import 'package:pulumi/pulumi.dart';
import '../domain_saml_options_saml_options/domain_saml_options_saml_options2.dart';
import 'domain_saml_options_args2.dart';

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
class DomainSamlOptions2 extends CustomResource {
  /// Name of the domain.
  ///
  /// The following arguments are optional:
  late final Output<String> domainName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// SAML authentication options for an AWS OpenSearch Domain.
  late final Output<DomainSamlOptionsSamlOptions2?> samlOptions;

  DomainSamlOptions2(
    String name, {
    DomainSamlOptionsArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:opensearch/domainSamlOptions:DomainSamlOptions',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.domainName = registerOutput<String>('domainName');
    this.region = registerOutput<String>('region');
    this.samlOptions =
        registerOutput<DomainSamlOptionsSamlOptions2?>('samlOptions');
  }
}
