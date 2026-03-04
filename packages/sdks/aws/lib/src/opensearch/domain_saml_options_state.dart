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

  /// SAML authentication options for an AWS OpenSearch Domain.
  final pulumi.Input<DomainSamlOptionsSamlOptions>? samlOptions;

  /// Creates a new [DomainSamlOptionsState].
  /// [domainName] Name of the domain.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [samlOptions] SAML authentication options for an AWS OpenSearch Domain.
  DomainSamlOptionsState({this.domainName, this.region, this.samlOptions});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainName': ?domainName,
      'region': ?region,
      'samlOptions':
          ?pulumi.Input.mapOptionalInputValue<
            DomainSamlOptionsSamlOptions,
            Map<String, dynamic>
          >(samlOptions, (value) => value.toMap()),
    };
  }

  factory DomainSamlOptionsState.fromMap(Map<String, dynamic> map) {
    return DomainSamlOptionsState(
      domainName: (() {
        final guardedValue = map['domainName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      samlOptions: (() {
        final guardedValue = map['samlOptions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DomainSamlOptionsSamlOptions.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
