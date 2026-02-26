import 'package:pulumi/pulumi.dart';
import 'get_cluster_args3.dart';
import 'get_cluster_result3.dart';

/// Retrieve information about an EKS Cluster.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// export = async () => {
/// const example = await aws.eks.getCluster({
/// name: "example",
/// });
/// return {
/// endpoint: example.endpoint,
/// "kubeconfig-certificate-authority-data": example.certificateAuthorities?.[0]?.data,
/// };
/// }
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.eks.get_cluster(name="example")
/// pulumi.export("endpoint", example.endpoint)
/// pulumi.export("kubeconfig-certificate-authority-data", example.certificate_authorities[0].data)
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
/// return new Dictionary<string, object?>
/// {
/// ["endpoint"] = example.Apply(getClusterResult => getClusterResult.Endpoint),
/// ["kubeconfig-certificate-authority-data"] = example.Apply(getClusterResult => getClusterResult.CertificateAuthorities[0]?.Data),
/// };
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
/// example, err := eks.LookupCluster(ctx, &eks.LookupClusterArgs{
/// Name: "example",
/// }, nil)
/// if err != nil {
/// return err
/// }
/// ctx.Export("endpoint", example.Endpoint)
/// ctx.Export("kubeconfig-certificate-authority-data", example.CertificateAuthorities[0].Data)
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
/// ctx.export("endpoint", example.endpoint());
/// ctx.export("kubeconfig-certificate-authority-data", example.certificateAuthorities()[0].data());
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
/// outputs:
/// endpoint: ${example.endpoint}
/// kubeconfig-certificate-authority-data: ${example.certificateAuthorities[0].data}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetClusterResult3> getCluster3(
  GetClusterArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:eks/getCluster:getCluster',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetClusterResult3.fromMap(result);
}
