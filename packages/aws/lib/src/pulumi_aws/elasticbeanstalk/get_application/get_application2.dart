import 'package:pulumi/pulumi.dart';
import 'get_application_args2.dart';
import 'get_application_result2.dart';

/// Retrieve information about an Elastic Beanstalk Application.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.elasticbeanstalk.getApplication({
/// name: "example",
/// });
/// export const arn = example.then(example => example.arn);
/// export const description = example.then(example => example.description);
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.elasticbeanstalk.get_application(name="example")
/// pulumi.export("arn", example.arn)
/// pulumi.export("description", example.description)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.ElasticBeanstalk.GetApplication.Invoke(new()
/// {
/// Name = "example",
/// });
///
/// return new Dictionary<string, object?>
/// {
/// ["arn"] = example.Apply(getApplicationResult => getApplicationResult.Arn),
/// ["description"] = example.Apply(getApplicationResult => getApplicationResult.Description),
/// };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/elasticbeanstalk"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := elasticbeanstalk.LookupApplication(ctx, &elasticbeanstalk.LookupApplicationArgs{
/// Name: "example",
/// }, nil)
/// if err != nil {
/// return err
/// }
/// ctx.Export("arn", example.Arn)
/// ctx.Export("description", example.Description)
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
/// import com.pulumi.aws.elasticbeanstalk.ElasticbeanstalkFunctions;
/// import com.pulumi.aws.elasticbeanstalk.inputs.GetApplicationArgs;
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
/// final var example = ElasticbeanstalkFunctions.getApplication(GetApplicationArgs.builder()
/// .name("example")
/// .build());
///
/// ctx.export("arn", example.arn());
/// ctx.export("description", example.description());
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:elasticbeanstalk:getApplication
/// arguments:
/// name: example
/// outputs:
/// arn: ${example.arn}
/// description: ${example.description}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetApplicationResult2> getApplication2(
  GetApplicationArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:elasticbeanstalk/getApplication:getApplication',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetApplicationResult2.fromMap(result);
}
