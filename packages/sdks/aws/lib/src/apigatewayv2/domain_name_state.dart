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
    pulumi.Output<String>? apiMappingSelectionExpression,
    pulumi.Output<String>? arn,
    pulumi.Output<String>? domainName,
    pulumi.Output<DomainNameDomainNameConfiguration>? domainNameConfiguration,
    pulumi.Output<DomainNameMutualTlsAuthentication>? mutualTlsAuthentication,
    pulumi.Output<String>? region,
    pulumi.Output<String>? routingMode,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      apiMappingSelectionExpression = pulumi.Input.asOptionalInput<String>(apiMappingSelectionExpression),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      domainName = pulumi.Input.asOptionalInput<String>(domainName),
      domainNameConfiguration = pulumi.Input.asOptionalInput<DomainNameDomainNameConfiguration>(domainNameConfiguration),
      mutualTlsAuthentication = pulumi.Input.asOptionalInput<DomainNameMutualTlsAuthentication>(mutualTlsAuthentication),
      region = pulumi.Input.asOptionalInput<String>(region),
      routingMode = pulumi.Input.asOptionalInput<String>(routingMode),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

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
      apiMappingSelectionExpression: map['apiMappingSelectionExpression'] == null ? null : pulumi.Output.create<String>(map['apiMappingSelectionExpression'] as String),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      domainName: map['domainName'] == null ? null : pulumi.Output.create<String>(map['domainName'] as String),
      domainNameConfiguration: map['domainNameConfiguration'] == null ? null : pulumi.Output.create<DomainNameDomainNameConfiguration>(DomainNameDomainNameConfiguration.fromMap((map['domainNameConfiguration'] as Map).cast<String, dynamic>())),
      mutualTlsAuthentication: map['mutualTlsAuthentication'] == null ? null : pulumi.Output.create<DomainNameMutualTlsAuthentication>(DomainNameMutualTlsAuthentication.fromMap((map['mutualTlsAuthentication'] as Map).cast<String, dynamic>())),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      routingMode: map['routingMode'] == null ? null : pulumi.Output.create<String>(map['routingMode'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

