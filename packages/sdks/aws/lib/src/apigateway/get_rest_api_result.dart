// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_rest_api_endpoint_configuration.dart';

/// Result data returned by getRestApi.
class GetRestApiResult {
  /// Source of the API key for requests.
  final String? apiKeySource;
  /// ARN of the REST API.
  final String? arn;
  /// List of binary media types supported by the REST API.
  final List<String>? binaryMediaTypes;
  /// Description of the REST API.
  final String? description;
  /// Endpoint access mode for the REST API.
  final String? endpointAccessMode;
  /// Endpoint configuration of this REST API showing the endpoint types of the API. See below.
  final List<GetRestApiEndpointConfiguration>? endpointConfigurations;
  /// Execution ARN part to be used in `lambdaPermission`'s `sourceArn` when allowing API Gateway to invoke a Lambda function, e.g., `arn:aws:execute-api:eu-west-2:123456789012:z4675bid1j`, which can be concatenated with allowed stage, method and resource path.
  final String? executionArn;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Minimum response size to compress for the REST API.
  final String? minimumCompressionSize;
  final String? name;
  /// JSON formatted policy document that controls access to the API Gateway.
  final String? policy;
  final String? region;
  /// Set to the ID of the API Gateway Resource on the found REST API where the route matches '/'.
  final String? rootResourceId;
  /// TLS version + cipher suite for the REST API's default execute-api endpoint.
  final String? securityPolicy;
  /// Key-value map of resource tags.
  final Map<String, String>? tags;

  /// Creates a new [GetRestApiResult].
  /// [apiKeySource] Source of the API key for requests.
  /// [arn] ARN of the REST API.
  /// [binaryMediaTypes] List of binary media types supported by the REST API.
  /// [description] Description of the REST API.
  /// [endpointAccessMode] Endpoint access mode for the REST API.
  /// [endpointConfigurations] Endpoint configuration of this REST API showing the endpoint types of the API. See below.
  /// [executionArn] Execution ARN part to be used in `lambdaPermission`'s `sourceArn` when allowing API Gateway to invoke a Lambda function, e.g., `arn:aws:execute-api:eu-west-2:123456789012:z4675bid1j`, which can be concatenated with allowed stage, method and resource path.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [minimumCompressionSize] Minimum response size to compress for the REST API.
  /// [name] Optional.
  /// [policy] JSON formatted policy document that controls access to the API Gateway.
  /// [region] Optional.
  /// [rootResourceId] Set to the ID of the API Gateway Resource on the found REST API where the route matches '/'.
  /// [securityPolicy] TLS version + cipher suite for the REST API's default execute-api endpoint.
  /// [tags] Key-value map of resource tags.
  const GetRestApiResult({
    this.apiKeySource,
    this.arn,
    this.binaryMediaTypes,
    this.description,
    this.endpointAccessMode,
    this.endpointConfigurations,
    this.executionArn,
    this.id,
    this.minimumCompressionSize,
    this.name,
    this.policy,
    this.region,
    this.rootResourceId,
    this.securityPolicy,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKeySource': ?apiKeySource,
      'arn': ?arn,
      'binaryMediaTypes': ?binaryMediaTypes,
      'description': ?description,
      'endpointAccessMode': ?endpointAccessMode,
      'endpointConfigurations': ?(() { final guardedValue = endpointConfigurations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetRestApiEndpointConfiguration, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'executionArn': ?executionArn,
      'id': ?id,
      'minimumCompressionSize': ?minimumCompressionSize,
      'name': ?name,
      'policy': ?policy,
      'region': ?region,
      'rootResourceId': ?rootResourceId,
      'securityPolicy': ?securityPolicy,
      'tags': ?tags,
    };
  }

  factory GetRestApiResult.fromMap(Map<String, dynamic> map) {
    return GetRestApiResult(
      apiKeySource: (() { final guardedValue = map['apiKeySource']; if (guardedValue == null) return null; return guardedValue as String; })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      binaryMediaTypes: (() { final guardedValue = map['binaryMediaTypes']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      endpointAccessMode: (() { final guardedValue = map['endpointAccessMode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      endpointConfigurations: (() { final guardedValue = map['endpointConfigurations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetRestApiEndpointConfiguration>(guardedValue, (value) => GetRestApiEndpointConfiguration.fromMap((value as Map).cast<String, dynamic>())); })(),
      executionArn: (() { final guardedValue = map['executionArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      minimumCompressionSize: (() { final guardedValue = map['minimumCompressionSize']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      policy: (() { final guardedValue = map['policy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      rootResourceId: (() { final guardedValue = map['rootResourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      securityPolicy: (() { final guardedValue = map['securityPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
