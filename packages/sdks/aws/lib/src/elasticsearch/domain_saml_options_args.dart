// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_saml_options_saml_options.dart';

/// {@template pulumi_elasticsearch_domain_saml_options_domain_saml_options_args_doc}
/// The set of arguments for DomainSamlOptions.
/// {@endtemplate}
/// {@macro pulumi_elasticsearch_domain_saml_options_domain_saml_options_args_doc}
class DomainSamlOptionsArgs {
  /// Name of the domain.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> domainName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The SAML authentication options for an AWS Elasticsearch Domain.
  final pulumi.Input<DomainSamlOptionsSamlOptions>? samlOptions;

  /// Creates a new [DomainSamlOptionsArgs].
  /// [domainName] Name of the domain.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [samlOptions] The SAML authentication options for an AWS Elasticsearch Domain.
  const DomainSamlOptionsArgs({
    required this.domainName,
    this.region,
    this.samlOptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainName': domainName,
      'region': ?region,
      'samlOptions': ?pulumi.Input.mapOptionalInputValue<DomainSamlOptionsSamlOptions, Map<String, dynamic>>(samlOptions, (value) => value.toMap()),
    };
  }

  factory DomainSamlOptionsArgs.fromMap(Map<String, dynamic> map) {
    return DomainSamlOptionsArgs(
      domainName: pulumi.Input.fromValue(map['domainName'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      samlOptions: (() { final guardedValue = map['samlOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainSamlOptionsSamlOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

