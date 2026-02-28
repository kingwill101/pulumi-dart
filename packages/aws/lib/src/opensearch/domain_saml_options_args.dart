// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_saml_options_saml_options.dart';

/// {@template pulumi_opensearch_domain_saml_options_domain_saml_options_args_doc}
/// The set of arguments for DomainSamlOptions.
/// {@endtemplate}
/// {@macro pulumi_opensearch_domain_saml_options_domain_saml_options_args_doc}
class DomainSamlOptionsArgs {
  /// Name of the domain.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> domainName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// SAML authentication options for an AWS OpenSearch Domain.
  final pulumi.Input<DomainSamlOptionsSamlOptions>? samlOptions;

  /// Creates a new [DomainSamlOptionsArgs].
  /// [domainName] Name of the domain.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [samlOptions] SAML authentication options for an AWS OpenSearch Domain.
  DomainSamlOptionsArgs({
    required String domainName,
    String? region,
    DomainSamlOptionsSamlOptions? samlOptions,
  })  : domainName = pulumi.Input.asInput<String>(domainName),
        region = pulumi.Input.asOptionalInput<String>(region),
        samlOptions =
            pulumi.Input.asOptionalInput<DomainSamlOptionsSamlOptions>(
                samlOptions);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['domainName'] = domainName;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final samlOptionsValue = samlOptions;
    if (samlOptionsValue != null) {
      map['samlOptions'] = pulumi.Input.mapOptionalInputValue<
          DomainSamlOptionsSamlOptions,
          Map<String, dynamic>>(samlOptionsValue, (value) => value.toMap());
    }
    return map;
  }

  factory DomainSamlOptionsArgs.fromMap(Map<String, dynamic> map) {
    return DomainSamlOptionsArgs(
      domainName: map['domainName'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      samlOptions: map['samlOptions'] == null
          ? null
          : DomainSamlOptionsSamlOptions.fromMap(
              (map['samlOptions'] as Map).cast<String, dynamic>()),
    );
  }
}
