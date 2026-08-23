// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_configuration_response.dart';
import 's3_location_response.dart';
import 'tag_response.dart';

/// Definition of awsApiGatewayRestApi
class AwsApiGatewayRestApiPropertiesResponse {
  /// The source of the API key for metering requests according to a usage plan. Valid values are: ``HEADER`` to read the API key from the ``X-API-Key`` header of a request. ``AUTHORIZER`` to read the API key from the ``UsageIdentifierKey`` from a custom authorizer.
  final pulumi.Input<String>? apiKeySourceType;
  /// The list of binary media types supported by the RestApi. By default, the RestApi supports only UTF-8-encoded text payloads.
  final pulumi.Input<List<String>>? binaryMediaTypes;
  /// An OpenAPI specification that defines a set of RESTful APIs in JSON format. For YAML templates, you can also provide the specification in YAML format.
  final pulumi.Input<dynamic>? body;
  /// The Amazon Simple Storage Service (Amazon S3) location that points to an OpenAPI file, which defines a set of RESTful APIs in JSON or YAML format. ``S3Location`` is a property of the [AWS::ApiGateway::RestApi](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-restapi.html) resource that specifies the Amazon S3 location of a OpenAPI (formerly Swagger) file that defines a set of RESTful APIs in JSON or YAML. On January 1, 2016, the Swagger Specification was donated to the [OpenAPI initiative](https://www.openapis.org/), becoming the foundation of the OpenAPI Specification.
  final pulumi.Input<S3LocationResponse>? bodyS3Location;
  /// The ID of the RestApi that you want to clone from.
  final pulumi.Input<String>? cloneFrom;
  /// The description of the RestApi.
  final pulumi.Input<String>? description;
  /// Specifies whether clients can invoke your API by using the default ``execute-api`` endpoint. By default, clients can invoke your API with the default ``https://{api_id}.execute-api.{region}.amazonaws.com`` endpoint. To require that clients use a custom domain name to invoke your API, disable the default endpoint
  final pulumi.Input<bool>? disableExecuteApiEndpoint;
  /// A list of the endpoint types of the API. Use this property when creating an API. When importing an existing API, specify the endpoint configuration types using the ``Parameters`` property. The ``EndpointConfiguration`` property type specifies the endpoint types of a REST API. ``EndpointConfiguration`` is a property of the [AWS::ApiGateway::RestApi](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-restapi.html) resource.
  final pulumi.Input<EndpointConfigurationResponse>? endpointConfiguration;
  /// A query parameter to indicate whether to rollback the API update (``true``) or not (``false``) when a warning is encountered. The default value is ``false``.
  final pulumi.Input<bool>? failOnWarnings;
  /// A nullable integer that is used to enable compression (with non-negative between 0 and 10485760 (10M) bytes, inclusive) or disable compression (with a null value) on an API. When compression is enabled, compression or decompression is not applied on the payload if the payload size is smaller than this value. Setting it to zero allows compression for any payload size.
  final pulumi.Input<int>? minimumCompressionSize;
  /// This property applies only when you use OpenAPI to define your REST API. The ``Mode`` determines how API Gateway handles resource updates. Valid values are ``overwrite`` or ``merge``.  For ``overwrite``, the new API definition replaces the existing one. The existing API identifier remains unchanged.  For ``merge``, the new API definition is merged with the existing API. If you don't specify this property, a default value is chosen. For REST APIs created before March 29, 2021, the default is ``overwrite``. For REST APIs created after March 29, 2021, the new API definition takes precedence, but any container types such as endpoint configurations and binary media types are merged with the existing API.  Use the default mode to define top-level ``RestApi`` properties in addition to using OpenAPI. Generally, it's preferred to use API Gateway's OpenAPI extensions to model these properties.
  final pulumi.Input<String>? mode;
  /// The name of the RestApi. A name is required if the REST API is not based on an OpenAPI specification.
  final pulumi.Input<String>? name;
  /// Custom header parameters as part of the request. For example, to exclude DocumentationParts from an imported API, set ``ignore=documentation`` as a ``parameters`` value, as in the AWS CLI command of ``aws apigateway import-rest-api --parameters ignore=documentation --body 'file:///path/to/imported-api-body.json'``.
  final pulumi.Input<Map<String, String>>? parameters;
  /// A policy document that contains the permissions for the ``RestApi`` resource. To set the ARN for the policy, use the ``!Join`` intrinsic function with ``''`` as delimiter and values of ``'execute-api:/'`` and ``'*'``.
  final pulumi.Input<String>? policy;
  /// Property restApiId
  final pulumi.Input<String>? restApiId;
  /// Property rootResourceId
  final pulumi.Input<String>? rootResourceId;
  /// The key-value map of strings. The valid character set is [a-zA-Z+-=._:/]. The tag key can be up to 128 characters and must not start with ``aws:``. The tag value can be up to 256 characters.
  final pulumi.Input<List<TagResponse>>? tags;

