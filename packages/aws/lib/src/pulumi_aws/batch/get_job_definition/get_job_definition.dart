import 'package:pulumi/pulumi.dart';
import 'get_job_definition_args.dart';
import 'get_job_definition_result.dart';

/// Data source for managing an AWS Batch Job Definition.
///
/// ## Example Usage
///
/// ### Lookup via Arn
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const arn = aws.batch.getJobDefinition({
/// arn: "arn:aws:batch:us-east-1:012345678910:job-definition/example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// arn = aws.batch.get_job_definition(arn="arn:aws:batch:us-east-1:012345678910:job-definition/example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var arn = Aws.Batch.GetJobDefinition.Invoke(new()
/// {
/// Arn = "arn:aws:batch:us-east-1:012345678910:job-definition/example",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/batch"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := batch.LookupJobDefinition(ctx, &batch.LookupJobDefinitionArgs{
/// Arn: pulumi.StringRef("arn:aws:batch:us-east-1:012345678910:job-definition/example"),
/// }, nil)
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
/// import com.pulumi.aws.batch.BatchFunctions;
/// import com.pulumi.aws.batch.inputs.GetJobDefinitionArgs;
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
/// final var arn = BatchFunctions.getJobDefinition(GetJobDefinitionArgs.builder()
/// .arn("arn:aws:batch:us-east-1:012345678910:job-definition/example")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// arn:
/// fn::invoke:
/// function: aws:batch:getJobDefinition
/// arguments:
/// arn: arn:aws:batch:us-east-1:012345678910:job-definition/example
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Lookup via Name
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const name = aws.batch.getJobDefinition({
/// name: "example",
/// revision: 2,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// name = aws.batch.get_job_definition(name="example",
/// revision=2)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var name = Aws.Batch.GetJobDefinition.Invoke(new()
/// {
/// Name = "example",
/// Revision = 2,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/batch"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := batch.LookupJobDefinition(ctx, &batch.LookupJobDefinitionArgs{
/// Name:     pulumi.StringRef("example"),
/// Revision: pulumi.IntRef(2),
/// }, nil)
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
/// import com.pulumi.aws.batch.BatchFunctions;
/// import com.pulumi.aws.batch.inputs.GetJobDefinitionArgs;
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
/// final var name = BatchFunctions.getJobDefinition(GetJobDefinitionArgs.builder()
/// .name("example")
/// .revision(2)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// name:
/// fn::invoke:
/// function: aws:batch:getJobDefinition
/// arguments:
/// name: example
/// revision: 2
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetJobDefinitionResult> getJobDefinition(
  GetJobDefinitionArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:batch/getJobDefinition:getJobDefinition',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetJobDefinitionResult.fromMap(result);
}
