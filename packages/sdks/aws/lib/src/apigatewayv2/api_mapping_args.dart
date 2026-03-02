// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigatewayv2_api_mapping_api_mapping_args_doc}
/// The set of arguments for ApiMapping.
/// {@endtemplate}
/// {@macro pulumi_apigatewayv2_api_mapping_api_mapping_args_doc}
class ApiMappingArgs {
  /// API identifier.
  final pulumi.Input<String> apiId;
  /// The API mapping key. Refer to [REST API](https://docs.aws.amazon.com/apigateway/latest/developerguide/rest-api-mappings.html), [HTTP API](https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-mappings.html) or [WebSocket API](https://docs.aws.amazon.com/apigateway/latest/developerguide/websocket-api-mappings.html).
  final pulumi.Input<String>? apiMappingKey;
  /// Domain name. Use the `aws.apigatewayv2.DomainName` resource to configure a domain name.
  final pulumi.Input<String> domainName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// API stage. Use the `aws.apigatewayv2.Stage` resource to configure an API stage.
  final pulumi.Input<String> stage;

  /// Creates a new [ApiMappingArgs].
  /// [apiId] API identifier.
  /// [apiMappingKey] The API mapping key. Refer to [REST API](https://docs.aws.amazon.com/apigateway/latest/developerguide/rest-api-mappings.html), [HTTP API](https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-mappings.html) or [WebSocket API](https://docs.aws.amazon.com/apigateway/latest/developerguide/websocket-api-mappings.html).
  /// [domainName] Domain name. Use the `aws.apigatewayv2.DomainName` resource to configure a domain name.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [stage] API stage. Use the `aws.apigatewayv2.Stage` resource to configure an API stage.
  ApiMappingArgs({
    required this.apiId,
    this.apiMappingKey,
    required this.domainName,
    this.region,
    required this.stage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiId': apiId,
      'apiMappingKey': ?apiMappingKey,
      'domainName': domainName,
      'region': ?region,
      'stage': stage,
    };
  }

  factory ApiMappingArgs.fromMap(Map<String, dynamic> map) {
    return ApiMappingArgs(
      apiId: (map['apiId'] as String).input(),
      apiMappingKey: map['apiMappingKey'] == null ? null : (map['apiMappingKey'] as String).input(),
      domainName: (map['domainName'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      stage: (map['stage'] as String).input(),
    );
  }
}

