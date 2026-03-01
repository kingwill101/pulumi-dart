import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_group_args.dart';
import 'instance_group_ebs_config.dart';

/// Provides an Elastic MapReduce Cluster Instance Group configuration.
/// See [Amazon Elastic MapReduce Documentation](https://aws.amazon.com/documentation/emr/) for more information.
///
/// > **NOTE:** At this time, Instance Groups cannot be destroyed through the API nor
/// web interface. Instance Groups are destroyed when the EMR Cluster is destroyed.
/// this provider will resize any Instance Group to zero when destroying the resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const task = new aws.emr.InstanceGroup("task", {
///     clusterId: tf_test_cluster.id,
///     instanceCount: 1,
///     instanceType: "m5.xlarge",
///     name: "my little instance group",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// task = aws.emr.InstanceGroup("task",
///     cluster_id=tf_test_cluster["id"],
///     instance_count=1,
///     instance_type="m5.xlarge",
///     name="my little instance group")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var task = new Aws.Emr.InstanceGroup("task", new()
///     {
///         ClusterId = tf_test_cluster.Id,
///         InstanceCount = 1,
///         InstanceType = "m5.xlarge",
///         Name = "my little instance group",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/emr"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := emr.NewInstanceGroup(ctx, "task", &emr.InstanceGroupArgs{
/// 			ClusterId:     pulumi.Any(tf_test_cluster.Id),
/// 			InstanceCount: pulumi.Int(1),
/// 			InstanceType:  pulumi.String("m5.xlarge"),
/// 			Name:          pulumi.String("my little instance group"),
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
/// import com.pulumi.aws.emr.InstanceGroup;
/// import com.pulumi.aws.emr.InstanceGroupArgs;
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
///         var task = new InstanceGroup("task", InstanceGroupArgs.builder()
///             .clusterId(tf_test_cluster.id())
///             .instanceCount(1)
///             .instanceType("m5.xlarge")
///             .name("my little instance group")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   task:
///     type: aws:emr:InstanceGroup
///     properties:
///       clusterId: ${["tf-test-cluster"].id}
///       instanceCount: 1
///       instanceType: m5.xlarge
///       name: my little instance group
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import EMR task instance group using their EMR Cluster id and Instance Group id separated by a forward-slash `/`. For example:
///
/// ```sh
/// $ pulumi import aws:emr/instanceGroup:InstanceGroup task_group j-123456ABCDEF/ig-15EK4O09RZLNR
/// ```
class InstanceGroup extends pulumi.CustomResource {
  /// The autoscaling policy document. This is a JSON formatted string. See [EMR Auto Scaling](https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-automatic-scaling.html)
  late final pulumi.Output<String?> autoscalingPolicy;

  /// If set, the bid price for each EC2 instance in the instance group, expressed in USD. By setting this attribute, the instance group is being declared as a Spot Instance, and will implicitly create a Spot request. Leave this blank to use On-Demand Instances.
  late final pulumi.Output<String?> bidPrice;

  /// ID of the EMR Cluster to attach to. Changing this forces a new resource to be created.
  late final pulumi.Output<String> clusterId;

