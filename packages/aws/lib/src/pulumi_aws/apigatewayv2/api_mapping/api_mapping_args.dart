// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for ApiMapping.
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

  ApiMappingArgs({
    required this.apiId,
    this.apiMappingKey,
    required this.domainName,
    this.region,
    required this.stage,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['apiId'] = apiId;
    final apiMappingKeyValue = apiMappingKey;
    if (apiMappingKeyValue != null) {
      map['apiMappingKey'] = apiMappingKeyValue;
    }
    map['domainName'] = domainName;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['stage'] = stage;
    return map;
  }

  factory ApiMappingArgs.fromMap(Map<String, dynamic> map) {
    return ApiMappingArgs(
      apiId: pulumi.Input.asInput<String>(map['apiId']),
      apiMappingKey: pulumi.Input.asOptionalInput<String>(map['apiMappingKey']),
      domainName: pulumi.Input.asInput<String>(map['domainName']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      stage: pulumi.Input.asInput<String>(map['stage']),
    );
  }
}
