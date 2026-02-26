import 'package:pulumi/pulumi.dart';
import 'hsm_args.dart';

/// Creates an HSM module in Amazon CloudHSM v2 cluster.
///
/// ## Example Usage
///
/// The following example below creates an HSM module in CloudHSM cluster.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const cluster = aws.cloudhsmv2.getCluster({
/// clusterId: cloudhsmClusterId,
/// });
/// const cloudhsmV2Hsm = new aws.cloudhsmv2.Hsm("cloudhsm_v2_hsm", {
/// subnetId: cluster.then(cluster => cluster.subnetIds?.[0]),
/// clusterId: cluster.then(cluster => cluster.clusterId),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// cluster = aws.cloudhsmv2.get_cluster(cluster_id=cloudhsm_cluster_id)
/// cloudhsm_v2_hsm = aws.cloudhsmv2.Hsm("cloudhsm_v2_hsm",
/// subnet_id=cluster.subnet_ids[0],
/// cluster_id=cluster.cluster_id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var cluster = Aws.CloudHsmV2.GetCluster.Invoke(new()
/// {
/// ClusterId = cloudhsmClusterId,
/// });
///
/// var cloudhsmV2Hsm = new Aws.CloudHsmV2.Hsm("cloudhsm_v2_hsm", new()
/// {
/// SubnetId = cluster.Apply(getClusterResult => getClusterResult.SubnetIds[0]),
/// ClusterId = cluster.Apply(getClusterResult => getClusterResult.ClusterId),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudhsmv2"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// cluster, err := cloudhsmv2.LookupCluster(ctx, &cloudhsmv2.LookupClusterArgs{
/// ClusterId: cloudhsmClusterId,
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = cloudhsmv2.NewHsm(ctx, "cloudhsm_v2_hsm", &cloudhsmv2.HsmArgs{
/// SubnetId:  pulumi.String(cluster.SubnetIds[0]),
/// ClusterId: pulumi.String(cluster.ClusterId),
/// })
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// final var cluster = Cloudhsmv2Functions.getCluster(GetClusterArgs.builder()
/// .clusterId(cloudhsmClusterId)
/// .build());
///
/// var cloudhsmV2Hsm = new Hsm("cloudhsmV2Hsm", HsmArgs.builder()
/// .subnetId(cluster.subnetIds()[0])
/// .clusterId(cluster.clusterId())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// cloudhsmV2Hsm:
/// type: aws:cloudhsmv2:Hsm
/// name: cloudhsm_v2_hsm
/// properties:
/// subnetId: ${cluster.subnetIds[0]}
/// clusterId: ${cluster.clusterId}
/// variables:
/// cluster:
/// fn::invoke:
/// function: aws:cloudhsmv2:getCluster
/// arguments:
/// clusterId: ${cloudhsmClusterId}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import HSM modules using their HSM ID. For example:
///
/// ```sh
/// $ pulumi import aws:cloudhsmv2/hsm:Hsm bar hsm-quo8dahtaca
/// ```
class Hsm extends CustomResource {
  /// The IDs of AZ in which HSM module will be located. Conflicts with <span pulumi-lang-nodejs="`subnetId`" pulumi-lang-dotnet="`SubnetId`" pulumi-lang-go="`subnetId`" pulumi-lang-python="`subnet_id`" pulumi-lang-yaml="`subnetId`" pulumi-lang-java="`subnetId`">`subnet_id`</span>.
  late final Output<String> availabilityZone;

  /// The ID of Cloud HSM v2 cluster to which HSM will be added.
  late final Output<String> clusterId;

  /// The id of the ENI interface allocated for HSM module.
  late final Output<String> hsmEniId;

  /// The id of the HSM module.
  late final Output<String> hsmId;

  /// The state of the HSM module.
  late final Output<String> hsmState;

  /// The IP address of HSM module. Must be within the CIDR of selected subnet.
  ///
  /// > **NOTE:** Either <span pulumi-lang-nodejs="`subnetId`" pulumi-lang-dotnet="`SubnetId`" pulumi-lang-go="`subnetId`" pulumi-lang-python="`subnet_id`" pulumi-lang-yaml="`subnetId`" pulumi-lang-java="`subnetId`">`subnet_id`</span> or <span pulumi-lang-nodejs="`availabilityZone`" pulumi-lang-dotnet="`AvailabilityZone`" pulumi-lang-go="`availabilityZone`" pulumi-lang-python="`availability_zone`" pulumi-lang-yaml="`availabilityZone`" pulumi-lang-java="`availabilityZone`">`availability_zone`</span> must be specified.
  late final Output<String> ipAddress;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The ID of subnet in which HSM module will be located. Conflicts with <span pulumi-lang-nodejs="`availabilityZone`" pulumi-lang-dotnet="`AvailabilityZone`" pulumi-lang-go="`availabilityZone`" pulumi-lang-python="`availability_zone`" pulumi-lang-yaml="`availabilityZone`" pulumi-lang-java="`availabilityZone`">`availability_zone`</span>.
  late final Output<String> subnetId;

  Hsm(
    String name, {
    HsmArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:cloudhsmv2/hsm:Hsm',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.availabilityZone = Output.createUnknown<String>();
    this.clusterId = Output.createUnknown<String>();
    this.hsmEniId = Output.createUnknown<String>();
    this.hsmId = Output.createUnknown<String>();
    this.hsmState = Output.createUnknown<String>();
    this.ipAddress = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.subnetId = Output.createUnknown<String>();
  }
}
