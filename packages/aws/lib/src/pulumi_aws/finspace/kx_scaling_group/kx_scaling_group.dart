import 'package:pulumi/pulumi.dart';
import 'kx_scaling_group_args.dart';

/// Resource for managing an AWS FinSpace Kx Scaling Group.
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.finspace.KxScalingGroup("example", {
/// name: "my-tf-kx-scalinggroup",
/// environmentId: exampleAwsFinspaceKxEnvironment.id,
/// availabilityZoneId: "use1-az2",
/// hostType: "kx.sg.4xlarge",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.finspace.KxScalingGroup("example",
/// name="my-tf-kx-scalinggroup",
/// environment_id=example_aws_finspace_kx_environment["id"],
/// availability_zone_id="use1-az2",
/// host_type="kx.sg.4xlarge")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.FinSpace.KxScalingGroup("example", new()
/// {
/// Name = "my-tf-kx-scalinggroup",
/// EnvironmentId = exampleAwsFinspaceKxEnvironment.Id,
/// AvailabilityZoneId = "use1-az2",
/// HostType = "kx.sg.4xlarge",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/finspace"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := finspace.NewKxScalingGroup(ctx, "example", &finspace.KxScalingGroupArgs{
/// Name:               pulumi.String("my-tf-kx-scalinggroup"),
/// EnvironmentId:      pulumi.Any(exampleAwsFinspaceKxEnvironment.Id),
/// AvailabilityZoneId: pulumi.String("use1-az2"),
/// HostType:           pulumi.String("kx.sg.4xlarge"),
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
/// import com.pulumi.aws.finspace.KxScalingGroup;
/// import com.pulumi.aws.finspace.KxScalingGroupArgs;
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
/// var example = new KxScalingGroup("example", KxScalingGroupArgs.builder()
/// .name("my-tf-kx-scalinggroup")
/// .environmentId(exampleAwsFinspaceKxEnvironment.id())
/// .availabilityZoneId("use1-az2")
/// .hostType("kx.sg.4xlarge")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:finspace:KxScalingGroup
/// properties:
/// name: my-tf-kx-scalinggroup
/// environmentId: ${exampleAwsFinspaceKxEnvironment.id}
/// availabilityZoneId: use1-az2
/// hostType: kx.sg.4xlarge
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import an AWS FinSpace Kx Scaling Group using the <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span> (environment ID and scaling group name, comma-delimited). For example:
///
/// ```sh
/// $ pulumi import aws:finspace/kxScalingGroup:KxScalingGroup example n3ceo7wqxoxcti5tujqwzs,my-tf-kx-scalinggroup
/// ```
class KxScalingGroup extends CustomResource {
  /// Amazon Resource Name (ARN) identifier of the KX Scaling Group.
  late final Output<String> arn;

  /// The availability zone identifiers for the requested regions.
  late final Output<String> availabilityZoneId;

  /// The list of Managed kdb clusters that are currently active in the given scaling group.
  late final Output<List<String>> clusters;

  /// The timestamp at which the scaling group was created in FinSpace. The value is determined as epoch time in milliseconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.
  late final Output<String> createdTimestamp;

  /// A unique identifier for the kdb environment, where you want to create the scaling group.
  late final Output<String> environmentId;

  /// The memory and CPU capabilities of the scaling group host on which FinSpace Managed kdb clusters will be placed.
  ///
  /// The following arguments are optional:
  late final Output<String> hostType;

  /// Last timestamp at which the scaling group was updated in FinSpace. Value determined as epoch time in seconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000.
  late final Output<String> lastModifiedTimestamp;

  /// Unique name for the scaling group that you want to create.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The status of scaling group.
  /// * `CREATING` - The scaling group creation is in progress.
  /// * `CREATE_FAILED` - The scaling group creation has failed.
  /// * `ACTIVE` - The scaling group is active.
  /// * `UPDATING` - The scaling group is in the process of being updated.
  /// * `UPDATE_FAILED` - The update action failed.
  /// * `DELETING` - The scaling group is in the process of being deleted.
  /// * `DELETE_FAILED` - The system failed to delete the scaling group.
  /// * `DELETED` - The scaling group is successfully deleted.
  late final Output<String> status;

  /// The error message when a failed state occurs.
  late final Output<String> statusReason;

  /// Key-value mapping of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level. You can add up to 50 tags to a scaling group.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  KxScalingGroup(
    String name, {
    KxScalingGroupArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:finspace/kxScalingGroup:KxScalingGroup',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.availabilityZoneId = Output.createUnknown<String>();
    this.clusters = Output.createUnknown<List<String>>();
    this.createdTimestamp = Output.createUnknown<String>();
    this.environmentId = Output.createUnknown<String>();
    this.hostType = Output.createUnknown<String>();
    this.lastModifiedTimestamp = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.status = Output.createUnknown<String>();
    this.statusReason = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
  }
}
