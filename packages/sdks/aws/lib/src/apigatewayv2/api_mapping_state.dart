// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ApiMapping resources.
class ApiMappingState {
  /// API identifier.
  final pulumi.Input<String>? apiId;
  /// The API mapping key. Refer to [REST API](https://docs.aws.amazon.com/apigateway/latest/developerguide/rest-api-mappings.html), [HTTP API](https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-mappings.html) or [WebSocket API](https://docs.aws.amazon.com/apigateway/latest/developerguide/websocket-api-mappings.html).
  final pulumi.Input<String>? apiMappingKey;
  /// Domain name. Use the `aws.apigatewayv2.DomainName` resource to configure a domain name.
  final pulumi.Input<String>? domainName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// API stage. Use the `aws.apigatewayv2.Stage` resource to configure an API stage.
  final pulumi.Input<String>? stage;

  /// Creates a new [ApiMappingState].
  /// [apiId] API identifier.
  /// [apiMappingKey] The API mapping key. Refer to [REST API](https://docs.aws.amazon.com/apigateway/latest/developerguide/rest-api-mappings.html), [HTTP API](https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-mappings.html) or [WebSocket API](https://docs.aws.amazon.com/apigateway/latest/developerguide/websocket-api-mappings.html).
  /// [domainName] Domain name. Use the `aws.apigatewayv2.DomainName` resource to configure a domain name.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [stage] API stage. Use the `aws.apigatewayv2.Stage` resource to configure an API stage.
  ApiMappingState({
    pulumi.Output<String>? apiId,
    pulumi.Output<String>? apiMappingKey,
    pulumi.Output<String>? domainName,
    pulumi.Output<String>? region,
    pulumi.Output<String>? stage,
  }) :
      apiId = pulumi.Input.asOptionalInput<String>(apiId),
      apiMappingKey = pulumi.Input.asOptionalInput<String>(apiMappingKey),
      domainName = pulumi.Input.asOptionalInput<String>(domainName),
      region = pulumi.Input.asOptionalInput<String>(region),
      stage = pulumi.Input.asOptionalInput<String>(stage);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiId': ?apiId,
      'apiMappingKey': ?apiMappingKey,
      'domainName': ?domainName,
      'region': ?region,
      'stage': ?stage,
    };
  }

  factory ApiMappingState.fromMap(Map<String, dynamic> map) {
    return ApiMappingState(
      apiId: map['apiId'] == null ? null : pulumi.Output.create<String>(map['apiId'] as String),
      apiMappingKey: map['apiMappingKey'] == null ? null : pulumi.Output.create<String>(map['apiMappingKey'] as String),
      domainName: map['domainName'] == null ? null : pulumi.Output.create<String>(map['domainName'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      stage: map['stage'] == null ? null : pulumi.Output.create<String>(map['stage'] as String),
    );
  }
}

