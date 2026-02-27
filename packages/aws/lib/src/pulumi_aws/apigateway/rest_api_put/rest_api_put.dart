import 'package:pulumi/pulumi.dart';
import '../rest_api_put_timeouts/rest_api_put_timeouts.dart';
import 'rest_api_put_args.dart';

/// Resource for updating an AWS API Gateway REST API with a new API description.
///
/// > **NOTE:** When importing an OpenAPI specification using the `body` argument, the `info.title` field updates the `name` of the `aws.apigateway.RestApi`. If the imported `title` differs from the configured `name`, Terraform will report the difference.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import API Gateway REST API Put using the `rest_api_id`. For example:
///
/// ```sh
/// $ pulumi import aws:apigateway/restApiPut:RestApiPut example import-id-12345678
/// ```
class RestApiPut extends CustomResource {
  /// PUT request body containing external API definitions. Currently, only OpenAPI definition JSON/YAML files are supported. The maximum size of the API definition file is 6MB.
  late final Output<String> body;

  /// Whether to rollback the API update when a warning is encountered. The default value is `false`.
  late final Output<bool> failOnWarnings;

  /// Map of customizations for importing the specification in the `body` argument. For example, to exclude DocumentationParts from an imported API, use `ignore = "documentation"`. Additional documentation, including other parameters such as `basepath`, can be found in the [API Gateway Developer Guide](https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-import-api.html).
  late final Output<Map<String, String>?> parameters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Identifier of the associated REST API.
  ///
  /// The following arguments are optional:
  late final Output<String> restApiId;
  late final Output<RestApiPutTimeouts?> timeouts;

  /// Map of arbitrary keys and values that, when changed, will trigger a redeployment. To force a redeployment without changing these keys/values, use the `-replace` option with `pulumi preview` or `pulumi up`.
  late final Output<Map<String, String>?> triggers;

  RestApiPut(
    String name, {
    RestApiPutArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:apigateway/restApiPut:RestApiPut',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.body = registerOutput<String>('body');
    this.failOnWarnings = registerOutput<bool>('failOnWarnings');
    this.parameters = registerOutput<Map<String, String>?>('parameters');
    this.region = registerOutput<String>('region');
    this.restApiId = registerOutput<String>('restApiId');
    this.timeouts = registerOutput<RestApiPutTimeouts?>('timeouts');
    this.triggers = registerOutput<Map<String, String>?>('triggers');
  }
}
