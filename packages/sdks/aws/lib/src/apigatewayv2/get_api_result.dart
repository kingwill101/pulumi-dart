// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_api_cors_configuration.dart';

/// Result data returned by getApi.
class GetApiResult {
  /// URI of the API, of the form `https://{api-id}.execute-api.{region}.amazonaws.com` for HTTP APIs and `wss://{api-id}.execute-api.{region}.amazonaws.com` for WebSocket APIs.
  final String? apiEndpoint;
  final String? apiId;
  /// [API key selection expression](https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions). Applicable for WebSocket APIs.
  final String? apiKeySelectionExpression;
  /// ARN of the API.
  final String? arn;
  /// Cross-origin resource sharing (CORS) [configuration](https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-cors.html). Applicable for HTTP APIs. See below.
  final List<GetApiCorsConfiguration>? corsConfigurations;
  /// Description of the API.
  final String? description;
  /// Whether clients can invoke the API by using the default `execute-api` endpoint.
  final bool? disableExecuteApiEndpoint;
  /// ARN prefix to be used in an `aws.lambda.Permission`'s `sourceArn` attribute or in an `aws.iam.Policy` to authorize access to the [`@connections` API](https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-how-to-call-websocket-api-connections.html). See the [Amazon API Gateway Developer Guide](https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-control-access-iam.html) for details.
  final String? executionArn;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// IP address types that can invoke an API.
  final String? ipAddressType;
  /// Name of the API.
  final String? name;
  /// API protocol.
  final String? protocolType;
  final String? region;
  /// [Route selection expression](https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-route-selection-expressions) for the API.
  final String? routeSelectionExpression;
  /// Map of resource tags.
  final Map<String, String>? tags;
  /// Version identifier for the API.
  final String? version;

  /// Creates a new [GetApiResult].
  /// [apiEndpoint] URI of the API, of the form `https://{api-id}.execute-api.{region}.amazonaws.com` for HTTP APIs and `wss://{api-id}.execute-api.{region}.amazonaws.com` for WebSocket APIs.
  /// [apiId] Optional.
  /// [apiKeySelectionExpression] [API key selection expression](https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions). Applicable for WebSocket APIs.
  /// [arn] ARN of the API.
  /// [corsConfigurations] Cross-origin resource sharing (CORS) [configuration](https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-cors.html). Applicable for HTTP APIs. See below.
  /// [description] Description of the API.
  /// [disableExecuteApiEndpoint] Whether clients can invoke the API by using the default `execute-api` endpoint.
  /// [executionArn] ARN prefix to be used in an `aws.lambda.Permission`'s `sourceArn` attribute or in an `aws.iam.Policy` to authorize access to the [`@connections` API](https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-how-to-call-websocket-api-connections.html). See the [Amazon API Gateway Developer Guide](https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-control-access-iam.html) for details.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ipAddressType] IP address types that can invoke an API.
  /// [name] Name of the API.
  /// [protocolType] API protocol.
  /// [region] Optional.
  /// [routeSelectionExpression] [Route selection expression](https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-route-selection-expressions) for the API.
  /// [tags] Map of resource tags.
  /// [version] Version identifier for the API.
  const GetApiResult({
    this.apiEndpoint,
    this.apiId,
    this.apiKeySelectionExpression,
    this.arn,
    this.corsConfigurations,
    this.description,
    this.disableExecuteApiEndpoint,
    this.executionArn,
    this.id,
    this.ipAddressType,
    this.name,
    this.protocolType,
    this.region,
    this.routeSelectionExpression,
    this.tags,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiEndpoint': ?apiEndpoint,
      'apiId': ?apiId,
      'apiKeySelectionExpression': ?apiKeySelectionExpression,
      'arn': ?arn,
      'corsConfigurations': ?(() { final guardedValue = corsConfigurations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetApiCorsConfiguration, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'description': ?description,
      'disableExecuteApiEndpoint': ?disableExecuteApiEndpoint,
      'executionArn': ?executionArn,
      'id': ?id,
      'ipAddressType': ?ipAddressType,
      'name': ?name,
      'protocolType': ?protocolType,
      'region': ?region,
      'routeSelectionExpression': ?routeSelectionExpression,
      'tags': ?tags,
      'version': ?version,
    };
  }

  factory GetApiResult.fromMap(Map<String, dynamic> map) {
    return GetApiResult(
      apiEndpoint: (() { final guardedValue = map['apiEndpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      apiId: (() { final guardedValue = map['apiId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      apiKeySelectionExpression: (() { final guardedValue = map['apiKeySelectionExpression']; if (guardedValue == null) return null; return guardedValue as String; })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      corsConfigurations: (() { final guardedValue = map['corsConfigurations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetApiCorsConfiguration>(guardedValue, (value) => GetApiCorsConfiguration.fromMap((value as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      disableExecuteApiEndpoint: (() { final guardedValue = map['disableExecuteApiEndpoint']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      executionArn: (() { final guardedValue = map['executionArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipAddressType: (() { final guardedValue = map['ipAddressType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      protocolType: (() { final guardedValue = map['protocolType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      routeSelectionExpression: (() { final guardedValue = map['routeSelectionExpression']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
