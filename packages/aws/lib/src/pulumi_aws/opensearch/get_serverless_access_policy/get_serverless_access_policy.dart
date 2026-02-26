import 'package:pulumi/pulumi.dart';
import 'get_serverless_access_policy_args.dart';
import 'get_serverless_access_policy_result.dart';

/// Data source for managing an AWS OpenSearch Serverless Access Policy.
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
/// const example = aws.opensearch.getServerlessAccessPolicy({
/// name: exampleAwsOpensearchserverlessAccessPolicy.name,
/// type: exampleAwsOpensearchserverlessAccessPolicy.type,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.opensearch.get_serverless_access_policy(name=example_aws_opensearchserverless_access_policy["name"],
/// type=example_aws_opensearchserverless_access_policy["type"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.OpenSearch.GetServerlessAccessPolicy.Invoke(new()
/// {
/// Name = exampleAwsOpensearchserverlessAccessPolicy.Name,
/// Type = exampleAwsOpensearchserverlessAccessPolicy.Type,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/opensearch"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := opensearch.LookupServerlessAccessPolicy(ctx, &opensearch.LookupServerlessAccessPolicyArgs{
/// Name: exampleAwsOpensearchserverlessAccessPolicy.Name,
/// Type: exampleAwsOpensearchserverlessAccessPolicy.Type,
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
/// import com.pulumi.aws.opensearch.OpensearchFunctions;
/// import com.pulumi.aws.opensearch.inputs.GetServerlessAccessPolicyArgs;
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
/// final var example = OpensearchFunctions.getServerlessAccessPolicy(GetServerlessAccessPolicyArgs.builder()
/// .name(exampleAwsOpensearchserverlessAccessPolicy.name())
/// .type(exampleAwsOpensearchserverlessAccessPolicy.type())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:opensearch:getServerlessAccessPolicy
/// arguments:
/// name: ${exampleAwsOpensearchserverlessAccessPolicy.name}
/// type: ${exampleAwsOpensearchserverlessAccessPolicy.type}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetServerlessAccessPolicyResult> getServerlessAccessPolicy(
  GetServerlessAccessPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:opensearch/getServerlessAccessPolicy:getServerlessAccessPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetServerlessAccessPolicyResult.fromMap(result);
}
