import 'package:pulumi/pulumi.dart';
import 'rest_api_policy_args.dart';

/// Provides an API Gateway REST API Policy.
///
/// > **Note:** Amazon API Gateway Version 1 resources are used for creating and deploying REST APIs. To create and deploy WebSocket and HTTP APIs, use Amazon API Gateway Version 2 resources.
///
/// ## Example Usage
///
/// ### Basic
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.apigateway.RestApiPolicy` using the REST API ID. For example:
///
/// ```sh
/// $ pulumi import aws:apigateway/restApiPolicy:RestApiPolicy example 12345abcde
/// ```
class RestApiPolicy extends CustomResource {
  /// JSON formatted policy document that controls access to the API Gateway.
  late final Output<String> policy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// ID of the REST API.
  late final Output<String> restApiId;

  RestApiPolicy(
    String name, {
    RestApiPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:apigateway/restApiPolicy:RestApiPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.policy = registerOutput<String>('policy');
    this.region = registerOutput<String>('region');
    this.restApiId = registerOutput<String>('restApiId');
  }
}
