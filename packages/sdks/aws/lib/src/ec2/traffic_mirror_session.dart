import 'package:pulumi/pulumi.dart' as pulumi;
import 'traffic_mirror_session_args.dart';
import 'traffic_mirror_session_state.dart';

/// Provides an Traffic mirror session.
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
/// const filter = new aws.ec2.TrafficMirrorFilter("filter", {
///     description: "traffic mirror filter - example",
///     networkServices: ["amazon-dns"],
/// });
/// const target = new aws.ec2.TrafficMirrorTarget("target", {networkLoadBalancerArn: lb.arn});
/// const session = new aws.ec2.TrafficMirrorSession("session", {
///     description: "traffic mirror session - example",
///     networkInterfaceId: test.primaryNetworkInterfaceId,
///     sessionNumber: 1,
///     trafficMirrorFilterId: filter.id,
///     trafficMirrorTargetId: target.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// filter = aws.ec2.TrafficMirrorFilter("filter",
///     description="traffic mirror filter - example",
///     network_services=["amazon-dns"])
/// target = aws.ec2.TrafficMirrorTarget("target", network_load_balancer_arn=lb["arn"])
/// session = aws.ec2.TrafficMirrorSession("session",
///     description="traffic mirror session - example",
///     network_interface_id=test["primaryNetworkInterfaceId"],
///     session_number=1,
///     traffic_mirror_filter_id=filter.id,
///     traffic_mirror_target_id=target.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var filter = new Aws.Ec2.TrafficMirrorFilter("filter", new()
///     {
///         Description = "traffic mirror filter - example",
///         NetworkServices = new[]
///         {
///             "amazon-dns",
///         },
///     });
///
///     var target = new Aws.Ec2.TrafficMirrorTarget("target", new()
///     {
///         NetworkLoadBalancerArn = lb.Arn,
///     });
///
///     var session = new Aws.Ec2.TrafficMirrorSession("session", new()
///     {
///         Description = "traffic mirror session - example",
///         NetworkInterfaceId = test.PrimaryNetworkInterfaceId,
///         SessionNumber = 1,
///         TrafficMirrorFilterId = filter.Id,
///         TrafficMirrorTargetId = target.Id,
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
/// 		filter, err := ec2.NewTrafficMirrorFilter(ctx, "filter", &ec2.TrafficMirrorFilterArgs{
/// 			Description: pulumi.String("traffic mirror filter - example"),
/// 			NetworkServices: pulumi.StringArray{
/// 				pulumi.String("amazon-dns"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		target, err := ec2.NewTrafficMirrorTarget(ctx, "target", &ec2.TrafficMirrorTargetArgs{
/// 			NetworkLoadBalancerArn: pulumi.Any(lb.Arn),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ec2.NewTrafficMirrorSession(ctx, "session", &ec2.TrafficMirrorSessionArgs{
/// 			Description:           pulumi.String("traffic mirror session - example"),
/// 			NetworkInterfaceId:    pulumi.Any(test.PrimaryNetworkInterfaceId),
/// 			SessionNumber:         pulumi.Int(1),
/// 			TrafficMirrorFilterId: filter.ID().ToIDOutput().ToStringOutput(),
/// 			TrafficMirrorTargetId: target.ID().ToIDOutput().ToStringOutput(),
/// 		})
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
/// resource "aws_ec2_trafficmirrorfilter" "filter" {
///   description      = "traffic mirror filter - example"
///   network_services = ["amazon-dns"]
/// }
/// resource "aws_ec2_trafficmirrortarget" "target" {
///   network_load_balancer_arn = lb.arn
/// }
/// resource "aws_ec2_trafficmirrorsession" "session" {
///   description              = "traffic mirror session - example"
///   network_interface_id     = test.primaryNetworkInterfaceId
///   session_number           = 1
///   traffic_mirror_filter_id = aws_ec2_trafficmirrorfilter.filter.id
///   traffic_mirror_target_id = aws_ec2_trafficmirrortarget.target.id
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
///         var filter = new TrafficMirrorFilter("filter", TrafficMirrorFilterArgs.builder()
///             .description("traffic mirror filter - example")
///             .networkServices("amazon-dns")
///             .build());
///
///         var target = new TrafficMirrorTarget("target", TrafficMirrorTargetArgs.builder()
///             .networkLoadBalancerArn(lb.arn())
///             .build());
///
///         var session = new TrafficMirrorSession("session", TrafficMirrorSessionArgs.builder()
///             .description("traffic mirror session - example")
///             .networkInterfaceId(test.primaryNetworkInterfaceId())
///             .sessionNumber(1)
///             .trafficMirrorFilterId(filter.id())
///             .trafficMirrorTargetId(target.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   filter:
///     type: aws:ec2:TrafficMirrorFilter
///     properties:
///       description: traffic mirror filter - example
///       networkServices:
///         - amazon-dns
///   target:
///     type: aws:ec2:TrafficMirrorTarget
///     properties:
///       networkLoadBalancerArn: ${lb.arn}
///   session:
///     type: aws:ec2:TrafficMirrorSession
///     properties:
///       description: traffic mirror session - example
///       networkInterfaceId: ${test.primaryNetworkInterfaceId}
///       sessionNumber: 1
///       trafficMirrorFilterId: ${filter.id}
///       trafficMirrorTargetId: ${target.id}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import traffic mirror sessions using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/trafficMirrorSession:TrafficMirrorSession session tms-0d8aa3ca35897b82e
/// ```
class TrafficMirrorSession extends pulumi.CustomResource {
  /// The ARN of the traffic mirror session.
  late final pulumi.Output<String> arn;
  /// A description of the traffic mirror session.
  late final pulumi.Output<String?> description;
  /// ID of the source network interface. Not all network interfaces are eligible as mirror sources. On EC2 instances only nitro based instances support mirroring.
  late final pulumi.Output<String> networkInterfaceId;
  /// The AWS account ID of the session owner.
  late final pulumi.Output<String> ownerId;
  /// The number of bytes in each packet to mirror. These are bytes after the VXLAN header. Do not specify this parameter when you want to mirror the entire packet. To mirror a subset of the packet, set this to the length (in bytes) that you want to mirror.
  late final pulumi.Output<int> packetLength;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The session number determines the order in which sessions are evaluated when an interface is used by multiple sessions. The first session with a matching filter is the one that mirrors the packets.
  late final pulumi.Output<int> sessionNumber;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// ID of the traffic mirror filter to be used
  late final pulumi.Output<String> trafficMirrorFilterId;
  /// ID of the traffic mirror target to be used
  late final pulumi.Output<String> trafficMirrorTargetId;
  /// The VXLAN ID for the Traffic Mirror session. For more information about the VXLAN protocol, see RFC 7348. If you do not specify a VirtualNetworkId, an account-wide unique id is chosen at random.
  late final pulumi.Output<int> virtualNetworkId;

