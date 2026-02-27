// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../domain_name_domain_name_configuration/domain_name_domain_name_configuration.dart';
import '../domain_name_mutual_tls_authentication/domain_name_mutual_tls_authentication_apigatewayv2.dart';

/// The set of arguments for DomainName.
class DomainNameApigatewayv2Args {
  /// Domain name. Must be between 1 and 512 characters in length.
  final pulumi.Input<String> domainName;

  /// Domain name configuration. See below.
  final pulumi.Input<DomainNameDomainNameConfiguration> domainNameConfiguration;

  /// Mutual TLS authentication configuration for the domain name.
  final pulumi.Input<DomainNameMutualTlsAuthenticationApigatewayv2>?
      mutualTlsAuthentication;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Mode to route traffic for the domain name. Valid values: `API_MAPPING_ONLY`, `ROUTING_RULE_ONLY`, `ROUTING_RULE_THEN_API_MAPPING`.
  final pulumi.Input<String>? routingMode;

  /// Map of tags to assign to the domain name. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  DomainNameApigatewayv2Args({
    required this.domainName,
    required this.domainNameConfiguration,
    this.mutualTlsAuthentication,
    this.region,
    this.routingMode,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['domainName'] = domainName;
    map['domainNameConfiguration'] = pulumi.Input.mapInputValue<
            DomainNameDomainNameConfiguration, Map<String, dynamic>>(
        domainNameConfiguration, (value) => value.toMap());
    final mutualTlsAuthenticationValue = mutualTlsAuthentication;
    if (mutualTlsAuthenticationValue != null) {
      map['mutualTlsAuthentication'] = pulumi.Input.mapOptionalInputValue<
              DomainNameMutualTlsAuthenticationApigatewayv2,
              Map<String, dynamic>>(
          mutualTlsAuthenticationValue, (value) => value.toMap());
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final routingModeValue = routingMode;
    if (routingModeValue != null) {
      map['routingMode'] = routingModeValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory DomainNameApigatewayv2Args.fromMap(Map<String, dynamic> map) {
    return DomainNameApigatewayv2Args(
      domainName: pulumi.Input.asInput<String>(map['domainName']),
      domainNameConfiguration:
          pulumi.Input.asInput<DomainNameDomainNameConfiguration>(
              map['domainNameConfiguration']),
      mutualTlsAuthentication: pulumi.Input.asOptionalInput<
              DomainNameMutualTlsAuthenticationApigatewayv2>(
          map['mutualTlsAuthentication']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      routingMode: pulumi.Input.asOptionalInput<String>(map['routingMode']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
