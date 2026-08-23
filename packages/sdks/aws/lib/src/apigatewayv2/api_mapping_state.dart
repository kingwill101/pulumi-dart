// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ApiMapping resources.
class ApiMappingState {
  /// API identifier.
  final pulumi.Input<String>? apiId;
  /// API mapping key. Refer to [REST API](https://docs.aws.amazon.com/apigateway/latest/developerguide/rest-api-mappings.html), [HTTP API](https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-mappings.html) or [WebSocket API](https://docs.aws.amazon.com/apigateway/latest/developerguide/websocket-api-mappings.html).
  final pulumi.Input<String>? apiMappingKey;
  /// Domain name. Use the `aws.apigatewayv2.DomainName` resource to configure a domain name.
  final pulumi.Input<String>? domainName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// API stage. Use the `aws.apigatewayv2.Stage` resource to configure an API stage.
  final pulumi.Input<String>? stage;

  /// Creates a new [ApiMappingState].
  /// [apiId] API identifier.
  /// [apiMappingKey] API mapping key. Refer to [REST API](https://docs.aws.amazon.com/apigateway/latest/developerguide/rest-api-mappings.html), [HTTP API](https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-mappings.html) or [WebSocket API](https://docs.aws.amazon.com/apigateway/latest/developerguide/websocket-api-mappings.html).
  /// [domainName] Domain name. Use the `aws.apigatewayv2.DomainName` resource to configure a domain name.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [stage] API stage. Use the `aws.apigatewayv2.Stage` resource to configure an API stage.
  const ApiMappingState({
    this.apiId,
    this.apiMappingKey,
    this.domainName,
    this.region,
    this.stage,
  });

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
      apiId: (() { final guardedValue = map['apiId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      apiMappingKey: (() { final guardedValue = map['apiMappingKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domainName: (() { final guardedValue = map['domainName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      stage: (() { final guardedValue = map['stage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
