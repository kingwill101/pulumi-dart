// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authorizer.dart';
import 'method.dart';
import 'request_validator.dart';
import 'required_parameter.dart';
import 'target.dart';
import 'package:pulumi_aws/lambda.dart' as pulumi_aws_lambda;

/// A route that that APIGateway should accept and forward to some type of destination. All routes
/// have an incoming path that they match against.  However, destinations are determined by the kind
/// of the route.
class Route {
  /// If true, an API key will be required for this route. The source for the API Key can be set at
  /// the API level and by default, the source will be the HEADER.
  final pulumi.Input<bool>? apiKeyRequired;
  /// Authorizers allows you to define Lambda authorizers be applied for authorization when the
  /// the route is called.
  final pulumi.Input<List<Authorizer>>? authorizers;
  /// The `content-type` to serve the file as.  Only valid when `localPath` points to a file.  If
  /// `localPath` points to a directory, the content types for all files will be inferred.
  final pulumi.Input<String>? contentType;
  /// A raw Swagger object to include verbatim in the integration for this path.
  final pulumi.Input<dynamic>? data;
  /// A Lambda function which will handle the route for the given path and method.
  final pulumi.Input<pulumi_aws_lambda.FunctionType>? eventHandler;
  /// By default, the route method auth type is set to `NONE`. If true, the auth type will be
  /// set to `AWS_IAM`.
  final pulumi.Input<bool>? iamAuthEnabled;
  /// By default a `localPath` hosting static content will also serve 'index.html' in response to a request on a directory.
  /// To disable this pass `false` or supply a new index document name.
  final pulumi.Input<String>? index;
  /// The local path on disk to create static S3 resources for.  Files will be uploaded into S3
  /// objects, and directories will be recursively walked into.
  final pulumi.Input<String>? localPath;
  /// The REST method of the route to match.  Only valid with `eventHandler` or `data` routes.
  final pulumi.Input<Method>? method;
  /// The path on the API that will serve this route.  If not prefixed with `/`,
  /// then a `/` will be added automatically to the beginning.
  final pulumi.Input<String> path;
  /// Request Validator specifies the validator to use at the method level. This will override anything
  /// defined at the API level.
  final pulumi.Input<RequestValidator>? requestValidator;
  /// Required Parameters to validate. If the request validator is set to ALL or PARAMS_ONLY, api
  /// gateway will validate these before sending traffic to the event handler.
  final pulumi.Input<List<RequiredParameter>>? requiredParameters;
  /// The target for an integration route (see https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-api-integration-types.html).
  final pulumi.Input<Target>? target;

  /// Creates a new [Route].
  /// [apiKeyRequired] If true, an API key will be required for this route. The source for the API Key can be set at
  /// [authorizers] Authorizers allows you to define Lambda authorizers be applied for authorization when the
  /// [contentType] The `content-type` to serve the file as.  Only valid when `localPath` points to a file.  If
  /// [data] A raw Swagger object to include verbatim in the integration for this path.
  /// [eventHandler] A Lambda function which will handle the route for the given path and method.
  /// [iamAuthEnabled] By default, the route method auth type is set to `NONE`. If true, the auth type will be
  /// [index] By default a `localPath` hosting static content will also serve 'index.html' in response to a request on a directory.
  /// [localPath] The local path on disk to create static S3 resources for.  Files will be uploaded into S3
  /// [method] The REST method of the route to match.  Only valid with `eventHandler` or `data` routes.
  /// [path] The path on the API that will serve this route.  If not prefixed with `/`,
  /// [requestValidator] Request Validator specifies the validator to use at the method level. This will override anything
  /// [requiredParameters] Required Parameters to validate. If the request validator is set to ALL or PARAMS_ONLY, api
  /// [target] The target for an integration route (see https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-api-integration-types.html).
  Route({
    this.apiKeyRequired,
    this.authorizers,
    this.contentType,
    this.data,
    this.eventHandler,
    this.iamAuthEnabled,
    this.index,
    this.localPath,
    this.method,
    required this.path,
    this.requestValidator,
    this.requiredParameters,
    this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKeyRequired': ?apiKeyRequired,
      'authorizers': ?pulumi.Input.mapOptionalInputValue<List<Authorizer>, List<Map<String, dynamic>>>(authorizers, (value) => pulumi.Input.encodeList<Authorizer, Map<String, dynamic>>(value, (value) => value.toMap())),
      'contentType': ?contentType,
      'data': ?data,
      'eventHandler': ?eventHandler,
      'iamAuthEnabled': ?iamAuthEnabled,
      'index': ?index,
      'localPath': ?localPath,
      'method': ?pulumi.Input.mapOptionalInputValue<Method, String>(method, (value) => value.value),
      'path': path,
      'requestValidator': ?pulumi.Input.mapOptionalInputValue<RequestValidator, String>(requestValidator, (value) => value.value),
      'requiredParameters': ?pulumi.Input.mapOptionalInputValue<List<RequiredParameter>, List<Map<String, dynamic>>>(requiredParameters, (value) => pulumi.Input.encodeList<RequiredParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'target': ?pulumi.Input.mapOptionalInputValue<Target, Map<String, dynamic>>(target, (value) => value.toMap()),
    };
  }

  factory Route.fromMap(Map<String, dynamic> map) {
    return Route(
      apiKeyRequired: map['apiKeyRequired'] == null ? null : (map['apiKeyRequired']! as bool).input(),
      authorizers: map['authorizers'] == null ? null : (pulumi.Input.decodeList<Authorizer>(map['authorizers']!, (value) => Authorizer.fromMap((value as Map).cast<String, dynamic>()))).input(),
      contentType: map['contentType'] == null ? null : (map['contentType']! as String).input(),
      data: map['data'] == null ? null : (map['data']!).input(),
      eventHandler: map['eventHandler'] == null ? null : (map['eventHandler']! as pulumi_aws_lambda.FunctionType).input(),
      iamAuthEnabled: map['iamAuthEnabled'] == null ? null : (map['iamAuthEnabled']! as bool).input(),
      index: map['index'] == null ? null : (map['index']! as String).input(),
      localPath: map['localPath'] == null ? null : (map['localPath']! as String).input(),
      method: map['method'] == null ? null : (Method.fromValue(map['method']! as String)).input(),
      path: (map['path'] as String).input(),
      requestValidator: map['requestValidator'] == null ? null : (RequestValidator.fromValue(map['requestValidator']! as String)).input(),
      requiredParameters: map['requiredParameters'] == null ? null : (pulumi.Input.decodeList<RequiredParameter>(map['requiredParameters']!, (value) => RequiredParameter.fromMap((value as Map).cast<String, dynamic>()))).input(),
      target: map['target'] == null ? null : (Target.fromMap((map['target']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

