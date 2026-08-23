import 'package:pulumi/pulumi.dart' as pulumi;
import 'kx_scaling_group_args.dart';
import 'kx_scaling_group_state.dart';

/// Resource for managing an AWS FinSpace Kx Scaling Group.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.finspace.KxScalingGroup("example", {
///     name: "my-tf-kx-scalinggroup",
///     environmentId: exampleAwsFinspaceKxEnvironment.id,
///     availabilityZoneId: "use1-az2",
///     hostType: "kx.sg.4xlarge",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.finspace.KxScalingGroup("example",
///     name="my-tf-kx-scalinggroup",
///     environment_id=example_aws_finspace_kx_environment["id"],
///     availability_zone_id="use1-az2",
///     host_type="kx.sg.4xlarge")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.FinSpace.KxScalingGroup("example", new()
///     {
///         Name = "my-tf-kx-scalinggroup",
///         EnvironmentId = exampleAwsFinspaceKxEnvironment.Id,
///         AvailabilityZoneId = "use1-az2",
///         HostType = "kx.sg.4xlarge",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/finspace"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := finspace.NewKxScalingGroup(ctx, "example", &finspace.KxScalingGroupArgs{
/// 			Name:               pulumi.String("my-tf-kx-scalinggroup"),
/// 			EnvironmentId:      pulumi.Any(exampleAwsFinspaceKxEnvironment.Id),
/// 			AvailabilityZoneId: pulumi.String("use1-az2"),
/// 			HostType:           pulumi.String("kx.sg.4xlarge"),
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
/// resource "aws_finspace_kxscalinggroup" "example" {
///   name                 = "my-tf-kx-scalinggroup"
///   environment_id       = exampleAwsFinspaceKxEnvironment.id
///   availability_zone_id = "use1-az2"
///   host_type            = "kx.sg.4xlarge"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.finspace.KxScalingGroup;
/// import com.pulumi.aws.finspace.KxScalingGroupArgs;
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
///         var example = new KxScalingGroup("example", KxScalingGroupArgs.builder()
///             .name("my-tf-kx-scalinggroup")
///             .environmentId(exampleAwsFinspaceKxEnvironment.id())
///             .availabilityZoneId("use1-az2")
///             .hostType("kx.sg.4xlarge")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:finspace:KxScalingGroup
///     properties:
///       name: my-tf-kx-scalinggroup
///       environmentId: ${exampleAwsFinspaceKxEnvironment.id}
///       availabilityZoneId: use1-az2
///       hostType: kx.sg.4xlarge
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import an AWS FinSpace Kx Scaling Group using the `id` (environment ID and scaling group name, comma-delimited). For example:
///
/// ```sh
/// $ pulumi import aws:finspace/kxScalingGroup:KxScalingGroup example n3ceo7wqxoxcti5tujqwzs,my-tf-kx-scalinggroup
/// ```
class KxScalingGroup extends pulumi.CustomResource {
  /// Amazon Resource Name (ARN) identifier of the KX Scaling Group.
  late final pulumi.Output<String> arn;
  /// Availability zone identifiers for the requested regions.
  late final pulumi.Output<String> availabilityZoneId;
  /// List of Managed kdb clusters that are currently active in the given scaling group.
  late final pulumi.Output<List<String>> clusters;
  /// Timestamp at which the scaling group was created in FinSpace. The value is determined as epoch time in milliseconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.
  late final pulumi.Output<String> createdTimestamp;
  /// Unique identifier for the kdb environment, where you want to create the scaling group.
  late final pulumi.Output<String> environmentId;
  /// Memory and CPU capabilities of the scaling group host on which FinSpace Managed kdb clusters will be placed.
  late final pulumi.Output<String> hostType;
  /// Last timestamp at which the scaling group was updated in FinSpace. Value determined as epoch time in seconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000.
  late final pulumi.Output<String> lastModifiedTimestamp;
  /// Unique name for the scaling group that you want to create.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Status of scaling group (`CREATING`, `CREATE_FAILED`, `ACTIVE`, `UPDATING`, `UPDATE_FAILED`, `DELETING`, `DELETE_FAILED`, `DELETED`).
  late final pulumi.Output<String> status;
  /// Error message when a failed state occurs.
  late final pulumi.Output<String> statusReason;
  /// Key-value mapping of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level. You can add up to 50 tags to a scaling group.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [KxScalingGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [KxScalingGroup]. {@macro pulumi_finspace_kx_scaling_group_kx_scaling_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  KxScalingGroup(
    String name, {
    KxScalingGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:finspace/kxScalingGroup:KxScalingGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    availabilityZoneId = registerOutput<String>('availabilityZoneId');
    clusters = registerOutput<List<String>>('clusters');
    createdTimestamp = registerOutput<String>('createdTimestamp');
    environmentId = registerOutput<String>('environmentId');
    hostType = registerOutput<String>('hostType');
    lastModifiedTimestamp = registerOutput<String>('lastModifiedTimestamp');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    status = registerOutput<String>('status');
    statusReason = registerOutput<String>('statusReason');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }

  /// Gets an existing [KxScalingGroup] resource's state with the given [name] and [id].
  static KxScalingGroup get(
    String name,
    pulumi.Input<String> id, {
    KxScalingGroupState? state,
  }) {
    return KxScalingGroup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  KxScalingGroup._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:finspace/kxScalingGroup:KxScalingGroup',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    availabilityZoneId = registerOutput<String>('availabilityZoneId');
    clusters = registerOutput<List<String>>('clusters');
    createdTimestamp = registerOutput<String>('createdTimestamp');
    environmentId = registerOutput<String>('environmentId');
    hostType = registerOutput<String>('hostType');
    lastModifiedTimestamp = registerOutput<String>('lastModifiedTimestamp');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    status = registerOutput<String>('status');
    statusReason = registerOutput<String>('statusReason');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
