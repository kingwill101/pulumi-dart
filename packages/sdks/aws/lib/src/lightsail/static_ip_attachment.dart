import 'package:pulumi/pulumi.dart' as pulumi;
import 'static_ip_attachment_args.dart';
import 'static_ip_attachment_state.dart';

/// Manages a static IP address attachment - relationship between a Lightsail static IP and Lightsail instance.
///
/// Use this resource to attach a static IP address to a Lightsail instance to provide a consistent public IP address that persists across instance restarts.
///
/// &gt; **Note:** Lightsail is currently only supported in a limited number of AWS Regions, please see ["Regions and Availability Zones in Amazon Lightsail"](https://lightsail.aws.amazon.com/ls/docs/overview/article/understanding-regions-and-availability-zones-in-amazon-lightsail) for more details.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.lightsail.StaticIp("example", {name: "example"});
/// const exampleInstance = new aws.lightsail.Instance("example", {
///     name: "example",
///     availabilityZone: "us-east-1a",
///     blueprintId: "ubuntu_20_04",
///     bundleId: "nano_2_0",
/// });
/// const exampleStaticIpAttachment = new aws.lightsail.StaticIpAttachment("example", {
///     staticIpName: example.id,
///     instanceName: exampleInstance.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lightsail.StaticIp("example", name="example")
/// example_instance = aws.lightsail.Instance("example",
///     name="example",
///     availability_zone="us-east-1a",
///     blueprint_id="ubuntu_20_04",
///     bundle_id="nano_2_0")
/// example_static_ip_attachment = aws.lightsail.StaticIpAttachment("example",
///     static_ip_name=example.id,
///     instance_name=example_instance.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.LightSail.StaticIp("example", new()
///     {
///         Name = "example",
///     });
///
///     var exampleInstance = new Aws.LightSail.Instance("example", new()
///     {
///         Name = "example",
///         AvailabilityZone = "us-east-1a",
///         BlueprintId = "ubuntu_20_04",
///         BundleId = "nano_2_0",
///     });
///
///     var exampleStaticIpAttachment = new Aws.LightSail.StaticIpAttachment("example", new()
///     {
///         StaticIpName = example.Id,
///         InstanceName = exampleInstance.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lightsail"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := lightsail.NewStaticIp(ctx, "example", &lightsail.StaticIpArgs{
/// 			Name: pulumi.String("example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleInstance, err := lightsail.NewInstance(ctx, "example", &lightsail.InstanceArgs{
/// 			Name:             pulumi.String("example"),
/// 			AvailabilityZone: pulumi.String("us-east-1a"),
/// 			BlueprintId:      pulumi.String("ubuntu_20_04"),
/// 			BundleId:         pulumi.String("nano_2_0"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = lightsail.NewStaticIpAttachment(ctx, "example", &lightsail.StaticIpAttachmentArgs{
/// 			StaticIpName: example.ID(),
/// 			InstanceName: exampleInstance.ID(),
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
/// import com.pulumi.aws.lightsail.StaticIp;
/// import com.pulumi.aws.lightsail.StaticIpArgs;
/// import com.pulumi.aws.lightsail.Instance;
/// import com.pulumi.aws.lightsail.InstanceArgs;
/// import com.pulumi.aws.lightsail.StaticIpAttachment;
/// import com.pulumi.aws.lightsail.StaticIpAttachmentArgs;
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
///         var example = new StaticIp("example", StaticIpArgs.builder()
///             .name("example")
///             .build());
///
///         var exampleInstance = new Instance("exampleInstance", InstanceArgs.builder()
///             .name("example")
///             .availabilityZone("us-east-1a")
///             .blueprintId("ubuntu_20_04")
///             .bundleId("nano_2_0")
///             .build());
///
///         var exampleStaticIpAttachment = new StaticIpAttachment("exampleStaticIpAttachment", StaticIpAttachmentArgs.builder()
///             .staticIpName(example.id())
///             .instanceName(exampleInstance.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:lightsail:StaticIp
///     properties:
///       name: example
///   exampleInstance:
///     type: aws:lightsail:Instance
///     name: example
///     properties:
///       name: example
///       availabilityZone: us-east-1a
///       blueprintId: ubuntu_20_04
///       bundleId: nano_2_0
///   exampleStaticIpAttachment:
///     type: aws:lightsail:StaticIpAttachment
///     name: example
///     properties:
///       staticIpName: ${example.id}
///       instanceName: ${exampleInstance.id}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.lightsail.StaticIpAttachment` using the static IP name. For example:
///
/// ```sh
/// $ pulumi import aws:lightsail/staticIpAttachment:StaticIpAttachment example example-static-ip
/// ```
class StaticIpAttachment extends pulumi.CustomResource {
  /// Name of the Lightsail instance to attach the IP to.
  late final pulumi.Output<String> instanceName;

  /// Allocated static IP address.
  late final pulumi.Output<String> ipAddress;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Name of the allocated static IP.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> staticIpName;

  /// Creates a new [StaticIpAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [StaticIpAttachment]. {@macro pulumi_lightsail_static_ip_attachment_static_ip_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  StaticIpAttachment(
    String name, {
    StaticIpAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:lightsail/staticIpAttachment:StaticIpAttachment',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    instanceName = registerOutput<String>('instanceName');
    ipAddress = registerOutput<String>('ipAddress');
    region = registerOutput<String>('region');
    staticIpName = registerOutput<String>('staticIpName');
  }

  /// Gets an existing [StaticIpAttachment] resource's state with the given [name] and [id].
  static StaticIpAttachment get(
    String name,
    pulumi.Input<String> id, {
    StaticIpAttachmentState? state,
  }) {
    return StaticIpAttachment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  StaticIpAttachment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:lightsail/staticIpAttachment:StaticIpAttachment',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    instanceName = registerOutput<String>('instanceName');
    ipAddress = registerOutput<String>('ipAddress');
    region = registerOutput<String>('region');
    staticIpName = registerOutput<String>('staticIpName');
  }
}
