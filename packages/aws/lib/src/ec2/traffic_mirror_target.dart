import 'package:pulumi/pulumi.dart' as pulumi;
import 'traffic_mirror_target_args.dart';

/// Provides a Traffic mirror target.
/// Read [limits and considerations](https://docs.aws.amazon.com/vpc/latest/mirroring/traffic-mirroring-considerations.html) for traffic mirroring
///
/// ## Example Usage
///
/// To create a basic traffic mirror session
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const nlb = new aws.ec2.TrafficMirrorTarget("nlb", {
///     description: "NLB target",
///     networkLoadBalancerArn: lb.arn,
/// });
/// const eni = new aws.ec2.TrafficMirrorTarget("eni", {
///     description: "ENI target",
///     networkInterfaceId: test.primaryNetworkInterfaceId,
/// });
/// const gwlb = new aws.ec2.TrafficMirrorTarget("gwlb", {
///     description: "GWLB target",
///     gatewayLoadBalancerEndpointId: example.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// nlb = aws.ec2.TrafficMirrorTarget("nlb",
///     description="NLB target",
///     network_load_balancer_arn=lb["arn"])
/// eni = aws.ec2.TrafficMirrorTarget("eni",
///     description="ENI target",
///     network_interface_id=test["primaryNetworkInterfaceId"])
/// gwlb = aws.ec2.TrafficMirrorTarget("gwlb",
///     description="GWLB target",
///     gateway_load_balancer_endpoint_id=example["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var nlb = new Aws.Ec2.TrafficMirrorTarget("nlb", new()
///     {
///         Description = "NLB target",
///         NetworkLoadBalancerArn = lb.Arn,
///     });
///
///     var eni = new Aws.Ec2.TrafficMirrorTarget("eni", new()
///     {
///         Description = "ENI target",
///         NetworkInterfaceId = test.PrimaryNetworkInterfaceId,
///     });
///
///     var gwlb = new Aws.Ec2.TrafficMirrorTarget("gwlb", new()
///     {
///         Description = "GWLB target",
///         GatewayLoadBalancerEndpointId = example.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ec2.NewTrafficMirrorTarget(ctx, "nlb", &ec2.TrafficMirrorTargetArgs{
/// 			Description:            pulumi.String("NLB target"),
/// 			NetworkLoadBalancerArn: pulumi.Any(lb.Arn),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ec2.NewTrafficMirrorTarget(ctx, "eni", &ec2.TrafficMirrorTargetArgs{
/// 			Description:        pulumi.String("ENI target"),
/// 			NetworkInterfaceId: pulumi.Any(test.PrimaryNetworkInterfaceId),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ec2.NewTrafficMirrorTarget(ctx, "gwlb", &ec2.TrafficMirrorTargetArgs{
/// 			Description:                   pulumi.String("GWLB target"),
/// 			GatewayLoadBalancerEndpointId: pulumi.Any(example.Id),
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
/// import com.pulumi.aws.ec2.TrafficMirrorTarget;
/// import com.pulumi.aws.ec2.TrafficMirrorTargetArgs;
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
///         var nlb = new TrafficMirrorTarget("nlb", TrafficMirrorTargetArgs.builder()
///             .description("NLB target")
///             .networkLoadBalancerArn(lb.arn())
///             .build());
///
///         var eni = new TrafficMirrorTarget("eni", TrafficMirrorTargetArgs.builder()
///             .description("ENI target")
///             .networkInterfaceId(test.primaryNetworkInterfaceId())
///             .build());
///
///         var gwlb = new TrafficMirrorTarget("gwlb", TrafficMirrorTargetArgs.builder()
///             .description("GWLB target")
///             .gatewayLoadBalancerEndpointId(example.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   nlb:
///     type: aws:ec2:TrafficMirrorTarget
///     properties:
///       description: NLB target
///       networkLoadBalancerArn: ${lb.arn}
///   eni:
///     type: aws:ec2:TrafficMirrorTarget
///     properties:
///       description: ENI target
///       networkInterfaceId: ${test.primaryNetworkInterfaceId}
///   gwlb:
///     type: aws:ec2:TrafficMirrorTarget
///     properties:
///       description: GWLB target
///       gatewayLoadBalancerEndpointId: ${example.id}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import traffic mirror targets using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/trafficMirrorTarget:TrafficMirrorTarget target tmt-0c13a005422b86606
/// ```
class TrafficMirrorTarget extends pulumi.CustomResource {
  /// The ARN of the traffic mirror target.
  late final pulumi.Output<String> arn;
  /// A description of the traffic mirror session.
  late final pulumi.Output<String?> description;
  /// The VPC Endpoint Id of the Gateway Load Balancer that is associated with the target.
  late final pulumi.Output<String?> gatewayLoadBalancerEndpointId;
  /// The network interface ID that is associated with the target.
  late final pulumi.Output<String?> networkInterfaceId;
  /// The Amazon Resource Name (ARN) of the Network Load Balancer that is associated with the target.
  late final pulumi.Output<String?> networkLoadBalancerArn;
  /// The ID of the AWS account that owns the traffic mirror target.
  late final pulumi.Output<String> ownerId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// **NOTE:** Either `network_interface_id` or `network_load_balancer_arn` should be specified and both should not be specified together
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [TrafficMirrorTarget].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TrafficMirrorTarget]. {@macro pulumi_ec2_traffic_mirror_target_traffic_mirror_target_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TrafficMirrorTarget(
    String name, {
    TrafficMirrorTargetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/trafficMirrorTarget:TrafficMirrorTarget',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String?>('description');
    this.gatewayLoadBalancerEndpointId = registerOutput<String?>('gatewayLoadBalancerEndpointId');
    this.networkInterfaceId = registerOutput<String?>('networkInterfaceId');
    this.networkLoadBalancerArn = registerOutput<String?>('networkLoadBalancerArn');
    this.ownerId = registerOutput<String>('ownerId');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
