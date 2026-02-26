import 'package:pulumi/pulumi.dart';
import 'traffic_mirror_session_args.dart';

/// Provides an Traffic mirror session.
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
/// const filter = new aws.ec2.TrafficMirrorFilter("filter", {
/// description: "traffic mirror filter - example",
/// networkServices: ["amazon-dns"],
/// });
/// const target = new aws.ec2.TrafficMirrorTarget("target", {networkLoadBalancerArn: lb.arn});
/// const session = new aws.ec2.TrafficMirrorSession("session", {
/// description: "traffic mirror session - example",
/// networkInterfaceId: test.primaryNetworkInterfaceId,
/// sessionNumber: 1,
/// trafficMirrorFilterId: filter.id,
/// trafficMirrorTargetId: target.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// filter = aws.ec2.TrafficMirrorFilter("filter",
/// description="traffic mirror filter - example",
/// network_services=["amazon-dns"])
/// target = aws.ec2.TrafficMirrorTarget("target", network_load_balancer_arn=lb["arn"])
/// session = aws.ec2.TrafficMirrorSession("session",
/// description="traffic mirror session - example",
/// network_interface_id=test["primaryNetworkInterfaceId"],
/// session_number=1,
/// traffic_mirror_filter_id=filter.id,
/// traffic_mirror_target_id=target.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var filter = new Aws.Ec2.TrafficMirrorFilter("filter", new()
/// {
/// Description = "traffic mirror filter - example",
/// NetworkServices = new[]
/// {
/// "amazon-dns",
/// },
/// });
///
/// var target = new Aws.Ec2.TrafficMirrorTarget("target", new()
/// {
/// NetworkLoadBalancerArn = lb.Arn,
/// });
///
/// var session = new Aws.Ec2.TrafficMirrorSession("session", new()
/// {
/// Description = "traffic mirror session - example",
/// NetworkInterfaceId = test.PrimaryNetworkInterfaceId,
/// SessionNumber = 1,
/// TrafficMirrorFilterId = filter.Id,
/// TrafficMirrorTargetId = target.Id,
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
/// filter, err := ec2.NewTrafficMirrorFilter(ctx, "filter", &ec2.TrafficMirrorFilterArgs{
/// Description: pulumi.String("traffic mirror filter - example"),
/// NetworkServices: pulumi.StringArray{
/// pulumi.String("amazon-dns"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// target, err := ec2.NewTrafficMirrorTarget(ctx, "target", &ec2.TrafficMirrorTargetArgs{
/// NetworkLoadBalancerArn: pulumi.Any(lb.Arn),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = ec2.NewTrafficMirrorSession(ctx, "session", &ec2.TrafficMirrorSessionArgs{
/// Description:           pulumi.String("traffic mirror session - example"),
/// NetworkInterfaceId:    pulumi.Any(test.PrimaryNetworkInterfaceId),
/// SessionNumber:         pulumi.Int(1),
/// TrafficMirrorFilterId: filter.ID(),
/// TrafficMirrorTargetId: target.ID(),
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
/// import com.pulumi.aws.ec2.TrafficMirrorFilter;
/// import com.pulumi.aws.ec2.TrafficMirrorFilterArgs;
/// import com.pulumi.aws.ec2.TrafficMirrorTarget;
/// import com.pulumi.aws.ec2.TrafficMirrorTargetArgs;
/// import com.pulumi.aws.ec2.TrafficMirrorSession;
/// import com.pulumi.aws.ec2.TrafficMirrorSessionArgs;
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
/// var filter = new TrafficMirrorFilter("filter", TrafficMirrorFilterArgs.builder()
/// .description("traffic mirror filter - example")
/// .networkServices("amazon-dns")
/// .build());
///
/// var target = new TrafficMirrorTarget("target", TrafficMirrorTargetArgs.builder()
/// .networkLoadBalancerArn(lb.arn())
/// .build());
///
/// var session = new TrafficMirrorSession("session", TrafficMirrorSessionArgs.builder()
/// .description("traffic mirror session - example")
/// .networkInterfaceId(test.primaryNetworkInterfaceId())
/// .sessionNumber(1)
/// .trafficMirrorFilterId(filter.id())
/// .trafficMirrorTargetId(target.id())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// filter:
/// type: aws:ec2:TrafficMirrorFilter
/// properties:
/// description: traffic mirror filter - example
/// networkServices:
/// - amazon-dns
/// target:
/// type: aws:ec2:TrafficMirrorTarget
/// properties:
/// networkLoadBalancerArn: ${lb.arn}
/// session:
/// type: aws:ec2:TrafficMirrorSession
/// properties:
/// description: traffic mirror session - example
/// networkInterfaceId: ${test.primaryNetworkInterfaceId}
/// sessionNumber: 1
/// trafficMirrorFilterId: ${filter.id}
/// trafficMirrorTargetId: ${target.id}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import traffic mirror sessions using the <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/trafficMirrorSession:TrafficMirrorSession session tms-0d8aa3ca35897b82e
/// ```
class TrafficMirrorSession extends CustomResource {
  /// The ARN of the traffic mirror session.
  late final Output<String> arn;

  /// A description of the traffic mirror session.
  late final Output<String?> description;

  /// ID of the source network interface. Not all network interfaces are eligible as mirror sources. On EC2 instances only nitro based instances support mirroring.
  late final Output<String> networkInterfaceId;

  /// The AWS account ID of the session owner.
  late final Output<String> ownerId;

  /// The number of bytes in each packet to mirror. These are bytes after the VXLAN header. Do not specify this parameter when you want to mirror the entire packet. To mirror a subset of the packet, set this to the length (in bytes) that you want to mirror.
  late final Output<int> packetLength;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The session number determines the order in which sessions are evaluated when an interface is used by multiple sessions. The first session with a matching filter is the one that mirrors the packets.
  late final Output<int> sessionNumber;

  /// Key-value map of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// ID of the traffic mirror filter to be used
  late final Output<String> trafficMirrorFilterId;

  /// ID of the traffic mirror target to be used
  late final Output<String> trafficMirrorTargetId;

  /// The VXLAN ID for the Traffic Mirror session. For more information about the VXLAN protocol, see RFC 7348. If you do not specify a VirtualNetworkId, an account-wide unique id is chosen at random.
  late final Output<int> virtualNetworkId;

  TrafficMirrorSession(
    String name, {
    TrafficMirrorSessionArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2/trafficMirrorSession:TrafficMirrorSession',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String?>('description');
    this.networkInterfaceId = registerOutput<String>('networkInterfaceId');
    this.ownerId = registerOutput<String>('ownerId');
    this.packetLength = registerOutput<int>('packetLength');
    this.region = registerOutput<String>('region');
    this.sessionNumber = registerOutput<int>('sessionNumber');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.trafficMirrorFilterId =
        registerOutput<String>('trafficMirrorFilterId');
    this.trafficMirrorTargetId =
        registerOutput<String>('trafficMirrorTargetId');
    this.virtualNetworkId = registerOutput<int>('virtualNetworkId');
  }
}
