import 'package:pulumi/pulumi.dart';
import 'traffic_mirror_target_args.dart';

/// Provides a Traffic mirror target.
/// Read [limits and considerations](https://docs.aws.amazon.com/vpc/latest/mirroring/traffic-mirroring-considerations.html) for traffic mirroring
///
/// ## Example Usage
///
/// To create a basic traffic mirror session
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const nlb = new aws.ec2.TrafficMirrorTarget("nlb", {
/// description: "NLB target",
/// networkLoadBalancerArn: lb.arn,
/// });
/// const eni = new aws.ec2.TrafficMirrorTarget("eni", {
/// description: "ENI target",
/// networkInterfaceId: test.primaryNetworkInterfaceId,
/// });
/// const gwlb = new aws.ec2.TrafficMirrorTarget("gwlb", {
/// description: "GWLB target",
/// gatewayLoadBalancerEndpointId: example.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// nlb = aws.ec2.TrafficMirrorTarget("nlb",
/// description="NLB target",
/// network_load_balancer_arn=lb["arn"])
/// eni = aws.ec2.TrafficMirrorTarget("eni",
/// description="ENI target",
/// network_interface_id=test["primaryNetworkInterfaceId"])
/// gwlb = aws.ec2.TrafficMirrorTarget("gwlb",
/// description="GWLB target",
/// gateway_load_balancer_endpoint_id=example["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var nlb = new Aws.Ec2.TrafficMirrorTarget("nlb", new()
/// {
/// Description = "NLB target",
/// NetworkLoadBalancerArn = lb.Arn,
/// });
///
/// var eni = new Aws.Ec2.TrafficMirrorTarget("eni", new()
/// {
/// Description = "ENI target",
/// NetworkInterfaceId = test.PrimaryNetworkInterfaceId,
/// });
///
/// var gwlb = new Aws.Ec2.TrafficMirrorTarget("gwlb", new()
/// {
/// Description = "GWLB target",
/// GatewayLoadBalancerEndpointId = example.Id,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := ec2.NewTrafficMirrorTarget(ctx, "nlb", &ec2.TrafficMirrorTargetArgs{
/// Description:            pulumi.String("NLB target"),
/// NetworkLoadBalancerArn: pulumi.Any(lb.Arn),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = ec2.NewTrafficMirrorTarget(ctx, "eni", &ec2.TrafficMirrorTargetArgs{
/// Description:        pulumi.String("ENI target"),
/// NetworkInterfaceId: pulumi.Any(test.PrimaryNetworkInterfaceId),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = ec2.NewTrafficMirrorTarget(ctx, "gwlb", &ec2.TrafficMirrorTargetArgs{
/// Description:                   pulumi.String("GWLB target"),
/// GatewayLoadBalancerEndpointId: pulumi.Any(example.Id),
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var nlb = new TrafficMirrorTarget("nlb", TrafficMirrorTargetArgs.builder()
/// .description("NLB target")
/// .networkLoadBalancerArn(lb.arn())
/// .build());
///
/// var eni = new TrafficMirrorTarget("eni", TrafficMirrorTargetArgs.builder()
/// .description("ENI target")
/// .networkInterfaceId(test.primaryNetworkInterfaceId())
/// .build());
///
/// var gwlb = new TrafficMirrorTarget("gwlb", TrafficMirrorTargetArgs.builder()
/// .description("GWLB target")
/// .gatewayLoadBalancerEndpointId(example.id())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// nlb:
/// type: aws:ec2:TrafficMirrorTarget
/// properties:
/// description: NLB target
/// networkLoadBalancerArn: ${lb.arn}
/// eni:
/// type: aws:ec2:TrafficMirrorTarget
/// properties:
/// description: ENI target
/// networkInterfaceId: ${test.primaryNetworkInterfaceId}
/// gwlb:
/// type: aws:ec2:TrafficMirrorTarget
/// properties:
/// description: GWLB target
/// gatewayLoadBalancerEndpointId: ${example.id}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import traffic mirror targets using the <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/trafficMirrorTarget:TrafficMirrorTarget target tmt-0c13a005422b86606
/// ```
class TrafficMirrorTarget extends CustomResource {
  /// The ARN of the traffic mirror target.
  late final Output<String> arn;

  /// A description of the traffic mirror session.
  late final Output<String?> description;

  /// The VPC Endpoint Id of the Gateway Load Balancer that is associated with the target.
  late final Output<String?> gatewayLoadBalancerEndpointId;

  /// The network interface ID that is associated with the target.
  late final Output<String?> networkInterfaceId;

  /// The Amazon Resource Name (ARN) of the Network Load Balancer that is associated with the target.
  late final Output<String?> networkLoadBalancerArn;

  /// The ID of the AWS account that owns the traffic mirror target.
  late final Output<String> ownerId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Key-value map of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// **NOTE:** Either <span pulumi-lang-nodejs="`networkInterfaceId`" pulumi-lang-dotnet="`NetworkInterfaceId`" pulumi-lang-go="`networkInterfaceId`" pulumi-lang-python="`network_interface_id`" pulumi-lang-yaml="`networkInterfaceId`" pulumi-lang-java="`networkInterfaceId`">`network_interface_id`</span> or <span pulumi-lang-nodejs="`networkLoadBalancerArn`" pulumi-lang-dotnet="`NetworkLoadBalancerArn`" pulumi-lang-go="`networkLoadBalancerArn`" pulumi-lang-python="`network_load_balancer_arn`" pulumi-lang-yaml="`networkLoadBalancerArn`" pulumi-lang-java="`networkLoadBalancerArn`">`network_load_balancer_arn`</span> should be specified and both should not be specified together
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  TrafficMirrorTarget(
    String name, {
    TrafficMirrorTargetArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2/trafficMirrorTarget:TrafficMirrorTarget',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.description = Output.createUnknown<String?>();
    this.gatewayLoadBalancerEndpointId = Output.createUnknown<String?>();
    this.networkInterfaceId = Output.createUnknown<String?>();
    this.networkLoadBalancerArn = Output.createUnknown<String?>();
    this.ownerId = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
  }
}
