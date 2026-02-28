import 'package:pulumi/pulumi.dart' as pulumi;
import 'lb_attachment_args.dart';

/// Manages a Lightsail Load Balancer Attachment. Use this resource to attach Lightsail instances to a load balancer for distributing traffic across multiple instances.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const available = aws.getAvailabilityZones({
///     state: "available",
///     filters: [{
///         name: "opt-in-status",
///         values: ["opt-in-not-required"],
///     }],
/// });
/// const example = new aws.lightsail.Lb("example", {
///     name: "example-load-balancer",
///     healthCheckPath: "/",
///     instancePort: 80,
///     tags: {
///         foo: "bar",
///     },
/// });
/// const exampleInstance = new aws.lightsail.Instance("example", {
///     name: "example-instance",
///     availabilityZone: available.then(available => available.names?.[0]),
///     blueprintId: "amazon_linux_2",
///     bundleId: "nano_3_0",
/// });
/// const exampleLbAttachment = new aws.lightsail.LbAttachment("example", {
///     lbName: example.name,
///     instanceName: exampleInstance.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// available = aws.get_availability_zones(state="available",
///     filters=[{
///         "name": "opt-in-status",
///         "values": ["opt-in-not-required"],
///     }])
/// example = aws.lightsail.Lb("example",
///     name="example-load-balancer",
///     health_check_path="/",
///     instance_port=80,
///     tags={
///         "foo": "bar",
///     })
/// example_instance = aws.lightsail.Instance("example",
///     name="example-instance",
///     availability_zone=available.names[0],
///     blueprint_id="amazon_linux_2",
///     bundle_id="nano_3_0")
/// example_lb_attachment = aws.lightsail.LbAttachment("example",
///     lb_name=example.name,
///     instance_name=example_instance.name)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var available = Aws.GetAvailabilityZones.Invoke(new()
///     {
///         State = "available",
///         Filters = new[]
///         {
///             new Aws.Inputs.GetAvailabilityZonesFilterInputArgs
///             {
///                 Name = "opt-in-status",
///                 Values = new[]
///                 {
///                     "opt-in-not-required",
///                 },
///             },
///         },
///     });
///
///     var example = new Aws.LightSail.Lb("example", new()
///     {
///         Name = "example-load-balancer",
///         HealthCheckPath = "/",
///         InstancePort = 80,
///         Tags =
///         {
///             { "foo", "bar" },
///         },
///     });
///
///     var exampleInstance = new Aws.LightSail.Instance("example", new()
///     {
///         Name = "example-instance",
///         AvailabilityZone = available.Apply(getAvailabilityZonesResult => getAvailabilityZonesResult.Names[0]),
///         BlueprintId = "amazon_linux_2",
///         BundleId = "nano_3_0",
///     });
///
///     var exampleLbAttachment = new Aws.LightSail.LbAttachment("example", new()
///     {
///         LbName = example.Name,
///         InstanceName = exampleInstance.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lightsail"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		available, err := aws.GetAvailabilityZones(ctx, &aws.GetAvailabilityZonesArgs{
/// 			State: pulumi.StringRef("available"),
/// 			Filters: []aws.GetAvailabilityZonesFilter{
/// 				{
/// 					Name: "opt-in-status",
/// 					Values: []string{
/// 						"opt-in-not-required",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := lightsail.NewLb(ctx, "example", &lightsail.LbArgs{
/// 			Name:            pulumi.String("example-load-balancer"),
/// 			HealthCheckPath: pulumi.String("/"),
/// 			InstancePort:    pulumi.Int(80),
/// 			Tags: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleInstance, err := lightsail.NewInstance(ctx, "example", &lightsail.InstanceArgs{
/// 			Name:             pulumi.String("example-instance"),
/// 			AvailabilityZone: pulumi.String(available.Names[0]),
/// 			BlueprintId:      pulumi.String("amazon_linux_2"),
/// 			BundleId:         pulumi.String("nano_3_0"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = lightsail.NewLbAttachment(ctx, "example", &lightsail.LbAttachmentArgs{
/// 			LbName:       example.Name,
/// 			InstanceName: exampleInstance.Name,
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
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetAvailabilityZonesArgs;
/// import com.pulumi.aws.lightsail.Lb;
/// import com.pulumi.aws.lightsail.LbArgs;
/// import com.pulumi.aws.lightsail.Instance;
/// import com.pulumi.aws.lightsail.InstanceArgs;
/// import com.pulumi.aws.lightsail.LbAttachment;
/// import com.pulumi.aws.lightsail.LbAttachmentArgs;
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
///         final var available = AwsFunctions.getAvailabilityZones(GetAvailabilityZonesArgs.builder()
///             .state("available")
///             .filters(GetAvailabilityZonesFilterArgs.builder()
///                 .name("opt-in-status")
///                 .values("opt-in-not-required")
///                 .build())
///             .build());
///
///         var example = new Lb("example", LbArgs.builder()
///             .name("example-load-balancer")
///             .healthCheckPath("/")
///             .instancePort(80)
///             .tags(Map.of("foo", "bar"))
///             .build());
///
///         var exampleInstance = new Instance("exampleInstance", InstanceArgs.builder()
///             .name("example-instance")
///             .availabilityZone(available.names()[0])
///             .blueprintId("amazon_linux_2")
///             .bundleId("nano_3_0")
///             .build());
///
///         var exampleLbAttachment = new LbAttachment("exampleLbAttachment", LbAttachmentArgs.builder()
///             .lbName(example.name())
///             .instanceName(exampleInstance.name())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:lightsail:Lb
///     properties:
///       name: example-load-balancer
///       healthCheckPath: /
///       instancePort: '80'
///       tags:
///         foo: bar
///   exampleInstance:
///     type: aws:lightsail:Instance
///     name: example
///     properties:
///       name: example-instance
///       availabilityZone: ${available.names[0]}
///       blueprintId: amazon_linux_2
///       bundleId: nano_3_0
///   exampleLbAttachment:
///     type: aws:lightsail:LbAttachment
///     name: example
///     properties:
///       lbName: ${example.name}
///       instanceName: ${exampleInstance.name}
/// variables:
///   available:
///     fn::invoke:
///       function: aws:getAvailabilityZones
///       arguments:
///         state: available
///         filters:
///           - name: opt-in-status
///             values:
///               - opt-in-not-required
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.lightsail.LbAttachment` using the name attribute. For example:
///
/// ```sh
/// $ pulumi import aws:lightsail/lbAttachment:LbAttachment example example-load-balancer,example-instance
/// ```
class LbAttachment extends pulumi.CustomResource {
  /// Name of the instance to attach to the load balancer.
  late final pulumi.Output<String> instanceName;
  /// Name of the Lightsail load balancer.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> lbName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [LbAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LbAttachment]. {@macro pulumi_lightsail_lb_attachment_lb_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LbAttachment(
    String name, {
    LbAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:lightsail/lbAttachment:LbAttachment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.instanceName = registerOutput<String>('instanceName');
    this.lbName = registerOutput<String>('lbName');
    this.region = registerOutput<String>('region');
  }
}
