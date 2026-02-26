import 'package:pulumi/pulumi.dart';
import 'get_repositories_args.dart';
import 'get_repositories_result.dart';

/// Data source for providing information on AWS ECR (Elastic Container Registry) Repositories.
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ecr.getRepositories({});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ecr.get_repositories()
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.Ecr.GetRepositories.Invoke();
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
/// _, err := ecr.GetRepositories(ctx, &ecr.GetRepositoriesArgs{}, nil)
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
/// import com.pulumi.aws.ecr.inputs.GetRepositoriesArgs;
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
/// final var example = EcrFunctions.getRepositories(GetRepositoriesArgs.builder()
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:ecr:getRepositories
/// arguments: {}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetRepositoriesResult> getRepositories(
  GetRepositoriesArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ecr/getRepositories:getRepositories',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRepositoriesResult.fromMap(result);
}
