import 'package:pulumi/pulumi.dart' as pulumi;
import 'integration_response_apigatewayv2_args.dart';

/// Manages an Amazon API Gateway Version 2 integration response.
/// More information can be found in the [Amazon API Gateway Developer Guide](https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api.html).
///
/// ## Example Usage
///
/// ### Basic
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.apigatewayv2.IntegrationResponse` using the API identifier, integration identifier and integration response identifier. For example:
///
/// ```sh
/// $ pulumi import aws:apigatewayv2/integrationResponse:IntegrationResponse example aabbccddee/1122334/998877
/// ```
class IntegrationResponseApigatewayv2 extends pulumi.CustomResource {
  /// API identifier.
  late final pulumi.Output<String> apiId;

  /// How to handle response payload content type conversions. Valid values: `CONVERT_TO_BINARY`, `CONVERT_TO_TEXT`.
  late final pulumi.Output<String?> contentHandlingStrategy;

  /// Identifier of the `aws.apigatewayv2.Integration`.
  late final pulumi.Output<String> integrationId;

  /// Integration response key.
  late final pulumi.Output<String> integrationResponseKey;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Map of Velocity templates that are applied on the request payload based on the value of the Content-Type header sent by the client.
  late final pulumi.Output<Map<String, String>?> responseTemplates;

  /// The [template selection expression](https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-template-selection-expressions) for the integration response.
  late final pulumi.Output<String?> templateSelectionExpression;

  IntegrationResponseApigatewayv2(
    String name, {
    IntegrationResponseApigatewayv2Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:apigatewayv2/integrationResponse:IntegrationResponse',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiId = registerOutput<String>('apiId');
    this.contentHandlingStrategy =
        registerOutput<String?>('contentHandlingStrategy');
    this.integrationId = registerOutput<String>('integrationId');
    this.integrationResponseKey =
        registerOutput<String>('integrationResponseKey');
    this.region = registerOutput<String>('region');
    this.responseTemplates =
        registerOutput<Map<String, String>?>('responseTemplates');
    this.templateSelectionExpression =
        registerOutput<String?>('templateSelectionExpression');
  }
}
