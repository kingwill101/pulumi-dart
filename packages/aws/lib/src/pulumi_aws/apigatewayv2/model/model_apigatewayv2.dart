import 'package:pulumi/pulumi.dart' as pulumi;
import 'model_apigatewayv2_args.dart';

/// Manages an Amazon API Gateway Version 2 [model](https://docs.aws.amazon.com/apigateway/latest/developerguide/models-mappings.html#models-mappings-models).
///
/// ## Example Usage
///
/// ### Basic
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.apigatewayv2.Model` using the API identifier and model identifier. For example:
///
/// ```sh
/// $ pulumi import aws:apigatewayv2/model:Model example aabbccddee/1122334
/// ```
class ModelApigatewayv2 extends pulumi.CustomResource {
  /// API identifier.
  late final pulumi.Output<String> apiId;

  /// The content-type for the model, for example, `application/json`. Must be between 1 and 256 characters in length.
  late final pulumi.Output<String> contentType;

  /// Description of the model. Must be between 1 and 128 characters in length.
  late final pulumi.Output<String?> description;

  /// Name of the model. Must be alphanumeric. Must be between 1 and 128 characters in length.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Schema for the model. This should be a [JSON schema draft 4](https://tools.ietf.org/html/draft-zyp-json-schema-04) model. Must be less than or equal to 32768 characters in length.
  late final pulumi.Output<String> schema;

  ModelApigatewayv2(
    String name, {
    ModelApigatewayv2Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:apigatewayv2/model:Model',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiId = registerOutput<String>('apiId');
    this.contentType = registerOutput<String>('contentType');
    this.description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.schema = registerOutput<String>('schema');
  }
}
