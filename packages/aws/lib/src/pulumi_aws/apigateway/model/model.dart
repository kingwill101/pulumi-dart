import 'package:pulumi/pulumi.dart';
import 'model_args.dart';

/// Provides a Model for a REST API Gateway.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.apigateway.Model` using `REST-API-ID/NAME`. For example:
///
/// ```sh
/// $ pulumi import aws:apigateway/model:Model example 12345abcde/example
/// ```
class Model extends CustomResource {
  /// Content type of the model
  late final Output<String> contentType;

  /// Description of the model
  late final Output<String?> description;

  /// Name of the model
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// ID of the associated REST API
  late final Output<String> restApi;

  /// Schema of the model in a JSON form
  late final Output<String?> schema;

  Model(
    String name, {
    ModelArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:apigateway/model:Model',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.contentType = registerOutput<String>('contentType');
    this.description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.restApi = registerOutput<String>('restApi');
    this.schema = registerOutput<String?>('schema');
  }
}
