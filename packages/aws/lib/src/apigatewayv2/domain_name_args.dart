// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_name_domain_name_configuration.dart';
import 'domain_name_mutual_tls_authentication.dart';

/// {@template pulumi_apigatewayv2_domain_name_domain_name_args_doc}
/// The set of arguments for DomainName.
/// {@endtemplate}
/// {@macro pulumi_apigatewayv2_domain_name_domain_name_args_doc}
class DomainNameArgs {
  /// Domain name. Must be between 1 and 512 characters in length.
  final pulumi.Input<String> domainName;

  /// Domain name configuration. See below.
  final pulumi.Input<DomainNameDomainNameConfiguration> domainNameConfiguration;

  /// Mutual TLS authentication configuration for the domain name.
  final pulumi.Input<DomainNameMutualTlsAuthentication>?
  mutualTlsAuthentication;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Mode to route traffic for the domain name. Valid values: `API_MAPPING_ONLY`, `ROUTING_RULE_ONLY`, `ROUTING_RULE_THEN_API_MAPPING`.
  final pulumi.Input<String>? routingMode;

  /// Map of tags to assign to the domain name. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [DomainNameArgs].
  /// [domainName] Domain name. Must be between 1 and 512 characters in length.
  /// [domainNameConfiguration] Domain name configuration. See below.
  /// [mutualTlsAuthentication] Mutual TLS authentication configuration for the domain name.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [routingMode] Mode to route traffic for the domain name. Valid values: `API_MAPPING_ONLY`, `ROUTING_RULE_ONLY`, `ROUTING_RULE_THEN_API_MAPPING`.
  /// [tags] Map of tags to assign to the domain name. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  DomainNameArgs({
    required String domainName,
    required DomainNameDomainNameConfiguration domainNameConfiguration,
    DomainNameMutualTlsAuthentication? mutualTlsAuthentication,
    String? region,
    String? routingMode,
    Map<String, String>? tags,
  }) : domainName = pulumi.Input.asInput<String>(domainName),
       domainNameConfiguration =
           pulumi.Input.asInput<DomainNameDomainNameConfiguration>(
             domainNameConfiguration,
           ),
       mutualTlsAuthentication =
           pulumi.Input.asOptionalInput<DomainNameMutualTlsAuthentication>(
             mutualTlsAuthentication,
           ),
       region = pulumi.Input.asOptionalInput<String>(region),
       routingMode = pulumi.Input.asOptionalInput<String>(routingMode),
       tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainName': domainName,
      'domainNameConfiguration':
          pulumi.Input.mapInputValue<
            DomainNameDomainNameConfiguration,
            Map<String, dynamic>
          >(domainNameConfiguration, (value) => value.toMap()),
      'mutualTlsAuthentication':
          ?pulumi.Input.mapOptionalInputValue<
            DomainNameMutualTlsAuthentication,
            Map<String, dynamic>
          >(mutualTlsAuthentication, (value) => value.toMap()),
      'region': ?region,
      'routingMode': ?routingMode,
      'tags': ?tags,
    };
  }

  factory DomainNameArgs.fromMap(Map<String, dynamic> map) {
    return DomainNameArgs(
      domainName: map['domainName'] as String,
      domainNameConfiguration: DomainNameDomainNameConfiguration.fromMap(
        (map['domainNameConfiguration'] as Map).cast<String, dynamic>(),
      ),
      mutualTlsAuthentication: map['mutualTlsAuthentication'] == null
          ? null
          : DomainNameMutualTlsAuthentication.fromMap(
              (map['mutualTlsAuthentication'] as Map).cast<String, dynamic>(),
            ),
      region: map['region'] == null ? null : map['region'] as String,
      routingMode: map['routingMode'] == null
          ? null
          : map['routingMode'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
