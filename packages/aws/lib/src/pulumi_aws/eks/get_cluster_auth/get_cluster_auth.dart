import 'package:pulumi/pulumi.dart';
import 'get_cluster_auth_args.dart';
import 'get_cluster_auth_result.dart';

/// Get an authentication token to communicate with an EKS cluster.
///
/// Uses IAM credentials from the AWS provider to generate a temporary token that is compatible with
/// [AWS IAM Authenticator](https://github.com/kubernetes-sigs/aws-iam-authenticator) authentication.
/// This can be used to authenticate to an EKS cluster or to a cluster that has the AWS IAM Authenticator
/// server configured.
///
///
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.eks.getCluster({
/// name: "example",
/// });
/// const exampleGetClusterAuth = aws.eks.getClusterAuth({
/// name: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.eks.get_cluster(name="example")
/// example_get_cluster_auth = aws.eks.get_cluster_auth(name="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.Eks.GetCluster.Invoke(new()
/// {
/// Name = "example",
/// });
///
/// var exampleGetClusterAuth = Aws.Eks.GetClusterAuth.Invoke(new()
/// {
/// Name = "example",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/eks"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := eks.LookupCluster(ctx, &eks.LookupClusterArgs{
/// Name: "example",
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = eks.GetClusterAuth(ctx, &eks.GetClusterAuthArgs{
/// Name: "example",
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
/// import com.pulumi.aws.eks.EksFunctions;
/// import com.pulumi.aws.eks.inputs.GetClusterArgs;
/// import com.pulumi.aws.eks.inputs.GetClusterAuthArgs;
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
/// final var example = EksFunctions.getCluster(GetClusterArgs.builder()
/// .name("example")
/// .build());
///
/// final var exampleGetClusterAuth = EksFunctions.getClusterAuth(GetClusterAuthArgs.builder()
/// .name("example")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:eks:getCluster
/// arguments:
/// name: example
/// exampleGetClusterAuth:
/// fn::invoke:
/// function: aws:eks:getClusterAuth
/// arguments:
/// name: example
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetClusterAuthResult> getClusterAuth(
  GetClusterAuthArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:eks/getClusterAuth:getClusterAuth',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetClusterAuthResult.fromMap(result);
}
