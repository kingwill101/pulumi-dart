import 'package:pulumi/pulumi.dart';
import 'get_repository_endpoint_args.dart';
import 'get_repository_endpoint_result.dart';

/// The CodeArtifact Repository Endpoint data source returns the endpoint of a repository for a specific package format.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = aws.codeartifact.getRepositoryEndpoint({
/// domain: testAwsCodeartifactDomain.domain,
/// repository: testAwsCodeartifactRepository.repository,
/// format: "npm",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.codeartifact.get_repository_endpoint(domain=test_aws_codeartifact_domain["domain"],
/// repository=test_aws_codeartifact_repository["repository"],
/// format="npm")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var test = Aws.CodeArtifact.GetRepositoryEndpoint.Invoke(new()
/// {
/// Domain = testAwsCodeartifactDomain.Domain,
/// Repository = testAwsCodeartifactRepository.Repository,
/// Format = "npm",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/codeartifact"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := codeartifact.GetRepositoryEndpoint(ctx, &codeartifact.GetRepositoryEndpointArgs{
/// Domain:     testAwsCodeartifactDomain.Domain,
/// Repository: testAwsCodeartifactRepository.Repository,
/// Format:     "npm",
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
/// import com.pulumi.aws.codeartifact.CodeartifactFunctions;
/// import com.pulumi.aws.codeartifact.inputs.GetRepositoryEndpointArgs;
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
/// final var test = CodeartifactFunctions.getRepositoryEndpoint(GetRepositoryEndpointArgs.builder()
/// .domain(testAwsCodeartifactDomain.domain())
/// .repository(testAwsCodeartifactRepository.repository())
/// .format("npm")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// test:
/// fn::invoke:
/// function: aws:codeartifact:getRepositoryEndpoint
/// arguments:
/// domain: ${testAwsCodeartifactDomain.domain}
/// repository: ${testAwsCodeartifactRepository.repository}
/// format: npm
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetRepositoryEndpointResult> getRepositoryEndpoint(
  GetRepositoryEndpointArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:codeartifact/getRepositoryEndpoint:getRepositoryEndpoint',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRepositoryEndpointResult.fromMap(result);
}
