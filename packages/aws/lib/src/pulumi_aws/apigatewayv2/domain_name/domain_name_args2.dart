// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../domain_name_domain_name_configuration/domain_name_domain_name_configuration.dart';
import '../domain_name_mutual_tls_authentication/domain_name_mutual_tls_authentication2.dart';

/// The set of arguments for DomainName.
class DomainNameArgs2 {
  /// Domain name. Must be between 1 and 512 characters in length.
  final Input<String> domainName;

  /// Domain name configuration. See below.
  final Input<DomainNameDomainNameConfiguration> domainNameConfiguration;

  /// Mutual TLS authentication configuration for the domain name.
  final Input<DomainNameMutualTlsAuthentication2>? mutualTlsAuthentication;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Mode to route traffic for the domain name. Valid values: `API_MAPPING_ONLY`, `ROUTING_RULE_ONLY`, `ROUTING_RULE_THEN_API_MAPPING`.
  final Input<String>? routingMode;

  /// Map of tags to assign to the domain name. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  DomainNameArgs2({
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
    map['domainNameConfiguration'] = Input.mapInputValue<
            DomainNameDomainNameConfiguration, Map<String, dynamic>>(
        domainNameConfiguration, (value) => value.toMap());
    final mutualTlsAuthenticationValue = mutualTlsAuthentication;
    if (mutualTlsAuthenticationValue != null) {
      map['mutualTlsAuthentication'] = Input.mapOptionalInputValue<
              DomainNameMutualTlsAuthentication2, Map<String, dynamic>>(
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

  factory DomainNameArgs2.fromMap(Map<String, dynamic> map) {
    return DomainNameArgs2(
      domainName: Input.asInput<String>(map['domainName']),
      domainNameConfiguration: Input.asInput<DomainNameDomainNameConfiguration>(
          map['domainNameConfiguration']),
      mutualTlsAuthentication:
          Input.asOptionalInput<DomainNameMutualTlsAuthentication2>(
              map['mutualTlsAuthentication']),
      region: Input.asOptionalInput<String>(map['region']),
      routingMode: Input.asOptionalInput<String>(map['routingMode']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
