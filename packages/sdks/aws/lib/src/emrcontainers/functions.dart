import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_virtual_cluster_args.dart';
import 'get_virtual_cluster_result.dart';

/// Retrieve information about an EMR Containers (EMR on EKS) Virtual Cluster.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.emrcontainers.getVirtualCluster({
///     virtualClusterId: "example id",
/// });
/// export const name = example.then(example => example.name);
/// export const arn = example.then(example => example.arn);
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.emrcontainers.get_virtual_cluster(virtual_cluster_id="example id")
/// pulumi.export("name", example.name)
/// pulumi.export("arn", example.arn)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.EmrContainers.GetVirtualCluster.Invoke(new()
///     {
///         VirtualClusterId = "example id",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["name"] = example.Apply(getVirtualClusterResult => getVirtualClusterResult.Name),
///         ["arn"] = example.Apply(getVirtualClusterResult => getVirtualClusterResult.Arn),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/emrcontainers"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := emrcontainers.LookupVirtualCluster(ctx, &emrcontainers.LookupVirtualClusterArgs{
/// 			VirtualClusterId: "example id",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("name", example.Name)
/// 		ctx.Export("arn", example.Arn)
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.emrcontainers.EmrcontainersFunctions;
/// import com.pulumi.aws.emrcontainers.inputs.GetVirtualClusterArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var example = EmrcontainersFunctions.getVirtualCluster(GetVirtualClusterArgs.builder()
///             .virtualClusterId("example id")
///             .build());
///
///         ctx.export("name", example.name());
///         ctx.export("arn", example.arn());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:emrcontainers:getVirtualCluster
///       arguments:
///         virtualClusterId: example id
/// outputs:
///   name: ${example.name}
///   arn: ${example.arn}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_emrcontainers_get_virtual_cluster_get_virtual_cluster_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVirtualClusterResult> getVirtualCluster(
  GetVirtualClusterArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:emrcontainers/getVirtualCluster:getVirtualCluster',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVirtualClusterResult.fromMap(result);
}
