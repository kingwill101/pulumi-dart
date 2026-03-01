import 'package:pulumi/pulumi.dart' as pulumi;
import 'availability_zone_group_args.dart';

/// Manages an EC2 Availability Zone Group, such as updating its opt-in status.
///
/// > **NOTE:** This is an advanced resource. The provider will automatically assume management of the EC2 Availability Zone Group without import and perform no actions on removal from configuration.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ec2.AvailabilityZoneGroup("example", {
///     groupName: "us-west-2-lax-1",
///     optInStatus: "opted-in",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.AvailabilityZoneGroup("example",
///     group_name="us-west-2-lax-1",
///     opt_in_status="opted-in")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Ec2.AvailabilityZoneGroup("example", new()
///     {
///         GroupName = "us-west-2-lax-1",
///         OptInStatus = "opted-in",
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
/// 		_, err := ec2.NewAvailabilityZoneGroup(ctx, "example", &ec2.AvailabilityZoneGroupArgs{
/// 			GroupName:   pulumi.String("us-west-2-lax-1"),
/// 			OptInStatus: pulumi.String("opted-in"),
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
/// import com.pulumi.aws.ec2.AvailabilityZoneGroup;
/// import com.pulumi.aws.ec2.AvailabilityZoneGroupArgs;
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
///         var example = new AvailabilityZoneGroup("example", AvailabilityZoneGroupArgs.builder()
///             .groupName("us-west-2-lax-1")
///             .optInStatus("opted-in")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ec2:AvailabilityZoneGroup
///     properties:
///       groupName: us-west-2-lax-1
///       optInStatus: opted-in
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import EC2 Availability Zone Groups using the group name. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/availabilityZoneGroup:AvailabilityZoneGroup example us-west-2-lax-1
/// ```
class AvailabilityZoneGroup extends pulumi.CustomResource {
  /// Name of the Availability Zone Group.
  late final pulumi.Output<String> groupName;

  /// Indicates whether to enable or disable Availability Zone Group. Valid values: `opted-in` or `not-opted-in`.
  late final pulumi.Output<String> optInStatus;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [AvailabilityZoneGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AvailabilityZoneGroup]. {@macro pulumi_ec2_availability_zone_group_availability_zone_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AvailabilityZoneGroup(
    String name, {
    AvailabilityZoneGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:ec2/availabilityZoneGroup:AvailabilityZoneGroup',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.groupName = registerOutput<String>('groupName');
    this.optInStatus = registerOutput<String>('optInStatus');
    this.region = registerOutput<String>('region');
  }
}
