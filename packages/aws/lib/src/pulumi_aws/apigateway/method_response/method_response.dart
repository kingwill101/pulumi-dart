import 'package:pulumi/pulumi.dart';
import 'method_response_args.dart';

/// Provides an HTTP Method Response for an API Gateway Resource. More information about API Gateway method responses can be found in the [Amazon API Gateway Developer Guide](https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-method-settings-method-response.html).
///
/// ## Example Usage
///
/// ### Basic Response
///
///
///
/// ### Response with Custom Header and Model
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.apigateway.MethodResponse` using `REST-API-ID/RESOURCE-ID/HTTP-METHOD/STATUS-CODE`. For example:
///
/// ```sh
/// $ pulumi import aws:apigateway/methodResponse:MethodResponse example 12345abcde/67890fghij/GET/200
/// ```
class MethodResponse extends CustomResource {
  /// The HTTP verb of the method resource (`GET`, `POST`, `PUT`, `DELETE`, `HEAD`, `OPTIONS`, `ANY`).
  late final Output<String> httpMethod;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The Resource identifier for the method resource.
  late final Output<String> resourceId;

  /// A map specifying the model resources used for the response's content type. Response models are represented as a key/value map, with a content type as the key and a Model name as the value.
  late final Output<Map<String, String>?> responseModels;

  /// A map specifying required or optional response parameters that API Gateway can send back to the caller. A key defines a method response header name and the associated value is a boolean flag indicating whether the method response parameter is required. The method response header names must match the pattern of `method.response.header.{name}`, where `name` is a valid and unique header name.
  ///
  /// The response parameter names defined here are available in the integration response to be mapped from an integration response header expressed in `integration.response.header.{name}`, a static value enclosed within a pair of single quotes (e.g., '`application/json'`), or a JSON expression from the back-end response payload in the form of `integration.response.body.{JSON-expression}`, where `JSON-expression` is a valid JSON expression without the `$` prefix.)
  late final Output<Map<String, bool>?> responseParameters;

  /// The string identifier of the associated REST API.
  late final Output<String> restApi;

  /// The method response's status code.
  late final Output<String> statusCode;

  MethodResponse(
    String name, {
    MethodResponseArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:apigateway/methodResponse:MethodResponse',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.httpMethod = registerOutput<String>('httpMethod');
    this.region = registerOutput<String>('region');
    this.resourceId = registerOutput<String>('resourceId');
    this.responseModels =
        registerOutput<Map<String, String>?>('responseModels');
    this.responseParameters =
        registerOutput<Map<String, bool>?>('responseParameters');
    this.restApi = registerOutput<String>('restApi');
    this.statusCode = registerOutput<String>('statusCode');
  }
}
