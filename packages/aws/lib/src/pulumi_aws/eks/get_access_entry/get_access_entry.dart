import 'package:pulumi/pulumi.dart';
import 'get_access_entry_args.dart';
import 'get_access_entry_result.dart';

/// Access Entry Configurations for an EKS Cluster.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.eks.getAccessEntry({
/// clusterName: exampleAwsEksCluster.name,
/// principalArn: exampleAwsIamRole.arn,
/// });
/// export const eksAccessEntryOutputs = exampleAwsEksAccessEntry;
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.eks.get_access_entry(cluster_name=example_aws_eks_cluster["name"],
/// principal_arn=example_aws_iam_role["arn"])
/// pulumi.export("eksAccessEntryOutputs", example_aws_eks_access_entry)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.Eks.GetAccessEntry.Invoke(new()
/// {
/// ClusterName = exampleAwsEksCluster.Name,
/// PrincipalArn = exampleAwsIamRole.Arn,
/// });
///
/// return new Dictionary<string, object?>
/// {
/// ["eksAccessEntryOutputs"] = exampleAwsEksAccessEntry,
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
/// _, err := eks.LookupAccessEntry(ctx, &eks.LookupAccessEntryArgs{
/// ClusterName:  exampleAwsEksCluster.Name,
/// PrincipalArn: exampleAwsIamRole.Arn,
/// }, nil)
/// if err != nil {
/// return err
/// }
/// ctx.Export("eksAccessEntryOutputs", exampleAwsEksAccessEntry)
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
/// import com.pulumi.aws.eks.inputs.GetAccessEntryArgs;
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
/// final var example = EksFunctions.getAccessEntry(GetAccessEntryArgs.builder()
/// .clusterName(exampleAwsEksCluster.name())
/// .principalArn(exampleAwsIamRole.arn())
/// .build());
///
/// ctx.export("eksAccessEntryOutputs", exampleAwsEksAccessEntry);
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:eks:getAccessEntry
/// arguments:
/// clusterName: ${exampleAwsEksCluster.name}
/// principalArn: ${exampleAwsIamRole.arn}
/// outputs:
/// eksAccessEntryOutputs: ${exampleAwsEksAccessEntry}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetAccessEntryResult> getAccessEntry(
  GetAccessEntryArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:eks/getAccessEntry:getAccessEntry',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAccessEntryResult.fromMap(result);
}
