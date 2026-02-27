import 'package:pulumi/pulumi.dart';
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
class RequestValidator extends CustomResource {
  /// Name of the request validator
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// ID of the associated Rest API
  late final Output<String> restApi;

  /// Boolean whether to validate request body. Defaults to `false`.
  late final Output<bool?> validateRequestBody;

  /// Boolean whether to validate request parameters. Defaults to `false`.
  late final Output<bool?> validateRequestParameters;

  RequestValidator(
    String name, {
    RequestValidatorArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:apigateway/requestValidator:RequestValidator',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.restApi = registerOutput<String>('restApi');
    this.validateRequestBody = registerOutput<bool?>('validateRequestBody');
    this.validateRequestParameters =
        registerOutput<bool?>('validateRequestParameters');
  }
}
