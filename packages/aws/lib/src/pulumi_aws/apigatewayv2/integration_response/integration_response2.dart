import 'package:pulumi/pulumi.dart';
import 'integration_response_args2.dart';

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
class IntegrationResponse2 extends CustomResource {
  /// API identifier.
  late final Output<String> apiId;

  /// How to handle response payload content type conversions. Valid values: `CONVERT_TO_BINARY`, `CONVERT_TO_TEXT`.
  late final Output<String?> contentHandlingStrategy;

  /// Identifier of the `aws.apigatewayv2.Integration`.
  late final Output<String> integrationId;

  /// Integration response key.
  late final Output<String> integrationResponseKey;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Map of Velocity templates that are applied on the request payload based on the value of the Content-Type header sent by the client.
  late final Output<Map<String, String>?> responseTemplates;

  /// The [template selection expression](https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-template-selection-expressions) for the integration response.
  late final Output<String?> templateSelectionExpression;

  IntegrationResponse2(
    String name, {
    IntegrationResponseArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:apigatewayv2/integrationResponse:IntegrationResponse',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
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
