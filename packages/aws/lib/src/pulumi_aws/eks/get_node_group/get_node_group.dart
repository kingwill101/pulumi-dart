import 'package:pulumi/pulumi.dart';
import 'get_node_group_args.dart';
import 'get_node_group_result.dart';

/// Retrieve information about an EKS Node Group.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.eks.getNodeGroup({
/// clusterName: "example",
/// nodeGroupName: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.eks.get_node_group(cluster_name="example",
/// node_group_name="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.Eks.GetNodeGroup.Invoke(new()
/// {
/// ClusterName = "example",
/// NodeGroupName = "example",
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
/// _, err := eks.LookupNodeGroup(ctx, &eks.LookupNodeGroupArgs{
/// ClusterName:   "example",
/// NodeGroupName: "example",
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
/// import com.pulumi.aws.eks.inputs.GetNodeGroupArgs;
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
/// final var example = EksFunctions.getNodeGroup(GetNodeGroupArgs.builder()
/// .clusterName("example")
/// .nodeGroupName("example")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:eks:getNodeGroup
/// arguments:
/// clusterName: example
/// nodeGroupName: example
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetNodeGroupResult> getNodeGroup(
  GetNodeGroupArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:eks/getNodeGroup:getNodeGroup',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetNodeGroupResult.fromMap(result);
}
