import 'package:pulumi/pulumi.dart' as pulumi;
import 'request_validator_args.dart';

/// Manages an API Gateway Request Validator.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.apigateway.RequestValidator` using `REST-API-ID/REQUEST-VALIDATOR-ID`. For example:
///
/// ```sh
/// $ pulumi import aws:apigateway/requestValidator:RequestValidator example 12345abcde/67890fghij
/// ```
class RequestValidator extends pulumi.CustomResource {
  /// Name of the request validator
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// ID of the associated Rest API
  late final pulumi.Output<String> restApi;

  /// Boolean whether to validate request body. Defaults to `false`.
  late final pulumi.Output<bool?> validateRequestBody;

  /// Boolean whether to validate request parameters. Defaults to `false`.
  late final pulumi.Output<bool?> validateRequestParameters;

  RequestValidator(
    String name, {
    RequestValidatorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:apigateway/requestValidator:RequestValidator',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.restApi = registerOutput<String>('restApi');
    this.validateRequestBody = registerOutput<bool?>('validateRequestBody');
    this.validateRequestParameters =
        registerOutput<bool?>('validateRequestParameters');
  }
}
