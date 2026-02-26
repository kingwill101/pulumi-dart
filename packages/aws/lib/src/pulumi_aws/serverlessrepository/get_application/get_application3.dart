import 'package:pulumi/pulumi.dart';
import 'get_application_args3.dart';
import 'get_application_result3.dart';

/// Use this data source to get information about an AWS Serverless Application Repository application. For example, this can be used to determine the required <span pulumi-lang-nodejs="`capabilities`" pulumi-lang-dotnet="`Capabilities`" pulumi-lang-go="`capabilities`" pulumi-lang-python="`capabilities`" pulumi-lang-yaml="`capabilities`" pulumi-lang-java="`capabilities`">`capabilities`</span> for an application.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.serverlessrepository.getApplication({
/// applicationId: "arn:aws:serverlessrepo:us-east-1:123456789012:applications/ExampleApplication",
/// });
/// const exampleCloudFormationStack = new aws.serverlessrepository.CloudFormationStack("example", {
/// name: "Example",
/// applicationId: example.then(example => example.applicationId),
/// semanticVersion: example.then(example => example.semanticVersion),
/// capabilities: example.then(example => example.requiredCapabilities),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.serverlessrepository.get_application(application_id="arn:aws:serverlessrepo:us-east-1:123456789012:applications/ExampleApplication")
/// example_cloud_formation_stack = aws.serverlessrepository.CloudFormationStack("example",
/// name="Example",
/// application_id=example.application_id,
/// semantic_version=example.semantic_version,
/// capabilities=example.required_capabilities)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.ServerlessRepository.GetApplication.Invoke(new()
/// {
/// ApplicationId = "arn:aws:serverlessrepo:us-east-1:123456789012:applications/ExampleApplication",
/// });
///
/// var exampleCloudFormationStack = new Aws.ServerlessRepository.CloudFormationStack("example", new()
/// {
/// Name = "Example",
/// ApplicationId = example.Apply(getApplicationResult => getApplicationResult.ApplicationId),
/// SemanticVersion = example.Apply(getApplicationResult => getApplicationResult.SemanticVersion),
/// Capabilities = example.Apply(getApplicationResult => getApplicationResult.RequiredCapabilities),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/serverlessrepository"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := serverlessrepository.GetApplication(ctx, &serverlessrepository.GetApplicationArgs{
/// ApplicationId: "arn:aws:serverlessrepo:us-east-1:123456789012:applications/ExampleApplication",
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = serverlessrepository.NewCloudFormationStack(ctx, "example", &serverlessrepository.CloudFormationStackArgs{
/// Name:            pulumi.String("Example"),
/// ApplicationId:   pulumi.String(example.ApplicationId),
/// SemanticVersion: pulumi.String(example.SemanticVersion),
/// Capabilities:    interface{}(example.RequiredCapabilities),
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
/// import com.pulumi.aws.serverlessrepository.ServerlessrepositoryFunctions;
/// import com.pulumi.aws.serverlessrepository.inputs.GetApplicationArgs;
/// import com.pulumi.aws.serverlessrepository.CloudFormationStack;
/// import com.pulumi.aws.serverlessrepository.CloudFormationStackArgs;
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
/// final var example = ServerlessrepositoryFunctions.getApplication(GetApplicationArgs.builder()
/// .applicationId("arn:aws:serverlessrepo:us-east-1:123456789012:applications/ExampleApplication")
/// .build());
///
/// var exampleCloudFormationStack = new CloudFormationStack("exampleCloudFormationStack", CloudFormationStackArgs.builder()
/// .name("Example")
/// .applicationId(example.applicationId())
/// .semanticVersion(example.semanticVersion())
/// .capabilities(example.requiredCapabilities())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// exampleCloudFormationStack:
/// type: aws:serverlessrepository:CloudFormationStack
/// name: example
/// properties:
/// name: Example
/// applicationId: ${example.applicationId}
/// semanticVersion: ${example.semanticVersion}
/// capabilities: ${example.requiredCapabilities}
/// variables:
/// example:
/// fn::invoke:
/// function: aws:serverlessrepository:getApplication
/// arguments:
/// applicationId: arn:aws:serverlessrepo:us-east-1:123456789012:applications/ExampleApplication
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetApplicationResult3> getApplication3(
  GetApplicationArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:serverlessrepository/getApplication:getApplication',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetApplicationResult3.fromMap(result);
}
