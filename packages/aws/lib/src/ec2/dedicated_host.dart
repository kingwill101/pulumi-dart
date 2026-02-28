import 'package:pulumi/pulumi.dart' as pulumi;
import 'dedicated_host_args.dart';

/// Provides an EC2 Host resource. This allows Dedicated Hosts to be allocated, modified, and released.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// // Create a new host with instance type of c5.18xlarge with Auto Placement
/// // and Host Recovery enabled.
/// const test = new aws.ec2.DedicatedHost("test", {
///     instanceType: "c5.18xlarge",
///     availabilityZone: "us-west-2a",
///     hostRecovery: "on",
///     autoPlacement: "on",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// # Create a new host with instance type of c5.18xlarge with Auto Placement
/// # and Host Recovery enabled.
/// test = aws.ec2.DedicatedHost("test",
///     instance_type="c5.18xlarge",
///     availability_zone="us-west-2a",
///     host_recovery="on",
///     auto_placement="on")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // Create a new host with instance type of c5.18xlarge with Auto Placement
///     // and Host Recovery enabled.
///     var test = new Aws.Ec2.DedicatedHost("test", new()
///     {
///         InstanceType = "c5.18xlarge",
///         AvailabilityZone = "us-west-2a",
///         HostRecovery = "on",
///         AutoPlacement = "on",
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
/// 		// Create a new host with instance type of c5.18xlarge with Auto Placement
/// 		// and Host Recovery enabled.
/// 		_, err := ec2.NewDedicatedHost(ctx, "test", &ec2.DedicatedHostArgs{
/// 			InstanceType:     pulumi.String("c5.18xlarge"),
/// 			AvailabilityZone: pulumi.String("us-west-2a"),
/// 			HostRecovery:     pulumi.String("on"),
/// 			AutoPlacement:    pulumi.String("on"),
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
/// import com.pulumi.aws.ec2.DedicatedHost;
/// import com.pulumi.aws.ec2.DedicatedHostArgs;
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
///         // Create a new host with instance type of c5.18xlarge with Auto Placement
///         // and Host Recovery enabled.
///         var test = new DedicatedHost("test", DedicatedHostArgs.builder()
///             .instanceType("c5.18xlarge")
///             .availabilityZone("us-west-2a")
///             .hostRecovery("on")
///             .autoPlacement("on")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # Create a new host with instance type of c5.18xlarge with Auto Placement
///   # and Host Recovery enabled.
///   test:
///     type: aws:ec2:DedicatedHost
///     properties:
///       instanceType: c5.18xlarge
///       availabilityZone: us-west-2a
///       hostRecovery: on
///       autoPlacement: on
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import hosts using the host `id`. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/dedicatedHost:DedicatedHost example h-0385a99d0e4b20cbb
/// ```
class DedicatedHost extends pulumi.CustomResource {
  /// The ARN of the Dedicated Host.
  late final pulumi.Output<String> arn;

  /// The ID of the Outpost hardware asset on which to allocate the Dedicated Hosts. This parameter is supported only if you specify OutpostArn. If you are allocating the Dedicated Hosts in a Region, omit this parameter.
  late final pulumi.Output<String> assetId;

  /// Indicates whether the host accepts any untargeted instance launches that match its instance type configuration, or if it only accepts Host tenancy instance launches that specify its unique host ID. Valid values: `on`, `off`. Default: `on`.
  late final pulumi.Output<String?> autoPlacement;

  /// The Availability Zone in which to allocate the Dedicated Host.
  late final pulumi.Output<String> availabilityZone;

  /// Indicates whether to enable or disable host recovery for the Dedicated Host. Valid values: `on`, `off`. Default: `off`.
  late final pulumi.Output<String?> hostRecovery;

  /// Specifies the instance family to be supported by the Dedicated Hosts. If you specify an instance family, the Dedicated Hosts support multiple instance types within that instance family. Exactly one of `instance_family` or `instance_type` must be specified.
  late final pulumi.Output<String?> instanceFamily;

  /// Specifies the instance type to be supported by the Dedicated Hosts. If you specify an instance type, the Dedicated Hosts support instances of the specified instance type only. Exactly one of `instance_family` or `instance_type` must be specified.
  late final pulumi.Output<String?> instanceType;

  /// The Amazon Resource Name (ARN) of the AWS Outpost on which to allocate the Dedicated Host.
  late final pulumi.Output<String?> outpostArn;

  /// The ID of the AWS account that owns the Dedicated Host.
  late final pulumi.Output<String> ownerId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Map of tags to assign to this resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [DedicatedHost].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DedicatedHost]. {@macro pulumi_ec2_dedicated_host_dedicated_host_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DedicatedHost(
    String name, {
    DedicatedHostArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/dedicatedHost:DedicatedHost',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.assetId = registerOutput<String>('assetId');
    this.autoPlacement = registerOutput<String?>('autoPlacement');
    this.availabilityZone = registerOutput<String>('availabilityZone');
    this.hostRecovery = registerOutput<String?>('hostRecovery');
    this.instanceFamily = registerOutput<String?>('instanceFamily');
    this.instanceType = registerOutput<String?>('instanceType');
    this.outpostArn = registerOutput<String?>('outpostArn');
    this.ownerId = registerOutput<String>('ownerId');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
