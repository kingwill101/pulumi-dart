// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../domain_saml_options_saml_options/domain_saml_options_saml_options_opensearch.dart';

/// The set of arguments for DomainSamlOptions.
class DomainSamlOptionsOpensearchArgs {
  /// Name of the domain.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> domainName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// SAML authentication options for an AWS OpenSearch Domain.
  final pulumi.Input<DomainSamlOptionsSamlOptionsOpensearch>? samlOptions;

  DomainSamlOptionsOpensearchArgs({
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
      map['samlOptions'] = pulumi.Input.mapOptionalInputValue<
          DomainSamlOptionsSamlOptionsOpensearch,
          Map<String, dynamic>>(samlOptionsValue, (value) => value.toMap());
    }
    return map;
  }

  factory DomainSamlOptionsOpensearchArgs.fromMap(Map<String, dynamic> map) {
    return DomainSamlOptionsOpensearchArgs(
      domainName: pulumi.Input.asInput<String>(map['domainName']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      samlOptions:
          pulumi.Input.asOptionalInput<DomainSamlOptionsSamlOptionsOpensearch>(
              map['samlOptions']),
    );
  }
}
