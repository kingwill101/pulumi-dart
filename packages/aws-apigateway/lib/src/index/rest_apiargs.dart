// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'apikey_source.dart';
import 'request_validator.dart';
import 'route.dart';
import 'swagger_gateway_response.dart';
import 'package:pulumi_aws/s3.dart' as pulumi_aws_s3;

/// {@template pulumi_index_rest_apiargs_doc}
/// The set of arguments for RestAPI.
/// {@endtemplate}
/// {@macro pulumi_index_rest_apiargs_doc}
class RestAPIArgs {
  /// The source for the apikey. This can either be a HEADER or AUTHORIZER. If `apiKeyRequired` is
  /// set to true on a route, and this is not defined the value will default to HEADER.
  final pulumi.Input<APIKeySource>? apiKeySource;
  /// List of binary media types supported by the REST API. By default, the REST API supports only UTF-8-encoded text payloads.
  /// If importing an OpenAPI specification via the body argument, this corresponds to the x-amazon-apigateway-binary-media-types extension.
  /// If the argument value is provided and is different than the OpenAPI value, the argument value will override the OpenAPI value.
  final pulumi.Input<List<String>>? binaryMediaTypes;
  /// Description of the REST API.
  final pulumi.Input<String>? description;
  /// Whether clients can invoke your API by using the default execute-api endpoint. By default, clients can invoke
  /// your API with the default https://{api_id}.execute-api.{region}.amazonaws.com endpoint. To require that
  /// clients use a custom domain name to invoke your API, disable the default endpoint. Defaults to false.
  final pulumi.Input<bool>? disableExecuteApiEndpoint;
  /// Define custom gateway responses for the API. This can be used to properly enable
  /// CORS for Lambda Authorizers.
  final pulumi.Input<Map<String, SwaggerGatewayResponse>>? gatewayResponses;
  /// Request Validator specifies the validator to use at the API level. Note method level validators
  /// override this.
  final pulumi.Input<RequestValidator>? requestValidator;
  /// Routes to use to initialize the APIGateway.  These will be used to create the Swagger
  /// specification for the API.
  ///
  /// Either `swaggerString` or `routes` must be specified.
  final pulumi.Input<List<Route>>? routes;
  /// The stage name for your API. This will get added as a base path to your API url.
  final pulumi.Input<String>? stageName;
  /// Bucket to use for placing resources for static resources.  If not provided a default one will
  /// be created on your behalf if any `StaticRoute`s are provided.
  final pulumi.Input<pulumi_aws_s3.Bucket>? staticRoutesBucket;
  /// A Swagger specification already in string form to use to initialize the APIGateway.  Note
  /// that you must manually provide permission for any route targets to be invoked by API Gateway
  /// when using `swaggerString`.
  ///
  /// Either `swaggerString` or `routes` must be specified.
  final pulumi.Input<String>? swaggerString;
  /// 'Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present,
  /// tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [RestAPIArgs].
  /// [apiKeySource] The source for the apikey. This can either be a HEADER or AUTHORIZER. If `apiKeyRequired` is
  /// [binaryMediaTypes] List of binary media types supported by the REST API. By default, the REST API supports only UTF-8-encoded text payloads.
  /// [description] Description of the REST API.
  /// [disableExecuteApiEndpoint] Whether clients can invoke your API by using the default execute-api endpoint. By default, clients can invoke
  /// [gatewayResponses] Define custom gateway responses for the API. This can be used to properly enable
  /// [requestValidator] Request Validator specifies the validator to use at the API level. Note method level validators
  /// [routes] Routes to use to initialize the APIGateway.  These will be used to create the Swagger
  /// [stageName] The stage name for your API. This will get added as a base path to your API url.
  /// [staticRoutesBucket] Bucket to use for placing resources for static resources.  If not provided a default one will
  /// [swaggerString] A Swagger specification already in string form to use to initialize the APIGateway.  Note
  /// [tags] 'Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present,
  RestAPIArgs({
    APIKeySource? apiKeySource,
    List<String>? binaryMediaTypes,
    String? description,
    bool? disableExecuteApiEndpoint,
    Map<String, SwaggerGatewayResponse>? gatewayResponses,
    RequestValidator? requestValidator,
    List<Route>? routes,
    String? stageName,
    pulumi_aws_s3.Bucket? staticRoutesBucket,
    String? swaggerString,
    Map<String, String>? tags,
  }) :
      apiKeySource = pulumi.Input.asOptionalInput<APIKeySource>(apiKeySource),
      binaryMediaTypes = pulumi.Input.asOptionalInput<List<String>>(binaryMediaTypes),
      description = pulumi.Input.asOptionalInput<String>(description),
      disableExecuteApiEndpoint = pulumi.Input.asOptionalInput<bool>(disableExecuteApiEndpoint),
      gatewayResponses = pulumi.Input.asOptionalInput<Map<String, SwaggerGatewayResponse>>(gatewayResponses),
      requestValidator = pulumi.Input.asOptionalInput<RequestValidator>(requestValidator),
      routes = pulumi.Input.asOptionalInput<List<Route>>(routes),
      stageName = pulumi.Input.asOptionalInput<String>(stageName),
      staticRoutesBucket = pulumi.Input.asOptionalInput<pulumi_aws_s3.Bucket>(staticRoutesBucket),
      swaggerString = pulumi.Input.asOptionalInput<String>(swaggerString),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKeySource': ?pulumi.Input.mapOptionalInputValue<APIKeySource, String>(apiKeySource, (value) => value.value),
      'binaryMediaTypes': ?binaryMediaTypes,
      'description': ?description,
      'disableExecuteApiEndpoint': ?disableExecuteApiEndpoint,
      'gatewayResponses': ?pulumi.Input.mapOptionalInputValue<Map<String, SwaggerGatewayResponse>, Map<String, Map<String, dynamic>>>(gatewayResponses, (value) => pulumi.Input.encodeMapValues<SwaggerGatewayResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'requestValidator': ?pulumi.Input.mapOptionalInputValue<RequestValidator, String>(requestValidator, (value) => value.value),
      'routes': ?pulumi.Input.mapOptionalInputValue<List<Route>, List<Map<String, dynamic>>>(routes, (value) => pulumi.Input.encodeList<Route, Map<String, dynamic>>(value, (value) => value.toMap())),
      'stageName': ?stageName,
      'staticRoutesBucket': ?staticRoutesBucket,
      'swaggerString': ?swaggerString,
      'tags': ?tags,
    };
  }

  factory RestAPIArgs.fromMap(Map<String, dynamic> map) {
    return RestAPIArgs(
      apiKeySource: map['apiKeySource'] == null ? null : APIKeySource.fromValue(map['apiKeySource'] as String),
      binaryMediaTypes: map['binaryMediaTypes'] == null ? null : (map['binaryMediaTypes'] as List).cast<String>(),
      description: map['description'] == null ? null : map['description'] as String,
      disableExecuteApiEndpoint: map['disableExecuteApiEndpoint'] == null ? null : map['disableExecuteApiEndpoint'] as bool,
      gatewayResponses: map['gatewayResponses'] == null ? null : pulumi.Input.decodeMapValues<SwaggerGatewayResponse>(map['gatewayResponses'], (value) => SwaggerGatewayResponse.fromMap((value as Map).cast<String, dynamic>())),
      requestValidator: map['requestValidator'] == null ? null : RequestValidator.fromValue(map['requestValidator'] as String),
      routes: map['routes'] == null ? null : pulumi.Input.decodeList<Route>(map['routes'], (value) => Route.fromMap((value as Map).cast<String, dynamic>())),
      stageName: map['stageName'] == null ? null : map['stageName'] as String,
      staticRoutesBucket: map['staticRoutesBucket'] == null ? null : map['staticRoutesBucket'] as pulumi_aws_s3.Bucket,
      swaggerString: map['swaggerString'] == null ? null : map['swaggerString'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

