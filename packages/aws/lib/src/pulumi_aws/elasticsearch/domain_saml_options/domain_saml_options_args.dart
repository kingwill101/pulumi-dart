// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../domain_saml_options_saml_options/domain_saml_options_saml_options.dart';

/// The set of arguments for DomainSamlOptions.
class DomainSamlOptionsArgs {
  /// Name of the domain.
  ///
  /// The following arguments are optional:
  final Input<String> domainName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The SAML authentication options for an AWS Elasticsearch Domain.
  final Input<DomainSamlOptionsSamlOptions>? samlOptions;

  DomainSamlOptionsArgs({
    required this.domainName,
    this.region,
    this.samlOptions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['domainName'] = domainName;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final samlOptionsValue = samlOptions;
    if (samlOptionsValue != null) {
      map['samlOptions'] = Input.mapOptionalInputValue<
          DomainSamlOptionsSamlOptions,
          Map<String, dynamic>>(samlOptionsValue, (value) => value.toMap());
    }
    return map;
  }

  factory DomainSamlOptionsArgs.fromMap(Map<String, dynamic> map) {
    return DomainSamlOptionsArgs(
      domainName: Input.asInput<String>(map['domainName']),
      region: Input.asOptionalInput<String>(map['region']),
      samlOptions: Input.asOptionalInput<DomainSamlOptionsSamlOptions>(
          map['samlOptions']),
    );
  }
}
