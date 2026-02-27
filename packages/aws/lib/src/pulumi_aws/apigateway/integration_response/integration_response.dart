import 'package:pulumi/pulumi.dart';
import 'integration_response_args.dart';

/// Provides an HTTP Method Integration Response for an API Gateway Resource.
///
/// > **Note:** Depends on having `aws.apigateway.Integration` inside your rest api. To ensure this
/// you might need to add an explicit `depends_on` for clean runs.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.apigateway.IntegrationResponse` using `REST-API-ID/RESOURCE-ID/HTTP-METHOD/STATUS-CODE`. For example:
///
/// ```sh
/// $ pulumi import aws:apigateway/integrationResponse:IntegrationResponse example 12345abcde/67890fghij/GET/200
/// ```
class IntegrationResponse extends CustomResource {
  /// How to handle request payload content type conversions. Supported values are `CONVERT_TO_BINARY` and `CONVERT_TO_TEXT`. If this property is not defined, the response payload will be passed through from the integration response to the method response without modification.
  late final Output<String?> contentHandling;

  /// HTTP method (`GET`, `POST`, `PUT`, `DELETE`, `HEAD`, `OPTIONS`, `ANY`).
  late final Output<String> httpMethod;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// API resource ID.
  late final Output<String> resourceId;

  /// Map of response parameters that can be read from the backend response. For example: `response_parameters = { "method.response.header.X-Some-Header" = "integration.response.header.X-Some-Other-Header" }`.
  late final Output<Map<String, String>?> responseParameters;

  /// Map of templates used to transform the integration response body.
  late final Output<Map<String, String>?> responseTemplates;

  /// ID of the associated REST API.
  late final Output<String> restApi;

  /// Regular expression pattern used to choose an integration response based on the response from the backend. Omit configuring this to make the integration the default one. If the backend is an `AWS` Lambda function, the AWS Lambda function error header is matched. For all other `HTTP` and `AWS` backends, the HTTP status code is matched.
  late final Output<String?> selectionPattern;

  /// HTTP status code.
  ///
  /// The following arguments are optional:
  late final Output<String> statusCode;

  IntegrationResponse(
    String name, {
    IntegrationResponseArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:apigateway/integrationResponse:IntegrationResponse',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.contentHandling = registerOutput<String?>('contentHandling');
    this.httpMethod = registerOutput<String>('httpMethod');
    this.region = registerOutput<String>('region');
    this.resourceId = registerOutput<String>('resourceId');
    this.responseParameters =
        registerOutput<Map<String, String>?>('responseParameters');
    this.responseTemplates =
        registerOutput<Map<String, String>?>('responseTemplates');
    this.restApi = registerOutput<String>('restApi');
    this.selectionPattern = registerOutput<String?>('selectionPattern');
    this.statusCode = registerOutput<String>('statusCode');
  }
}
