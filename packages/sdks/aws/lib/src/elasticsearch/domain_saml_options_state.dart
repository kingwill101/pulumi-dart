// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_saml_options_saml_options.dart';

/// Input properties used for looking up and filtering DomainSamlOptions resources.
class DomainSamlOptionsState {
  /// Name of the domain.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? domainName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The SAML authentication options for an AWS Elasticsearch Domain.
  final pulumi.Input<DomainSamlOptionsSamlOptions>? samlOptions;

  /// Creates a new [DomainSamlOptionsState].
  /// [domainName] Name of the domain.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [samlOptions] The SAML authentication options for an AWS Elasticsearch Domain.
  DomainSamlOptionsState({
    pulumi.Output<String>? domainName,
    pulumi.Output<String>? region,
    pulumi.Output<DomainSamlOptionsSamlOptions>? samlOptions,
  }) :
      domainName = pulumi.Input.asOptionalInput<String>(domainName),
      region = pulumi.Input.asOptionalInput<String>(region),
      samlOptions = pulumi.Input.asOptionalInput<DomainSamlOptionsSamlOptions>(samlOptions);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainName': ?domainName,
      'region': ?region,
      'samlOptions': ?pulumi.Input.mapOptionalInputValue<DomainSamlOptionsSamlOptions, Map<String, dynamic>>(samlOptions, (value) => value.toMap()),
    };
  }

  factory DomainSamlOptionsState.fromMap(Map<String, dynamic> map) {
    return DomainSamlOptionsState(
      domainName: map['domainName'] == null ? null : pulumi.Output.create<String>(map['domainName'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      samlOptions: map['samlOptions'] == null ? null : pulumi.Output.create<DomainSamlOptionsSamlOptions>(DomainSamlOptionsSamlOptions.fromMap((map['samlOptions'] as Map).cast<String, dynamic>())),
    );
  }
}