  /// A JSON string for supplying list of configurations specific to the EMR instance group. Note that this can only be changed when using EMR release 5.21 or later.
  ///
  ///
  /// ```typescript
  /// import * as pulumi from "@pulumi/pulumi";
  /// import * as aws from "@pulumi/aws";
  ///
  /// const task = new aws.emr.InstanceGroup("task", {configurationsJson: `[
  /// {
  /// \\"Classification\\": \\"hadoop-env\\",
  /// \\"Configurations\\": [
  /// {
  /// \\"Classification\\": \\"export\\",
  /// \\"Properties\\": {
  /// \\"JAVA_HOME\\": \\"/usr/lib/jvm/java-1.8.0\\"
  /// }
  /// }
  /// ],
  /// \\"Properties\\": {}
  /// }
  /// ]
  /// `});
  /// ```
  /// ```python
  /// import pulumi
  /// import pulumi_aws as aws
  ///
  /// task = aws.emr.InstanceGroup("task", configurations_json="""[
  /// {
  /// \"Classification\": \"hadoop-env\",
  /// \"Configurations\": [
  /// {
  /// \"Classification\": \"export\",
  /// \"Properties\": {
  /// \"JAVA_HOME\": \"/usr/lib/jvm/java-1.8.0\"
  /// }
  /// }
  /// ],
  /// \"Properties\": {}
  /// }
  /// ]
  /// """)
  /// ```
  /// ```csharp
  /// using System.Collections.Generic;
  /// using System.Linq;
  /// using Pulumi;
  /// using Aws = Pulumi.Aws;
  ///
  /// return await Deployment.RunAsync(() =>
  /// {
  ///     var task = new Aws.Emr.InstanceGroup("task", new()
  ///     {
  ///         ConfigurationsJson = @"[
  /// {
  /// \""Classification\"": \""hadoop-env\"",
  /// \""Configurations\"": [
  /// {
  /// \""Classification\"": \""export\"",
  /// \""Properties\"": {
  /// \""JAVA_HOME\"": \""/usr/lib/jvm/java-1.8.0\""
  /// }
  /// }
  /// ],
  /// \""Properties\"": {}
  /// }
  /// ]
  /// ",
  ///     });
  ///
  /// });
  /// ```
  /// ```go
  /// package main
  ///
  /// import (
  /// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/emr"
  /// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
  /// )
  ///
  /// func main() {
  /// 	pulumi.Run(func(ctx *pulumi.Context) error {
  /// 		_, err := emr.NewInstanceGroup(ctx, "task", &emr.InstanceGroupArgs{
  /// 			ConfigurationsJson: pulumi.String(`[
  /// {
  /// \"Classification\": \"hadoop-env\",
  /// \"Configurations\": [
  /// {
  /// \"Classification\": \"export\",
  /// \"Properties\": {
  /// \"JAVA_HOME\": \"/usr/lib/jvm/java-1.8.0\"
  /// }
  /// }
  /// ],
  /// \"Properties\": {}
  /// }
  /// ]
  /// `),
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
  /// import com.pulumi.aws.emr.InstanceGroup;
  /// import com.pulumi.aws.emr.InstanceGroupArgs;
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
  ///         var task = new InstanceGroup("task", InstanceGroupArgs.builder()
  ///             .configurationsJson("""
  /// [
  /// {
  /// \"Classification\": \"hadoop-env\",
  /// \"Configurations\": [
  /// {
  /// \"Classification\": \"export\",
  /// \"Properties\": {
  /// \"JAVA_HOME\": \"/usr/lib/jvm/java-1.8.0\"
  /// }
  /// }
  /// ],
  /// \"Properties\": {}
  /// }
  /// ]
  ///             """)
  ///             .build());
  ///
  ///     }
  /// }
  /// ```
  /// ```yaml
  /// resources:
  ///   task:
  ///     type: aws:emr:InstanceGroup
  ///     properties:
  ///       configurationsJson: |
  ///         [
  ///         {
  ///         \"Classification\": \"hadoop-env\",
  ///         \"Configurations\": [
  ///         {
  ///         \"Classification\": \"export\",
  ///         \"Properties\": {
  ///         \"JAVA_HOME\": \"/usr/lib/jvm/java-1.8.0\"
  ///         }
  ///         }
  ///         ],
  ///         \"Properties\": {}
  ///         }
  ///         ]
  /// ```
  late final pulumi.Output<String?> configurationsJson;

  /// One or more `ebs_config` blocks as defined below. Changing this forces a new resource to be created.
  late final pulumi.Output<List<InstanceGroupEbsConfig>> ebsConfigs;

  /// Indicates whether an Amazon EBS volume is EBS-optimized. Changing this forces a new resource to be created.
  late final pulumi.Output<bool?> ebsOptimized;

  /// target number of instances for the instance group. defaults to 0.
  late final pulumi.Output<int> instanceCount;

  /// The EC2 instance type for all instances in the instance group. Changing this forces a new resource to be created.
  late final pulumi.Output<String> instanceType;

  /// Human friendly name given to the instance group. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The number of instances currently running in this instance group.
  late final pulumi.Output<int> runningInstanceCount;

  /// The current status of the instance group.
  late final pulumi.Output<String> status;

  /// Creates a new [InstanceGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [InstanceGroup]. {@macro pulumi_emr_instance_group_instance_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  InstanceGroup(
    String name, {
    InstanceGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:emr/instanceGroup:InstanceGroup',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.autoscalingPolicy = registerOutput<String?>('autoscalingPolicy');
    this.bidPrice = registerOutput<String?>('bidPrice');
    this.clusterId = registerOutput<String>('clusterId');
    this.configurationsJson = registerOutput<String?>('configurationsJson');
    this.ebsConfigs = registerOutput<List<InstanceGroupEbsConfig>>(
      'ebsConfigs',
    );
    this.ebsOptimized = registerOutput<bool?>('ebsOptimized');
    this.instanceCount = registerOutput<int>('instanceCount');
    this.instanceType = registerOutput<String>('instanceType');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.runningInstanceCount = registerOutput<int>('runningInstanceCount');
    this.status = registerOutput<String>('status');
  }
}
