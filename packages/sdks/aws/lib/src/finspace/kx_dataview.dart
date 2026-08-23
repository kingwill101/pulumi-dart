import 'package:pulumi/pulumi.dart' as pulumi;
import 'kx_dataview_args.dart';
import 'kx_dataview_state.dart';

/// Resource for managing an AWS FinSpace Kx Dataview.
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
/// const example = new aws.finspace.KxDataview("example", {
///     name: "my-tf-kx-dataview",
///     environmentId: exampleAwsFinspaceKxEnvironment.id,
///     databaseName: exampleAwsFinspaceKxDatabase.name,
///     availabilityZoneId: "use1-az2",
///     description: "Terraform managed Kx Dataview",
///     azMode: "SINGLE",
///     autoUpdate: true,
///     segmentConfigurations: [{
///         volumeName: exampleAwsFinspaceKxVolume.name,
///         dbPaths: ["/*"],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.finspace.KxDataview("example",
///     name="my-tf-kx-dataview",
///     environment_id=example_aws_finspace_kx_environment["id"],
///     database_name=example_aws_finspace_kx_database["name"],
///     availability_zone_id="use1-az2",
///     description="Terraform managed Kx Dataview",
///     az_mode="SINGLE",
///     auto_update=True,
///     segment_configurations=[{
///         "volume_name": example_aws_finspace_kx_volume["name"],
///         "db_paths": ["/*"],
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
///     var example = new Aws.FinSpace.KxDataview("example", new()
///     {
///         Name = "my-tf-kx-dataview",
///         EnvironmentId = exampleAwsFinspaceKxEnvironment.Id,
///         DatabaseName = exampleAwsFinspaceKxDatabase.Name,
///         AvailabilityZoneId = "use1-az2",
///         Description = "Terraform managed Kx Dataview",
///         AzMode = "SINGLE",
///         AutoUpdate = true,
///         SegmentConfigurations = new[]
///         {
///             new Aws.FinSpace.Inputs.KxDataviewSegmentConfigurationArgs
///             {
///                 VolumeName = exampleAwsFinspaceKxVolume.Name,
///                 DbPaths = new[]
///                 {
///                     "/*",
///                 },
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
/// 		_, err := finspace.NewKxDataview(ctx, "example", &finspace.KxDataviewArgs{
/// 			Name:               pulumi.String("my-tf-kx-dataview"),
/// 			EnvironmentId:      pulumi.Any(exampleAwsFinspaceKxEnvironment.Id),
/// 			DatabaseName:       pulumi.Any(exampleAwsFinspaceKxDatabase.Name),
/// 			AvailabilityZoneId: pulumi.String("use1-az2"),
/// 			Description:        pulumi.String("Terraform managed Kx Dataview"),
/// 			AzMode:             pulumi.String("SINGLE"),
/// 			AutoUpdate:         pulumi.Bool(true),
/// 			SegmentConfigurations: finspace.KxDataviewSegmentConfigurationArray{
/// 				&finspace.KxDataviewSegmentConfigurationArgs{
/// 					VolumeName: pulumi.Any(exampleAwsFinspaceKxVolume.Name),
/// 					DbPaths: pulumi.StringArray{
/// 						pulumi.String("/*"),
/// 					},
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
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_finspace_kxdataview" "example" {
///   name                 = "my-tf-kx-dataview"
///   environment_id       = exampleAwsFinspaceKxEnvironment.id
///   database_name        = exampleAwsFinspaceKxDatabase.name
///   availability_zone_id = "use1-az2"
///   description          = "Terraform managed Kx Dataview"
///   az_mode              = "SINGLE"
///   auto_update          = true
///   segment_configurations {
///     volume_name = exampleAwsFinspaceKxVolume.name
///     db_paths    = ["/*"]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.finspace.KxDataview;
/// import com.pulumi.aws.finspace.KxDataviewArgs;
/// import com.pulumi.aws.finspace.inputs.KxDataviewSegmentConfigurationArgs;
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
///         var example = new KxDataview("example", KxDataviewArgs.builder()
///             .name("my-tf-kx-dataview")
///             .environmentId(exampleAwsFinspaceKxEnvironment.id())
///             .databaseName(exampleAwsFinspaceKxDatabase.name())
///             .availabilityZoneId("use1-az2")
///             .description("Terraform managed Kx Dataview")
///             .azMode("SINGLE")
///             .autoUpdate(true)
///             .segmentConfigurations(KxDataviewSegmentConfigurationArgs.builder()
///                 .volumeName(exampleAwsFinspaceKxVolume.name())
///                 .dbPaths("/*")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:finspace:KxDataview
///     properties:
///       name: my-tf-kx-dataview
///       environmentId: ${exampleAwsFinspaceKxEnvironment.id}
///       databaseName: ${exampleAwsFinspaceKxDatabase.name}
///       availabilityZoneId: use1-az2
///       description: Terraform managed Kx Dataview
///       azMode: SINGLE
///       autoUpdate: true
///       segmentConfigurations:
///         - volumeName: ${exampleAwsFinspaceKxVolume.name}
///           dbPaths:
///             - /*
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import an AWS FinSpace Kx Cluster using the `id` (environment ID and cluster name, comma-delimited). For example:
///
/// ```sh
/// $ pulumi import aws:finspace/kxDataview:KxDataview example n3ceo7wqxoxcti5tujqwzs,my-tf-kx-database,my-tf-kx-dataview
/// ```
class KxDataview extends pulumi.CustomResource {
  /// Amazon Resource Name (ARN) identifier of the KX dataview.
  late final pulumi.Output<String> arn;
  /// Whether to apply all the future additions and corrections automatically to the dataview when you ingest new changesets. Defaults to `false`.
  late final pulumi.Output<bool> autoUpdate;
  /// Identifier of the availability zones. If attaching a volume, the volume must be in the same availability zone as the dataview that you are attaching to.
  late final pulumi.Output<String?> availabilityZoneId;
  /// Number of availability zones you want to assign per cluster. Valid values are `SINGLE` (assigns one availability zone per cluster) and `MULTI` (assigns all the availability zones per cluster).
  late final pulumi.Output<String> azMode;
  /// Unique identifier of the changeset of the database that you want to use to ingest data.
  late final pulumi.Output<String?> changesetId;
  /// Timestamp at which the dataview was created in FinSpace. Value determined as epoch time in milliseconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.
  late final pulumi.Output<String> createdTimestamp;
  /// Name of the database where you want to create a dataview.
  late final pulumi.Output<String> databaseName;
  /// Description for the dataview.
  late final pulumi.Output<String?> description;
  /// Unique identifier for the KX environment.
  late final pulumi.Output<String> environmentId;
  /// Last time that the dataview was updated in FinSpace. The value is determined as epoch time in milliseconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.
  late final pulumi.Output<String> lastModifiedTimestamp;
  /// Unique identifier for the dataview.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> name;
  /// Whether to make the dataview writable to perform database maintenance. You cannot create partial writable dataviews; you must provide the entire database path and cannot perform updates, so `autoUpdate` must be `false` when `readWrite` is `true`. You must also use a unique volume, and once a dataview is writable you cannot change it to read-only.
  late final pulumi.Output<bool?> readWrite;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Configuration that contains the database path of the data that you want to place on each selected volume. Each segment must have a unique database path for each volume. If you do not explicitly specify any database path for a volume, they are accessible from the cluster through the default S3/object store segment. See `segmentConfigurations` below.
  late final pulumi.Output<List<Map<String, dynamic>>?> segmentConfigurations;
  /// Status of the dataview.
  late final pulumi.Output<String> status;
  /// Key-value mapping of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [KxDataview].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [KxDataview]. {@macro pulumi_finspace_kx_dataview_kx_dataview_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  KxDataview(
    String name, {
    KxDataviewArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:finspace/kxDataview:KxDataview',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    autoUpdate = registerOutput<bool>('autoUpdate');
    availabilityZoneId = registerOutput<String?>('availabilityZoneId');
    azMode = registerOutput<String>('azMode');
    changesetId = registerOutput<String?>('changesetId');
    createdTimestamp = registerOutput<String>('createdTimestamp');
    databaseName = registerOutput<String>('databaseName');
    description = registerOutput<String?>('description');
    environmentId = registerOutput<String>('environmentId');
    lastModifiedTimestamp = registerOutput<String>('lastModifiedTimestamp');
    this.name = registerOutput<String>('name');
    readWrite = registerOutput<bool?>('readWrite');
    region = registerOutput<String>('region');
    segmentConfigurations = registerOutput<List<Map<String, dynamic>>?>('segmentConfigurations');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }

  /// Gets an existing [KxDataview] resource's state with the given [name] and [id].
  static KxDataview get(
    String name,
    pulumi.Input<String> id, {
    KxDataviewState? state,
  }) {
    return KxDataview._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  KxDataview._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:finspace/kxDataview:KxDataview',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    autoUpdate = registerOutput<bool>('autoUpdate');
    availabilityZoneId = registerOutput<String?>('availabilityZoneId');
    azMode = registerOutput<String>('azMode');
    changesetId = registerOutput<String?>('changesetId');
    createdTimestamp = registerOutput<String>('createdTimestamp');
    databaseName = registerOutput<String>('databaseName');
    description = registerOutput<String?>('description');
    environmentId = registerOutput<String>('environmentId');
    lastModifiedTimestamp = registerOutput<String>('lastModifiedTimestamp');
    this.name = registerOutput<String>('name');
    readWrite = registerOutput<bool?>('readWrite');
    region = registerOutput<String>('region');
    segmentConfigurations = registerOutput<List<Map<String, dynamic>>?>('segmentConfigurations');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
