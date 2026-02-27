import 'package:pulumi/pulumi.dart';
import 'response_args.dart';

/// Provides an API Gateway Gateway Response for a REST API Gateway.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.apigateway.Response` using `REST-API-ID/RESPONSE-TYPE`. For example:
///
/// ```sh
/// $ pulumi import aws:apigateway/response:Response example 12345abcde/UNAUTHORIZED
/// ```
class Response extends CustomResource {
  /// Region where this resource will be managed. See the [AWS Documentation](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints) for supported values. Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Map of parameters (paths, query strings and headers) of the Gateway Response.
  late final Output<Map<String, String>?> responseParameters;

  /// Map of templates used to transform the response body.
  late final Output<Map<String, String>?> responseTemplates;

  /// Response type of the associated GatewayResponse. See the [AWS Documentation](https://docs.aws.amazon.com/apigateway/latest/developerguide/supported-gateway-response-types.html) for supported values.
  late final Output<String> responseType;

  /// String identifier of the associated REST API.
  late final Output<String> restApiId;

  /// HTTP status code of the Gateway Response.
  late final Output<String?> statusCode;

  Response(
    String name, {
    ResponseArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:apigateway/response:Response',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.region = registerOutput<String>('region');
    this.responseParameters =
        registerOutput<Map<String, String>?>('responseParameters');
    this.responseTemplates =
        registerOutput<Map<String, String>?>('responseTemplates');
    this.responseType = registerOutput<String>('responseType');
    this.restApiId = registerOutput<String>('restApiId');
    this.statusCode = registerOutput<String?>('statusCode');
  }
}