  /// Creates a new [TrafficMirrorSession].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TrafficMirrorSession]. {@macro pulumi_ec2_traffic_mirror_session_traffic_mirror_session_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TrafficMirrorSession(
    String name, {
    TrafficMirrorSessionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/trafficMirrorSession:TrafficMirrorSession',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    description = registerOutput<String?>('description');
    networkInterfaceId = registerOutput<String>('networkInterfaceId');
    ownerId = registerOutput<String>('ownerId');
    packetLength = registerOutput<int>('packetLength');
    region = registerOutput<String>('region');
    sessionNumber = registerOutput<int>('sessionNumber');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    trafficMirrorFilterId = registerOutput<String>('trafficMirrorFilterId');
    trafficMirrorTargetId = registerOutput<String>('trafficMirrorTargetId');
    virtualNetworkId = registerOutput<int>('virtualNetworkId');
  }

  /// Gets an existing [TrafficMirrorSession] resource's state with the given [name] and [id].
  static TrafficMirrorSession get(
    String name,
    pulumi.Input<String> id, {
    TrafficMirrorSessionState? state,
  }) {
    return TrafficMirrorSession._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  TrafficMirrorSession._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/trafficMirrorSession:TrafficMirrorSession',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    description = registerOutput<String?>('description');
    networkInterfaceId = registerOutput<String>('networkInterfaceId');
    ownerId = registerOutput<String>('ownerId');
    packetLength = registerOutput<int>('packetLength');
    region = registerOutput<String>('region');
    sessionNumber = registerOutput<int>('sessionNumber');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    trafficMirrorFilterId = registerOutput<String>('trafficMirrorFilterId');
    trafficMirrorTargetId = registerOutput<String>('trafficMirrorTargetId');
    virtualNetworkId = registerOutput<int>('virtualNetworkId');
  }
}
