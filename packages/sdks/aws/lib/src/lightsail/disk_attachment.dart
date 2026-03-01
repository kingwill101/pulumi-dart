import 'package:pulumi/pulumi.dart' as pulumi;
import 'disk_attachment_args.dart';
import 'disk_attachment_state.dart';

/// Manages a Lightsail disk attachment. Use this resource to attach additional storage disks to your Lightsail instances for expanded storage capacity.
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
/// const example = new aws.lightsail.Disk("example", {
///     name: "example-disk",
///     sizeInGb: 8,
///     availabilityZone: available.then(available => available.names?.[0]),
/// });
/// const exampleInstance = new aws.lightsail.Instance("example", {
///     name: "example-instance",
///     availabilityZone: available.then(available => available.names?.[0]),
///     blueprintId: "amazon_linux_2",
///     bundleId: "nano_3_0",
/// });
/// const exampleDisk_attachment = new aws.lightsail.Disk_attachment("example", {
///     diskName: example.name,
///     instanceName: exampleInstance.name,
///     diskPath: "/dev/xvdf",
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
/// example = aws.lightsail.Disk("example",
///     name="example-disk",
///     size_in_gb=8,
///     availability_zone=available.names[0])
/// example_instance = aws.lightsail.Instance("example",
///     name="example-instance",
///     availability_zone=available.names[0],
///     blueprint_id="amazon_linux_2",
///     bundle_id="nano_3_0")
/// example_disk_attachment = aws.lightsail.Disk_attachment("example",
///     disk_name=example.name,
///     instance_name=example_instance.name,
///     disk_path="/dev/xvdf")
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
///     var example = new Aws.LightSail.Disk("example", new()
///     {
///         Name = "example-disk",
///         SizeInGb = 8,
///         AvailabilityZone = available.Apply(getAvailabilityZonesResult => getAvailabilityZonesResult.Names[0]),
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
///     var exampleDisk_attachment = new Aws.LightSail.Disk_attachment("example", new()
///     {
///         DiskName = example.Name,
///         InstanceName = exampleInstance.Name,
///         DiskPath = "/dev/xvdf",
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
/// 		example, err := lightsail.NewDisk(ctx, "example", &lightsail.DiskArgs{
/// 			Name:             pulumi.String("example-disk"),
/// 			SizeInGb:         pulumi.Int(8),
/// 			AvailabilityZone: pulumi.String(available.Names[0]),
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
/// 		_, err = lightsail.NewDisk_attachment(ctx, "example", &lightsail.Disk_attachmentArgs{
/// 			DiskName:     example.Name,
/// 			InstanceName: exampleInstance.Name,
/// 			DiskPath:     pulumi.String("/dev/xvdf"),
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
/// import com.pulumi.aws.lightsail.Disk;
/// import com.pulumi.aws.lightsail.DiskArgs;
/// import com.pulumi.aws.lightsail.Instance;
/// import com.pulumi.aws.lightsail.InstanceArgs;
/// import com.pulumi.aws.lightsail.Disk_attachment;
/// import com.pulumi.aws.lightsail.Disk_attachmentArgs;
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
///         var example = new Disk("example", DiskArgs.builder()
///             .name("example-disk")
///             .sizeInGb(8)
///             .availabilityZone(available.names()[0])
///             .build());
///
///         var exampleInstance = new Instance("exampleInstance", InstanceArgs.builder()
///             .name("example-instance")
///             .availabilityZone(available.names()[0])
///             .blueprintId("amazon_linux_2")
///             .bundleId("nano_3_0")
///             .build());
///
///         var exampleDisk_attachment = new Disk_attachment("exampleDisk_attachment", Disk_attachmentArgs.builder()
///             .diskName(example.name())
///             .instanceName(exampleInstance.name())
///             .diskPath("/dev/xvdf")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:lightsail:Disk
///     properties:
///       name: example-disk
///       sizeInGb: 8
///       availabilityZone: ${available.names[0]}
///   exampleInstance:
///     type: aws:lightsail:Instance
///     name: example
///     properties:
///       name: example-instance
///       availabilityZone: ${available.names[0]}
///       blueprintId: amazon_linux_2
///       bundleId: nano_3_0
///   exampleDisk_attachment:
///     type: aws:lightsail:Disk_attachment
///     name: example
///     properties:
///       diskName: ${example.name}
///       instanceName: ${exampleInstance.name}
///       diskPath: /dev/xvdf
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
/// Using `pulumi import`, import `aws.lightsail.Disk_attachment` using the id attribute. For example:
///
/// ```sh
/// $ pulumi import aws:lightsail/disk_attachment:Disk_attachment example example-disk,example-instance
/// ```
class DiskAttachment extends pulumi.CustomResource {
  /// Name of the Lightsail disk.
  late final pulumi.Output<String> diskName;
  /// Disk path to expose to the instance.
  late final pulumi.Output<String> diskPath;
  /// Name of the Lightsail instance to attach to.
  late final pulumi.Output<String> instanceName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [DiskAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DiskAttachment]. {@macro pulumi_lightsail_disk_attachment_disk_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DiskAttachment(
    String name, {
    DiskAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:lightsail/disk_attachment:Disk_attachment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.diskName = registerOutput<String>('diskName');
    this.diskPath = registerOutput<String>('diskPath');
    this.instanceName = registerOutput<String>('instanceName');
    this.region = registerOutput<String>('region');
  }

  /// Gets an existing [DiskAttachment] resource's state with the given [name] and [id].
  static DiskAttachment get(
    String name,
    pulumi.Input<String> id, {
    DiskAttachmentState? state,
  }) {
    return DiskAttachment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DiskAttachment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:lightsail/disk_attachment:Disk_attachment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.diskName = registerOutput<String>('diskName');
    this.diskPath = registerOutput<String>('diskPath');
    this.instanceName = registerOutput<String>('instanceName');
    this.region = registerOutput<String>('region');
  }
}
