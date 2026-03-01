import 'package:pulumi/pulumi.dart' as pulumi;
import 'hsm_args.dart';
import 'hsm_state.dart';

/// Creates an HSM module in Amazon CloudHSM v2 cluster.
///
/// ## Example Usage
///
/// The following example below creates an HSM module in CloudHSM cluster.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const cluster = aws.cloudhsmv2.getCluster({
///     clusterId: cloudhsmClusterId,
/// });
/// const cloudhsmV2Hsm = new aws.cloudhsmv2.Hsm("cloudhsm_v2_hsm", {
///     subnetId: cluster.then(cluster => cluster.subnetIds?.[0]),
///     clusterId: cluster.then(cluster => cluster.clusterId),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// cluster = aws.cloudhsmv2.get_cluster(cluster_id=cloudhsm_cluster_id)
/// cloudhsm_v2_hsm = aws.cloudhsmv2.Hsm("cloudhsm_v2_hsm",
///     subnet_id=cluster.subnet_ids[0],
///     cluster_id=cluster.cluster_id)
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
///         ClusterId = cloudhsmClusterId,
///     });
///
///     var cloudhsmV2Hsm = new Aws.CloudHsmV2.Hsm("cloudhsm_v2_hsm", new()
///     {
///         SubnetId = cluster.Apply(getClusterResult => getClusterResult.SubnetIds[0]),
///         ClusterId = cluster.Apply(getClusterResult => getClusterResult.ClusterId),
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
/// 		cluster, err := cloudhsmv2.LookupCluster(ctx, &cloudhsmv2.LookupClusterArgs{
/// 			ClusterId: cloudhsmClusterId,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cloudhsmv2.NewHsm(ctx, "cloudhsm_v2_hsm", &cloudhsmv2.HsmArgs{
/// 			SubnetId:  pulumi.String(cluster.SubnetIds[0]),
/// 			ClusterId: pulumi.String(cluster.ClusterId),
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
/// import com.pulumi.aws.cloudhsmv2.Cloudhsmv2Functions;
/// import com.pulumi.aws.cloudhsmv2.inputs.GetClusterArgs;
/// import com.pulumi.aws.cloudhsmv2.Hsm;
/// import com.pulumi.aws.cloudhsmv2.HsmArgs;
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
///         final var cluster = Cloudhsmv2Functions.getCluster(GetClusterArgs.builder()
///             .clusterId(cloudhsmClusterId)
///             .build());
///
///         var cloudhsmV2Hsm = new Hsm("cloudhsmV2Hsm", HsmArgs.builder()
///             .subnetId(cluster.subnetIds()[0])
///             .clusterId(cluster.clusterId())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   cloudhsmV2Hsm:
///     type: aws:cloudhsmv2:Hsm
///     name: cloudhsm_v2_hsm
///     properties:
///       subnetId: ${cluster.subnetIds[0]}
///       clusterId: ${cluster.clusterId}
/// variables:
///   cluster:
///     fn::invoke:
///       function: aws:cloudhsmv2:getCluster
///       arguments:
///         clusterId: ${cloudhsmClusterId}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import HSM modules using their HSM ID. For example:
///
/// ```sh
/// $ pulumi import aws:cloudhsmv2/hsm:Hsm bar hsm-quo8dahtaca
/// ```
class Hsm extends pulumi.CustomResource {
  /// The IDs of AZ in which HSM module will be located. Conflicts with `subnet_id`.
  late final pulumi.Output<String> availabilityZone;
  /// The ID of Cloud HSM v2 cluster to which HSM will be added.
  late final pulumi.Output<String> clusterId;
  /// The id of the ENI interface allocated for HSM module.
  late final pulumi.Output<String> hsmEniId;
  /// The id of the HSM module.
  late final pulumi.Output<String> hsmId;
  /// The state of the HSM module.
  late final pulumi.Output<String> hsmState;
  /// The IP address of HSM module. Must be within the CIDR of selected subnet.
  ///
  /// > **NOTE:** Either `subnet_id` or `availability_zone` must be specified.
  late final pulumi.Output<String> ipAddress;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The ID of subnet in which HSM module will be located. Conflicts with `availability_zone`.
  late final pulumi.Output<String> subnetId;

  /// Creates a new [Hsm].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Hsm]. {@macro pulumi_cloudhsmv2_hsm_hsm_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Hsm(
    String name, {
    HsmArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudhsmv2/hsm:Hsm',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.availabilityZone = registerOutput<String>('availabilityZone');
    this.clusterId = registerOutput<String>('clusterId');
    this.hsmEniId = registerOutput<String>('hsmEniId');
    this.hsmId = registerOutput<String>('hsmId');
    this.hsmState = registerOutput<String>('hsmState');
    this.ipAddress = registerOutput<String>('ipAddress');
    this.region = registerOutput<String>('region');
    this.subnetId = registerOutput<String>('subnetId');
  }

  /// Gets an existing [Hsm] resource's state with the given [name] and [id].
  static Hsm get(
    String name,
    pulumi.Input<String> id, {
    HsmState? state,
  }) {
    return Hsm._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Hsm._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudhsmv2/hsm:Hsm',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.availabilityZone = registerOutput<String>('availabilityZone');
    this.clusterId = registerOutput<String>('clusterId');
    this.hsmEniId = registerOutput<String>('hsmEniId');
    this.hsmId = registerOutput<String>('hsmId');
    this.hsmState = registerOutput<String>('hsmState');
    this.ipAddress = registerOutput<String>('ipAddress');
    this.region = registerOutput<String>('region');
    this.subnetId = registerOutput<String>('subnetId');
  }
}
