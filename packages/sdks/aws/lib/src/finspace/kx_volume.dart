import 'package:pulumi/pulumi.dart' as pulumi;
import 'kx_volume_args.dart';
import 'kx_volume_attached_cluster.dart';
import 'kx_volume_nas1_configuration.dart';
import 'kx_volume_state.dart';

/// Resource for managing an AWS FinSpace Kx Volume.
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
/// const example = new aws.finspace.KxVolume("example", {
///     name: "my-tf-kx-volume",
///     environmentId: exampleAwsFinspaceKxEnvironment.id,
///     availabilityZones: ["use1-az2"],
///     azMode: "SINGLE",
///     type: "NAS_1",
///     nas1Configurations: [{
///         size: 1200,
///         type: "SSD_250",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.finspace.KxVolume("example",
///     name="my-tf-kx-volume",
///     environment_id=example_aws_finspace_kx_environment["id"],
///     availability_zones=["use1-az2"],
///     az_mode="SINGLE",
///     type="NAS_1",
///     nas1_configurations=[{
///         "size": 1200,
///         "type": "SSD_250",
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.FinSpace.KxVolume("example", new()
///     {
///         Name = "my-tf-kx-volume",
///         EnvironmentId = exampleAwsFinspaceKxEnvironment.Id,
///         AvailabilityZones = new[]
///         {
///             "use1-az2",
///         },
///         AzMode = "SINGLE",
///         Type = "NAS_1",
///         Nas1Configurations = new[]
///         {
///             new Aws.FinSpace.Inputs.KxVolumeNas1ConfigurationArgs
///             {
///                 Size = 1200,
///                 Type = "SSD_250",
///             },
///         },
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
/// 		_, err := finspace.NewKxVolume(ctx, "example", &finspace.KxVolumeArgs{
/// 			Name:          pulumi.String("my-tf-kx-volume"),
/// 			EnvironmentId: pulumi.Any(exampleAwsFinspaceKxEnvironment.Id),
/// 			AvailabilityZones: pulumi.StringArray{
/// 				pulumi.String("use1-az2"),
/// 			},
/// 			AzMode: pulumi.String("SINGLE"),
/// 			Type:   pulumi.String("NAS_1"),
/// 			Nas1Configurations: finspace.KxVolumeNas1ConfigurationArray{
/// 				&finspace.KxVolumeNas1ConfigurationArgs{
/// 					Size: pulumi.Int(1200),
/// 					Type: pulumi.String("SSD_250"),
/// 				},
/// 			},
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
/// import com.pulumi.aws.finspace.KxVolume;
/// import com.pulumi.aws.finspace.KxVolumeArgs;
/// import com.pulumi.aws.finspace.inputs.KxVolumeNas1ConfigurationArgs;
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
///         var example = new KxVolume("example", KxVolumeArgs.builder()
///             .name("my-tf-kx-volume")
///             .environmentId(exampleAwsFinspaceKxEnvironment.id())
///             .availabilityZones("use1-az2")
///             .azMode("SINGLE")
///             .type("NAS_1")
///             .nas1Configurations(KxVolumeNas1ConfigurationArgs.builder()
///                 .size(1200)
///                 .type("SSD_250")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:finspace:KxVolume
///     properties:
///       name: my-tf-kx-volume
///       environmentId: ${exampleAwsFinspaceKxEnvironment.id}
///       availabilityZones:
///         - use1-az2
///       azMode: SINGLE
///       type: NAS_1
///       nas1Configurations:
///         - size: 1200
///           type: SSD_250
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import an AWS FinSpace Kx Volume using the `id` (environment ID and volume name, comma-delimited). For example:
///
/// ```sh
/// $ pulumi import aws:finspace/kxVolume:KxVolume example n3ceo7wqxoxcti5tujqwzs,my-tf-kx-volume
/// ```
class KxVolume extends pulumi.CustomResource {
  /// Amazon Resource Name (ARN) identifier of the KX volume.
  late final pulumi.Output<String> arn;
  late final pulumi.Output<List<KxVolumeAttachedCluster>> attachedClusters;
  /// The identifier of the AWS Availability Zone IDs.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<List<String>> availabilityZones;
  /// The number of availability zones you want to assign per volume. Currently, Finspace only support SINGLE for volumes.
  /// * `SINGLE` - Assigns one availability zone per volume.
  late final pulumi.Output<String> azMode;
  /// The timestamp at which the volume was created in FinSpace. The value is determined as epoch time in milliseconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.
  late final pulumi.Output<String> createdTimestamp;
  /// Description of the volume.
  late final pulumi.Output<String?> description;
  /// A unique identifier for the kdb environment, whose clusters can attach to the volume.
  late final pulumi.Output<String> environmentId;
  /// Last timestamp at which the volume was updated in FinSpace. Value determined as epoch time in seconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000.
  late final pulumi.Output<String> lastModifiedTimestamp;
  /// Unique name for the volumr that you want to create.
  late final pulumi.Output<String> name;
  /// Specifies the configuration for the Network attached storage (`NAS_1`) file system volume. This parameter is required when `volume_type` is `NAS_1`. See `nas1_configuration` Argument Reference below.
  late final pulumi.Output<List<KxVolumeNas1Configuration>?> nas1Configurations;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The status of volume creation.
  /// * `CREATING` - The volume creation is in progress.
  /// * `CREATE_FAILED` - The volume creation has failed.
  /// * `ACTIVE` - The volume is active.
  /// * `UPDATING` - The volume is in the process of being updated.
  /// * `UPDATE_FAILED` - The update action failed.
  /// * `UPDATED` - The volume is successfully updated.
  /// * `DELETING` - The volume is in the process of being deleted.
  /// * `DELETE_FAILED` - The system failed to delete the volume.
  /// * `DELETED` - The volume is successfully deleted.
  late final pulumi.Output<String> status;
  /// The error message when a failed state occurs.
  late final pulumi.Output<String> statusReason;
  /// A list of key-value pairs to label the volume. You can add up to 50 tags to a volume
  late final pulumi.Output<Map<String, String>?> tags;
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// The type of file system volume. Currently, FinSpace only supports the `NAS_1` volume type. When you select the `NAS_1` volume type, you must also provide `nas1_configuration`.
  late final pulumi.Output<String> type;

  /// Creates a new [KxVolume].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [KxVolume]. {@macro pulumi_finspace_kx_volume_kx_volume_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  KxVolume(
    String name, {
    KxVolumeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:finspace/kxVolume:KxVolume',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.attachedClusters = registerOutput<List<KxVolumeAttachedCluster>>('attachedClusters');
    this.availabilityZones = registerOutput<List<String>>('availabilityZones');
    this.azMode = registerOutput<String>('azMode');
    this.createdTimestamp = registerOutput<String>('createdTimestamp');
    this.description = registerOutput<String?>('description');
    this.environmentId = registerOutput<String>('environmentId');
    this.lastModifiedTimestamp = registerOutput<String>('lastModifiedTimestamp');
    this.name = registerOutput<String>('name');
    this.nas1Configurations = registerOutput<List<KxVolumeNas1Configuration>?>('nas1Configurations');
    this.region = registerOutput<String>('region');
    this.status = registerOutput<String>('status');
    this.statusReason = registerOutput<String>('statusReason');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.type = registerOutput<String>('type');
  }

  /// Gets an existing [KxVolume] resource's state with the given [name] and [id].
  static KxVolume get(
    String name,
    pulumi.Input<String> id, {
    KxVolumeState? state,
  }) {
    return KxVolume._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  KxVolume._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:finspace/kxVolume:KxVolume',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.attachedClusters = registerOutput<List<KxVolumeAttachedCluster>>('attachedClusters');
    this.availabilityZones = registerOutput<List<String>>('availabilityZones');
    this.azMode = registerOutput<String>('azMode');
    this.createdTimestamp = registerOutput<String>('createdTimestamp');
    this.description = registerOutput<String?>('description');
    this.environmentId = registerOutput<String>('environmentId');
    this.lastModifiedTimestamp = registerOutput<String>('lastModifiedTimestamp');
    this.name = registerOutput<String>('name');
    this.nas1Configurations = registerOutput<List<KxVolumeNas1Configuration>?>('nas1Configurations');
    this.region = registerOutput<String>('region');
    this.status = registerOutput<String>('status');
    this.statusReason = registerOutput<String>('statusReason');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.type = registerOutput<String>('type');
  }
}
