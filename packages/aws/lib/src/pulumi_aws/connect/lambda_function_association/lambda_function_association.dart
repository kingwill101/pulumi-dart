import 'package:pulumi/pulumi.dart';
import 'lambda_function_association_args.dart';

/// Provides an Amazon Connect Lambda Function Association. For more information see
/// [Amazon Connect: Getting Started](https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-get-started.html) and [Invoke AWS Lambda functions](https://docs.aws.amazon.com/connect/latest/adminguide/connect-lambda-functions.html).
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.connect.LambdaFunctionAssociation("example", {
/// functionArn: exampleAwsLambdaFunction.arn,
/// instanceId: exampleAwsConnectInstance.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.connect.LambdaFunctionAssociation("example",
/// function_arn=example_aws_lambda_function["arn"],
/// instance_id=example_aws_connect_instance["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Connect.LambdaFunctionAssociation("example", new()
/// {
/// FunctionArn = exampleAwsLambdaFunction.Arn,
/// InstanceId = exampleAwsConnectInstance.Id,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/connect"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := connect.NewLambdaFunctionAssociation(ctx, "example", &connect.LambdaFunctionAssociationArgs{
/// FunctionArn: pulumi.Any(exampleAwsLambdaFunction.Arn),
/// InstanceId:  pulumi.Any(exampleAwsConnectInstance.Id),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.connect.LambdaFunctionAssociation;
/// import com.pulumi.aws.connect.LambdaFunctionAssociationArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new LambdaFunctionAssociation("example", LambdaFunctionAssociationArgs.builder()
/// .functionArn(exampleAwsLambdaFunction.arn())
/// .instanceId(exampleAwsConnectInstance.id())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:connect:LambdaFunctionAssociation
/// properties:
/// functionArn: ${exampleAwsLambdaFunction.arn}
/// instanceId: ${exampleAwsConnectInstance.id}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import <span pulumi-lang-nodejs="`aws.connect.LambdaFunctionAssociation`" pulumi-lang-dotnet="`aws.connect.LambdaFunctionAssociation`" pulumi-lang-go="`connect.LambdaFunctionAssociation`" pulumi-lang-python="`connect.LambdaFunctionAssociation`" pulumi-lang-yaml="`aws.connect.LambdaFunctionAssociation`" pulumi-lang-java="`aws.connect.LambdaFunctionAssociation`">`aws.connect.LambdaFunctionAssociation`</span> using the <span pulumi-lang-nodejs="`instanceId`" pulumi-lang-dotnet="`InstanceId`" pulumi-lang-go="`instanceId`" pulumi-lang-python="`instance_id`" pulumi-lang-yaml="`instanceId`" pulumi-lang-java="`instanceId`">`instance_id`</span> and <span pulumi-lang-nodejs="`functionArn`" pulumi-lang-dotnet="`FunctionArn`" pulumi-lang-go="`functionArn`" pulumi-lang-python="`function_arn`" pulumi-lang-yaml="`functionArn`" pulumi-lang-java="`functionArn`">`function_arn`</span> separated by a comma (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:connect/lambdaFunctionAssociation:LambdaFunctionAssociation example aaaaaaaa-bbbb-cccc-dddd-111111111111,arn:aws:lambda:us-west-2:123456789123:function:example
/// ```
class LambdaFunctionAssociation extends CustomResource {
  /// Amazon Resource Name (ARN) of the Lambda Function, omitting any version or alias qualifier.
  late final Output<String> functionArn;

  /// The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.
  late final Output<String> instanceId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  LambdaFunctionAssociation(
    String name, {
    LambdaFunctionAssociationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:connect/lambdaFunctionAssociation:LambdaFunctionAssociation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.functionArn = Output.createUnknown<String>();
    this.instanceId = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
  }
}
