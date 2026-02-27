import 'package:pulumi/pulumi.dart' as pulumi;
import 'lambda_function_association_args.dart';

/// Provides an Amazon Connect Lambda Function Association. For more information see
/// [Amazon Connect: Getting Started](https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-get-started.html) and [Invoke AWS Lambda functions](https://docs.aws.amazon.com/connect/latest/adminguide/connect-lambda-functions.html).
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.connect.LambdaFunctionAssociation` using the `instance_id` and `function_arn` separated by a comma (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:connect/lambdaFunctionAssociation:LambdaFunctionAssociation example aaaaaaaa-bbbb-cccc-dddd-111111111111,arn:aws:lambda:us-west-2:123456789123:function:example
/// ```
class LambdaFunctionAssociation extends pulumi.CustomResource {
  /// Amazon Resource Name (ARN) of the Lambda Function, omitting any version or alias qualifier.
  late final pulumi.Output<String> functionArn;

  /// The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.
  late final pulumi.Output<String> instanceId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  LambdaFunctionAssociation(
    String name, {
    LambdaFunctionAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:connect/lambdaFunctionAssociation:LambdaFunctionAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.functionArn = registerOutput<String>('functionArn');
    this.instanceId = registerOutput<String>('instanceId');
    this.region = registerOutput<String>('region');
  }
}
