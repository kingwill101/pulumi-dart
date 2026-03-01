import 'package:pulumi/pulumi.dart' as pulumi;
import 'disk_args.dart';
import 'disk_state.dart';

/// Manages a Lightsail disk. Use this resource to create additional block storage that can be attached to Lightsail instances for extra storage capacity.
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
/// 		_, err = lightsail.NewDisk(ctx, "example", &lightsail.DiskArgs{
/// 			Name:             pulumi.String("example-disk"),
/// 			SizeInGb:         pulumi.Int(8),
/// 			AvailabilityZone: pulumi.String(available.Names[0]),
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
/// Using `pulumi import`, import `aws.lightsail.Disk` using the name attribute. For example:
///
/// ```sh
/// $ pulumi import aws:lightsail/disk:Disk example example-disk
/// ```
class Disk extends pulumi.CustomResource {
  /// ARN of the disk.
  late final pulumi.Output<String> arn;
  /// Availability Zone in which to create the disk.
  late final pulumi.Output<String> availabilityZone;
  /// Date and time when the disk was created.
  late final pulumi.Output<String> createdAt;
  /// Name of the disk. Must begin with an alphabetic character and contain only alphanumeric characters, underscores, hyphens, and dots.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Size of the disk in GB.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<int> sizeInGb;
  /// Support code for the disk. Include this code in your email to support when you have questions about a disk in Lightsail.
  late final pulumi.Output<String> supportCode;
  /// Map of tags to assign to the resource. To create a key-only tag, use an empty string as the value. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [Disk].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Disk]. {@macro pulumi_lightsail_disk_disk_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Disk(
    String name, {
    DiskArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:lightsail/disk:Disk',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.availabilityZone = registerOutput<String>('availabilityZone');
    this.createdAt = registerOutput<String>('createdAt');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.sizeInGb = registerOutput<int>('sizeInGb');
    this.supportCode = registerOutput<String>('supportCode');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }

  /// Gets an existing [Disk] resource's state with the given [name] and [id].
  static Disk get(
    String name,
    pulumi.Input<String> id, {
    DiskState? state,
  }) {
    return Disk._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Disk._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:lightsail/disk:Disk',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.availabilityZone = registerOutput<String>('availabilityZone');
    this.createdAt = registerOutput<String>('createdAt');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.sizeInGb = registerOutput<int>('sizeInGb');
    this.supportCode = registerOutput<String>('supportCode');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
