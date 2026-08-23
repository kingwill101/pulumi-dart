import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_args.dart';
import 'get_cluster_result.dart';

/// Use this data source to get information about a CloudHSM v2 cluster
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const cluster = aws.cloudhsmv2.getCluster({
///     clusterId: "cluster-testclusterid",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// cluster = aws.cloudhsmv2.get_cluster(cluster_id="cluster-testclusterid")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var cluster = Aws.CloudHsmV2.GetCluster.Invoke(new()
///     {
///         ClusterId = "cluster-testclusterid",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudhsmv2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudhsmv2.LookupCluster(ctx, &cloudhsmv2.LookupClusterArgs{
/// 			ClusterId: "cluster-testclusterid",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// data "aws_cloudhsmv2_getcluster" "cluster" {
///   cluster_id = "cluster-testclusterid"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.cloudhsmv2.Cloudhsmv2Functions;
/// import com.pulumi.aws.cloudhsmv2.inputs.GetClusterArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         final var cluster = Cloudhsmv2Functions.getCluster(GetClusterArgs.builder()
///             .clusterId("cluster-testclusterid")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   cluster:
///     fn::invoke:
///       function: aws:cloudhsmv2:getCluster
///       arguments:
///         clusterId: cluster-testclusterid
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudhsmv2_get_cluster_get_cluster_args_doc}
/// [options] Invoke options controlling this call.
Future<GetClusterResult> getCluster(
  GetClusterArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:cloudhsmv2/getCluster:getCluster',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetClusterResult.fromMap(result);
}
