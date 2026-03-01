import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_cluster_args.dart';
import 'virtual_cluster_container_provider.dart';

/// Manages an EMR Containers (EMR on EKS) Virtual Cluster.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.emrcontainers.VirtualCluster("example", {
///     containerProvider: {
///         id: exampleAwsEksCluster.name,
///         type: "EKS",
///         info: {
///             eksInfo: {
///                 namespace: "default",
///             },
///         },
///     },
///     name: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.emrcontainers.VirtualCluster("example",
///     container_provider={
///         "id": example_aws_eks_cluster["name"],
///         "type": "EKS",
///         "info": {
///             "eks_info": {
///                 "namespace": "default",
///             },
///         },
///     },
///     name="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.EmrContainers.VirtualCluster("example", new()
///     {
///         ContainerProvider = new Aws.EmrContainers.Inputs.VirtualClusterContainerProviderArgs
///         {
///             Id = exampleAwsEksCluster.Name,
///             Type = "EKS",
///             Info = new Aws.EmrContainers.Inputs.VirtualClusterContainerProviderInfoArgs
///             {
///                 EksInfo = new Aws.EmrContainers.Inputs.VirtualClusterContainerProviderInfoEksInfoArgs
///                 {
///                     Namespace = "default",
///                 },
///             },
///         },
///         Name = "example",
///     });
///
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
/// 		_, err := emrcontainers.NewVirtualCluster(ctx, "example", &emrcontainers.VirtualClusterArgs{
/// 			ContainerProvider: &emrcontainers.VirtualClusterContainerProviderArgs{
/// 				Id:   pulumi.Any(exampleAwsEksCluster.Name),
/// 				Type: pulumi.String("EKS"),
/// 				Info: &emrcontainers.VirtualClusterContainerProviderInfoArgs{
/// 					EksInfo: &emrcontainers.VirtualClusterContainerProviderInfoEksInfoArgs{
/// 						Namespace: pulumi.String("default"),
/// 					},
/// 				},
/// 			},
/// 			Name: pulumi.String("example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
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
/// import com.pulumi.aws.emrcontainers.VirtualCluster;
/// import com.pulumi.aws.emrcontainers.VirtualClusterArgs;
/// import com.pulumi.aws.emrcontainers.inputs.VirtualClusterContainerProviderArgs;
/// import com.pulumi.aws.emrcontainers.inputs.VirtualClusterContainerProviderInfoArgs;
/// import com.pulumi.aws.emrcontainers.inputs.VirtualClusterContainerProviderInfoEksInfoArgs;
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
///         var example = new VirtualCluster("example", VirtualClusterArgs.builder()
///             .containerProvider(VirtualClusterContainerProviderArgs.builder()
///                 .id(exampleAwsEksCluster.name())
///                 .type("EKS")
///                 .info(VirtualClusterContainerProviderInfoArgs.builder()
///                     .eksInfo(VirtualClusterContainerProviderInfoEksInfoArgs.builder()
///                         .namespace("default")
///                         .build())
///                     .build())
///                 .build())
///             .name("example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:emrcontainers:VirtualCluster
///     properties:
///       containerProvider:
///         id: ${exampleAwsEksCluster.name}
///         type: EKS
///         info:
///           eksInfo:
///             namespace: default
///       name: example
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import EKS Clusters using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:emrcontainers/virtualCluster:VirtualCluster example a1b2c3d4e5f6g7h8i9j10k11l
/// ```
class VirtualCluster extends pulumi.CustomResource {
  /// ARN of the cluster.
  late final pulumi.Output<String> arn;
  /// Configuration block for the container provider associated with your cluster.
  late final pulumi.Output<VirtualClusterContainerProvider> containerProvider;
  /// Name of the virtual cluster.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [VirtualCluster].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VirtualCluster]. {@macro pulumi_emrcontainers_virtual_cluster_virtual_cluster_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VirtualCluster(
    String name, {
    VirtualClusterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:emrcontainers/virtualCluster:VirtualCluster',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.containerProvider = registerOutput<VirtualClusterContainerProvider>('containerProvider');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
