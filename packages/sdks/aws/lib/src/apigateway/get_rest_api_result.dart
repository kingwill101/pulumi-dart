// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_rest_api_endpoint_configuration.dart';

/// Result data returned by getRestApi.
class GetRestApiResult {
  /// Source of the API key for requests.
  final String apiKeySource;
  /// ARN of the REST API.
  final String arn;
  /// List of binary media types supported by the REST API.
  final List<String> binaryMediaTypes;
  /// Description of the REST API.
  final String description;
  /// The endpoint configuration of this RestApi showing the endpoint types of the API.
  final List<GetRestApiEndpointConfiguration> endpointConfigurations;
  /// Execution ARN part to be used in `lambda_permission`'s `source_arn` when allowing API Gateway to invoke a Lambda function, e.g., `arn:aws:execute-api:eu-west-2:123456789012:z4675bid1j`, which can be concatenated with allowed stage, method and resource path.
  final String executionArn;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// Minimum response size to compress for the REST API.
  final String minimumCompressionSize;
  final String name;
  /// JSON formatted policy document that controls access to the API Gateway.
  final String policy;
  final String region;
  /// Set to the ID of the API Gateway Resource on the found REST API where the route matches '/'.
  final String rootResourceId;
  /// Key-value map of resource tags.
  final Map<String, String> tags;

  /// Creates a new [GetRestApiResult].
  /// [apiKeySource] Source of the API key for requests.
  /// [arn] ARN of the REST API.
  /// [binaryMediaTypes] List of binary media types supported by the REST API.
  /// [description] Description of the REST API.
  /// [endpointConfigurations] The endpoint configuration of this RestApi showing the endpoint types of the API.
  /// [executionArn] Execution ARN part to be used in `lambda_permission`'s `source_arn` when allowing API Gateway to invoke a Lambda function, e.g., `arn:aws:execute-api:eu-west-2:123456789012:z4675bid1j`, which can be concatenated with allowed stage, method and resource path.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [minimumCompressionSize] Minimum response size to compress for the REST API.
  /// [name] Required.
  /// [policy] JSON formatted policy document that controls access to the API Gateway.
  /// [region] Required.
  /// [rootResourceId] Set to the ID of the API Gateway Resource on the found REST API where the route matches '/'.
  /// [tags] Key-value map of resource tags.
  const GetRestApiResult({
    required this.apiKeySource,
    required this.arn,
    required this.binaryMediaTypes,
    required this.description,
    required this.endpointConfigurations,
    required this.executionArn,
    required this.id,
    required this.minimumCompressionSize,
    required this.name,
    required this.policy,
    required this.region,
    required this.rootResourceId,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKeySource': apiKeySource,
      'arn': arn,
      'binaryMediaTypes': binaryMediaTypes,
      'description': description,
      'endpointConfigurations': pulumi.Input.encodeList<GetRestApiEndpointConfiguration, Map<String, dynamic>>(endpointConfigurations, (value) => value.toMap()),
      'executionArn': executionArn,
      'id': id,
      'minimumCompressionSize': minimumCompressionSize,
      'name': name,
      'policy': policy,
      'region': region,
      'rootResourceId': rootResourceId,
      'tags': tags,
    };
  }

  factory GetRestApiResult.fromMap(Map<String, dynamic> map) {
    return GetRestApiResult(
      apiKeySource: map['apiKeySource'] as String,
      arn: map['arn'] as String,
      binaryMediaTypes: (map['binaryMediaTypes'] as List).cast<String>(),
      description: map['description'] as String,
      endpointConfigurations: pulumi.Input.decodeList<GetRestApiEndpointConfiguration>(map['endpointConfigurations']!, (value) => GetRestApiEndpointConfiguration.fromMap((value as Map).cast<String, dynamic>())),
      executionArn: map['executionArn'] as String,
      id: map['id'] as String,
      minimumCompressionSize: map['minimumCompressionSize'] as String,
      name: map['name'] as String,
      policy: map['policy'] as String,
      region: map['region'] as String,
      rootResourceId: map['rootResourceId'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}

