import 'package:pulumi/pulumi.dart' as pulumi;
import 'hpc_cluster_args.dart';

/// Provides a ECS Hpc Cluster resource.
///
/// For information about ECS Hpc Cluster and how to use it, see [What is Hpc Cluster](https://www.alibabacloud.com/help/en/doc-detail/109138.htm).
///
/// > **NOTE:** Available in v1.116.0+.
///
/// ## Example Usage
///
/// Basic Usage
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const example = new alicloud.ecs.HpcCluster("example", {
///     name: "tf-testAcc",
///     description: "For Terraform Test",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.ecs.HpcCluster("example",
///     name="tf-testAcc",
///     description="For Terraform Test")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new AliCloud.Ecs.HpcCluster("example", new()
///     {
///         Name = "tf-testAcc",
///         Description = "For Terraform Test",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ecs.NewHpcCluster(ctx, "example", &ecs.HpcClusterArgs{
/// 			Name:        pulumi.String("tf-testAcc"),
/// 			Description: pulumi.String("For Terraform Test"),
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
/// import com.pulumi.alicloud.ecs.HpcCluster;
/// import com.pulumi.alicloud.ecs.HpcClusterArgs;
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
///         var example = new HpcCluster("example", HpcClusterArgs.builder()
///             .name("tf-testAcc")
///             .description("For Terraform Test")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: alicloud:ecs:HpcCluster
///     properties:
///       name: tf-testAcc
///       description: For Terraform Test
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// ECS Hpc Cluster can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ecs/hpcCluster:HpcCluster example <id>
/// ```
class HpcCluster extends pulumi.CustomResource {
  /// The description of ECS Hpc Cluster.
  late final pulumi.Output<String?> description;
  /// The name of ECS Hpc Cluster.
  late final pulumi.Output<String> name;

  /// Creates a new [HpcCluster].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [HpcCluster]. {@macro pulumi_ecs_hpc_cluster_hpc_cluster_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  HpcCluster(
    String name, {
    HpcClusterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ecs/hpcCluster:HpcCluster',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
  }
}
