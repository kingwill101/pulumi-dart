// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_name_domain_name_configuration.dart';
import 'domain_name_mutual_tls_authentication.dart';

/// Input properties used for looking up and filtering DomainName resources.
class DomainNameState {
  /// [API mapping selection expression](https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-mapping-selection-expressions) for the domain name.
  final pulumi.Input<String>? apiMappingSelectionExpression;
  /// ARN of the domain name.
  final pulumi.Input<String>? arn;
  /// Domain name. Must be between 1 and 512 characters in length.
  final pulumi.Input<String>? domainName;
  /// Domain name configuration. See below.
  final pulumi.Input<DomainNameDomainNameConfiguration>? domainNameConfiguration;
  /// Mutual TLS authentication configuration for the domain name.
  final pulumi.Input<DomainNameMutualTlsAuthentication>? mutualTlsAuthentication;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Mode to route traffic for the domain name. Valid values: `API_MAPPING_ONLY`, `ROUTING_RULE_ONLY`, `ROUTING_RULE_THEN_API_MAPPING`.
  final pulumi.Input<String>? routingMode;
  /// Map of tags to assign to the domain name. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [DomainNameState].
  /// [apiMappingSelectionExpression] [API mapping selection expression](https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-mapping-selection-expressions) for the domain name.
  /// [arn] ARN of the domain name.
  /// [domainName] Domain name. Must be between 1 and 512 characters in length.
  /// [domainNameConfiguration] Domain name configuration. See below.
  /// [mutualTlsAuthentication] Mutual TLS authentication configuration for the domain name.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [routingMode] Mode to route traffic for the domain name. Valid values: `API_MAPPING_ONLY`, `ROUTING_RULE_ONLY`, `ROUTING_RULE_THEN_API_MAPPING`.
  /// [tags] Map of tags to assign to the domain name. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  DomainNameState({
    this.apiMappingSelectionExpression,
    this.arn,
    this.domainName,
    this.domainNameConfiguration,
    this.mutualTlsAuthentication,
    this.region,
    this.routingMode,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiMappingSelectionExpression': ?apiMappingSelectionExpression,
      'arn': ?arn,
      'domainName': ?domainName,
      'domainNameConfiguration': ?pulumi.Input.mapOptionalInputValue<DomainNameDomainNameConfiguration, Map<String, dynamic>>(domainNameConfiguration, (value) => value.toMap()),
      'mutualTlsAuthentication': ?pulumi.Input.mapOptionalInputValue<DomainNameMutualTlsAuthentication, Map<String, dynamic>>(mutualTlsAuthentication, (value) => value.toMap()),
      'region': ?region,
      'routingMode': ?routingMode,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory DomainNameState.fromMap(Map<String, dynamic> map) {
    return DomainNameState(
      apiMappingSelectionExpression: map['apiMappingSelectionExpression'] == null ? null : ((map['apiMappingSelectionExpression'] as String).input()).input(),
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      domainName: map['domainName'] == null ? null : ((map['domainName'] as String).input()).input(),
      domainNameConfiguration: map['domainNameConfiguration'] == null ? null : ((DomainNameDomainNameConfiguration.fromMap((map['domainNameConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
      mutualTlsAuthentication: map['mutualTlsAuthentication'] == null ? null : ((DomainNameMutualTlsAuthentication.fromMap((map['mutualTlsAuthentication']! as Map).cast<String, dynamic>())).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      routingMode: map['routingMode'] == null ? null : ((map['routingMode'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

