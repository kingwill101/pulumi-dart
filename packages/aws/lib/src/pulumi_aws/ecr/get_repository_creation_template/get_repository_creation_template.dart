import 'package:pulumi/pulumi.dart';
import 'get_repository_creation_template_args.dart';
import 'get_repository_creation_template_result.dart';

/// The ECR Repository Creation Template data source allows the template details to be retrieved for a Repository Creation Template.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ecr.getRepositoryCreationTemplate({
/// prefix: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ecr.get_repository_creation_template(prefix="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.Ecr.GetRepositoryCreationTemplate.Invoke(new()
/// {
/// Prefix = "example",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ecr"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := ecr.LookupRepositoryCreationTemplate(ctx, &ecr.LookupRepositoryCreationTemplateArgs{
/// Prefix: "example",
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
/// import com.pulumi.aws.ecr.EcrFunctions;
/// import com.pulumi.aws.ecr.inputs.GetRepositoryCreationTemplateArgs;
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
/// final var example = EcrFunctions.getRepositoryCreationTemplate(GetRepositoryCreationTemplateArgs.builder()
/// .prefix("example")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:ecr:getRepositoryCreationTemplate
/// arguments:
/// prefix: example
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetRepositoryCreationTemplateResult> getRepositoryCreationTemplate(
  GetRepositoryCreationTemplateArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ecr/getRepositoryCreationTemplate:getRepositoryCreationTemplate',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRepositoryCreationTemplateResult.fromMap(result);
}