  /// Creates a new [AwsApiGatewayRestApiPropertiesResponse].
  /// [apiKeySourceType] The source of the API key for metering requests according to a usage plan. Valid values are: ``HEADER`` to read the API key from the ``X-API-Key`` header of a request. ``AUTHORIZER`` to read the API key from the ``UsageIdentifierKey`` from a custom authorizer.
  /// [binaryMediaTypes] The list of binary media types supported by the RestApi. By default, the RestApi supports only UTF-8-encoded text payloads.
  /// [body] An OpenAPI specification that defines a set of RESTful APIs in JSON format. For YAML templates, you can also provide the specification in YAML format.
  /// [bodyS3Location] The Amazon Simple Storage Service (Amazon S3) location that points to an OpenAPI file, which defines a set of RESTful APIs in JSON or YAML format. ``S3Location`` is a property of the [AWS::ApiGateway::RestApi](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-restapi.html) resource that specifies the Amazon S3 location of a OpenAPI (formerly Swagger) file that defines a set of RESTful APIs in JSON or YAML. On January 1, 2016, the Swagger Specification was donated to the [OpenAPI initiative](https://www.openapis.org/), becoming the foundation of the OpenAPI Specification.
  /// [cloneFrom] The ID of the RestApi that you want to clone from.
  /// [description] The description of the RestApi.
  /// [disableExecuteApiEndpoint] Specifies whether clients can invoke your API by using the default ``execute-api`` endpoint. By default, clients can invoke your API with the default ``https://{api_id}.execute-api.{region}.amazonaws.com`` endpoint. To require that clients use a custom domain name to invoke your API, disable the default endpoint
  /// [endpointConfiguration] A list of the endpoint types of the API. Use this property when creating an API. When importing an existing API, specify the endpoint configuration types using the ``Parameters`` property. The ``EndpointConfiguration`` property type specifies the endpoint types of a REST API. ``EndpointConfiguration`` is a property of the [AWS::ApiGateway::RestApi](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-restapi.html) resource.
  /// [failOnWarnings] A query parameter to indicate whether to rollback the API update (``true``) or not (``false``) when a warning is encountered. The default value is ``false``.
  /// [minimumCompressionSize] A nullable integer that is used to enable compression (with non-negative between 0 and 10485760 (10M) bytes, inclusive) or disable compression (with a null value) on an API. When compression is enabled, compression or decompression is not applied on the payload if the payload size is smaller than this value. Setting it to zero allows compression for any payload size.
  /// [mode] This property applies only when you use OpenAPI to define your REST API. The ``Mode`` determines how API Gateway handles resource updates. Valid values are ``overwrite`` or ``merge``.  For ``overwrite``, the new API definition replaces the existing one. The existing API identifier remains unchanged.  For ``merge``, the new API definition is merged with the existing API. If you don't specify this property, a default value is chosen. For REST APIs created before March 29, 2021, the default is ``overwrite``. For REST APIs created after March 29, 2021, the new API definition takes precedence, but any container types such as endpoint configurations and binary media types are merged with the existing API.  Use the default mode to define top-level ``RestApi`` properties in addition to using OpenAPI. Generally, it's preferred to use API Gateway's OpenAPI extensions to model these properties.
  /// [name] The name of the RestApi. A name is required if the REST API is not based on an OpenAPI specification.
  /// [parameters] Custom header parameters as part of the request. For example, to exclude DocumentationParts from an imported API, set ``ignore=documentation`` as a ``parameters`` value, as in the AWS CLI command of ``aws apigateway import-rest-api --parameters ignore=documentation --body 'file:///path/to/imported-api-body.json'``.
  /// [policy] A policy document that contains the permissions for the ``RestApi`` resource. To set the ARN for the policy, use the ``!Join`` intrinsic function with ``''`` as delimiter and values of ``'execute-api:/'`` and ``'*'``.
  /// [restApiId] Property restApiId
  /// [rootResourceId] Property rootResourceId
  /// [tags] The key-value map of strings. The valid character set is [a-zA-Z+-=._:/]. The tag key can be up to 128 characters and must not start with ``aws:``. The tag value can be up to 256 characters.
  const AwsApiGatewayRestApiPropertiesResponse({
    this.apiKeySourceType,
    this.binaryMediaTypes,
    this.body,
    this.bodyS3Location,
    this.cloneFrom,
    this.description,
    this.disableExecuteApiEndpoint,
    this.endpointConfiguration,
    this.failOnWarnings,
    this.minimumCompressionSize,
    this.mode,
    this.name,
    this.parameters,
    this.policy,
    this.restApiId,
    this.rootResourceId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKeySourceType': ?apiKeySourceType,
      'binaryMediaTypes': ?binaryMediaTypes,
      'body': ?body,
      'bodyS3Location': ?pulumi.Input.mapOptionalInputValue<S3LocationResponse, Map<String, dynamic>>(bodyS3Location, (value) => value.toMap()),
      'cloneFrom': ?cloneFrom,
      'description': ?description,
      'disableExecuteApiEndpoint': ?disableExecuteApiEndpoint,
      'endpointConfiguration': ?pulumi.Input.mapOptionalInputValue<EndpointConfigurationResponse, Map<String, dynamic>>(endpointConfiguration, (value) => value.toMap()),
      'failOnWarnings': ?failOnWarnings,
      'minimumCompressionSize': ?minimumCompressionSize,
      'mode': ?mode,
      'name': ?name,
      'parameters': ?parameters,
      'policy': ?policy,
      'restApiId': ?restApiId,
      'rootResourceId': ?rootResourceId,
      'tags': ?pulumi.Input.mapOptionalInputValue<List<TagResponse>, List<Map<String, dynamic>>>(tags, (value) => pulumi.Input.encodeList<TagResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AwsApiGatewayRestApiPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AwsApiGatewayRestApiPropertiesResponse(
      apiKeySourceType: (() { final guardedValue = map['apiKeySourceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      binaryMediaTypes: (() { final guardedValue = map['binaryMediaTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      body: (() { final guardedValue = map['body']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      bodyS3Location: (() { final guardedValue = map['bodyS3Location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(S3LocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      cloneFrom: (() { final guardedValue = map['cloneFrom']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      disableExecuteApiEndpoint: (() { final guardedValue = map['disableExecuteApiEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      endpointConfiguration: (() { final guardedValue = map['endpointConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EndpointConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      failOnWarnings: (() { final guardedValue = map['failOnWarnings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      minimumCompressionSize: (() { final guardedValue = map['minimumCompressionSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      policy: (() { final guardedValue = map['policy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      restApiId: (() { final guardedValue = map['restApiId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rootResourceId: (() { final guardedValue = map['rootResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TagResponse>(guardedValue, (value) => TagResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
