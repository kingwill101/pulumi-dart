// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_api_cors_configuration.dart';

/// Result data returned by getApi.
class GetApiResult {
  /// URI of the API, of the form `https://{api-id}.execute-api.{region}.amazonaws.com` for HTTP APIs and `wss://{api-id}.execute-api.{region}.amazonaws.com` for WebSocket APIs.
  final String apiEndpoint;
  final String apiId;
  /// An [API key selection expression](https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions).
  /// Applicable for WebSocket APIs.
  final String apiKeySelectionExpression;
  /// ARN of the API.
  final String arn;
  /// Cross-origin resource sharing (CORS) [configuration](https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-cors.html).
  /// Applicable for HTTP APIs.
  final List<GetApiCorsConfiguration> corsConfigurations;
  /// Description of the API.
  final String description;
  /// Whether clients can invoke the API by using the default `execute-api` endpoint.
  final bool disableExecuteApiEndpoint;
  /// ARN prefix to be used in an `aws.lambda.Permission`'s `source_arn` attribute
  /// or in an `aws.iam.Policy` to authorize access to the [`@connections` API](https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-how-to-call-websocket-api-connections.html).
  /// See the [Amazon API Gateway Developer Guide](https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-control-access-iam.html) for details.
  final String executionArn;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String ipAddressType;
  /// Name of the API.
  final String name;
  /// API protocol.
  final String protocolType;
  final String region;
  /// The [route selection expression](https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-route-selection-expressions) for the API.
  final String routeSelectionExpression;
  /// Map of resource tags.
  final Map<String, String> tags;
  /// Version identifier for the API.
  final String version;

  /// Creates a new [GetApiResult].
  /// [apiEndpoint] URI of the API, of the form `https://{api-id}.execute-api.{region}.amazonaws.com` for HTTP APIs and `wss://{api-id}.execute-api.{region}.amazonaws.com` for WebSocket APIs.
  /// [apiId] Required.
  /// [apiKeySelectionExpression] An [API key selection expression](https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions).
  /// [arn] ARN of the API.
  /// [corsConfigurations] Cross-origin resource sharing (CORS) [configuration](https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-cors.html).
  /// [description] Description of the API.
  /// [disableExecuteApiEndpoint] Whether clients can invoke the API by using the default `execute-api` endpoint.
  /// [executionArn] ARN prefix to be used in an `aws.lambda.Permission`'s `source_arn` attribute
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ipAddressType] Required.
  /// [name] Name of the API.
  /// [protocolType] API protocol.
  /// [region] Required.
  /// [routeSelectionExpression] The [route selection expression](https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-route-selection-expressions) for the API.
  /// [tags] Map of resource tags.
  /// [version] Version identifier for the API.
  GetApiResult({
    required this.apiEndpoint,
    required this.apiId,
    required this.apiKeySelectionExpression,
    required this.arn,
    required this.corsConfigurations,
    required this.description,
    required this.disableExecuteApiEndpoint,
    required this.executionArn,
    required this.id,
    required this.ipAddressType,
    required this.name,
    required this.protocolType,
    required this.region,
    required this.routeSelectionExpression,
    required this.tags,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiEndpoint': apiEndpoint,
      'apiId': apiId,
      'apiKeySelectionExpression': apiKeySelectionExpression,
      'arn': arn,
      'corsConfigurations': pulumi.Input.encodeList<GetApiCorsConfiguration, Map<String, dynamic>>(corsConfigurations, (value) => value.toMap()),
      'description': description,
      'disableExecuteApiEndpoint': disableExecuteApiEndpoint,
      'executionArn': executionArn,
      'id': id,
      'ipAddressType': ipAddressType,
      'name': name,
      'protocolType': protocolType,
      'region': region,
      'routeSelectionExpression': routeSelectionExpression,
      'tags': tags,
      'version': version,
    };
  }

  factory GetApiResult.fromMap(Map<String, dynamic> map) {
    return GetApiResult(
      apiEndpoint: map['apiEndpoint'] as String,
      apiId: map['apiId'] as String,
      apiKeySelectionExpression: map['apiKeySelectionExpression'] as String,
      arn: map['arn'] as String,
      corsConfigurations: pulumi.Input.decodeList<GetApiCorsConfiguration>(map['corsConfigurations'], (value) => GetApiCorsConfiguration.fromMap((value as Map).cast<String, dynamic>())),
      description: map['description'] as String,
      disableExecuteApiEndpoint: map['disableExecuteApiEndpoint'] as bool,
      executionArn: map['executionArn'] as String,
      id: map['id'] as String,
      ipAddressType: map['ipAddressType'] as String,
      name: map['name'] as String,
      protocolType: map['protocolType'] as String,
      region: map['region'] as String,
      routeSelectionExpression: map['routeSelectionExpression'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      version: map['version'] as String,
    );
  }
}

