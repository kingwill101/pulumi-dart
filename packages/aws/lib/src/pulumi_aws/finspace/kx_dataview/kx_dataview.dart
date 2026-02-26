import 'package:pulumi/pulumi.dart';
import '../kx_dataview_segment_configuration/kx_dataview_segment_configuration.dart';
import 'kx_dataview_args.dart';

/// Resource for managing an AWS FinSpace Kx Dataview.
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
/// const example = new aws.finspace.KxDataview("example", {
/// name: "my-tf-kx-dataview",
/// environmentId: exampleAwsFinspaceKxEnvironment.id,
/// databaseName: exampleAwsFinspaceKxDatabase.name,
/// availabilityZoneId: "use1-az2",
/// description: "Terraform managed Kx Dataview",
/// azMode: "SINGLE",
/// autoUpdate: true,
/// segmentConfigurations: [{
/// volumeName: exampleAwsFinspaceKxVolume.name,
/// dbPaths: ["/*"],
/// }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.finspace.KxDataview("example",
/// name="my-tf-kx-dataview",
/// environment_id=example_aws_finspace_kx_environment["id"],
/// database_name=example_aws_finspace_kx_database["name"],
/// availability_zone_id="use1-az2",
/// description="Terraform managed Kx Dataview",
/// az_mode="SINGLE",
/// auto_update=True,
/// segment_configurations=[{
/// "volume_name": example_aws_finspace_kx_volume["name"],
/// "db_paths": ["/*"],
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.FinSpace.KxDataview("example", new()
/// {
/// Name = "my-tf-kx-dataview",
/// EnvironmentId = exampleAwsFinspaceKxEnvironment.Id,
/// DatabaseName = exampleAwsFinspaceKxDatabase.Name,
/// AvailabilityZoneId = "use1-az2",
/// Description = "Terraform managed Kx Dataview",
/// AzMode = "SINGLE",
/// AutoUpdate = true,
/// SegmentConfigurations = new[]
/// {
/// new Aws.FinSpace.Inputs.KxDataviewSegmentConfigurationArgs
/// {
/// VolumeName = exampleAwsFinspaceKxVolume.Name,
/// DbPaths = new[]
/// {
/// "/*",
/// },
/// },
/// },
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
/// _, err := finspace.NewKxDataview(ctx, "example", &finspace.KxDataviewArgs{
/// Name:               pulumi.String("my-tf-kx-dataview"),
/// EnvironmentId:      pulumi.Any(exampleAwsFinspaceKxEnvironment.Id),
/// DatabaseName:       pulumi.Any(exampleAwsFinspaceKxDatabase.Name),
/// AvailabilityZoneId: pulumi.String("use1-az2"),
/// Description:        pulumi.String("Terraform managed Kx Dataview"),
/// AzMode:             pulumi.String("SINGLE"),
/// AutoUpdate:         pulumi.Bool(true),
/// SegmentConfigurations: finspace.KxDataviewSegmentConfigurationArray{
/// &finspace.KxDataviewSegmentConfigurationArgs{
/// VolumeName: pulumi.Any(exampleAwsFinspaceKxVolume.Name),
/// DbPaths: pulumi.StringArray{
/// pulumi.String("/*"),
/// },
/// },
/// },
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
/// import com.pulumi.aws.finspace.KxDataview;
/// import com.pulumi.aws.finspace.KxDataviewArgs;
/// import com.pulumi.aws.finspace.inputs.KxDataviewSegmentConfigurationArgs;
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
/// var example = new KxDataview("example", KxDataviewArgs.builder()
/// .name("my-tf-kx-dataview")
/// .environmentId(exampleAwsFinspaceKxEnvironment.id())
/// .databaseName(exampleAwsFinspaceKxDatabase.name())
/// .availabilityZoneId("use1-az2")
/// .description("Terraform managed Kx Dataview")
/// .azMode("SINGLE")
/// .autoUpdate(true)
/// .segmentConfigurations(KxDataviewSegmentConfigurationArgs.builder()
/// .volumeName(exampleAwsFinspaceKxVolume.name())
/// .dbPaths("/*")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:finspace:KxDataview
/// properties:
/// name: my-tf-kx-dataview
/// environmentId: ${exampleAwsFinspaceKxEnvironment.id}
/// databaseName: ${exampleAwsFinspaceKxDatabase.name}
/// availabilityZoneId: use1-az2
/// description: Terraform managed Kx Dataview
/// azMode: SINGLE
/// autoUpdate: true
/// segmentConfigurations:
/// - volumeName: ${exampleAwsFinspaceKxVolume.name}
/// dbPaths:
/// - /*
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import an AWS FinSpace Kx Cluster using the <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span> (environment ID and cluster name, comma-delimited). For example:
///
/// ```sh
/// $ pulumi import aws:finspace/kxDataview:KxDataview example n3ceo7wqxoxcti5tujqwzs,my-tf-kx-database,my-tf-kx-dataview
/// ```
class KxDataview extends CustomResource {
  /// Amazon Resource Name (ARN) identifier of the KX dataview.
  late final Output<String> arn;

  /// The option to specify whether you want to apply all the future additions and corrections automatically to the dataview, when you ingest new changesets. The default value is false.
  late final Output<bool> autoUpdate;

  /// The identifier of the availability zones. If attaching a volume, the volume must be in the same availability zone as the dataview that you are attaching to.
  late final Output<String?> availabilityZoneId;

  /// The number of availability zones you want to assign per cluster. This can be one of the following:
  /// * `SINGLE` - Assigns one availability zone per cluster.
  /// * `MULTI` - Assigns all the availability zones per cluster.
  late final Output<String> azMode;

  /// A unique identifier of the changeset of the database that you want to use to ingest data.
  late final Output<String?> changesetId;

  /// Timestamp at which the dataview was created in FinSpace. Value determined as epoch time in milliseconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.
  late final Output<String> createdTimestamp;

  /// The name of the database where you want to create a dataview.
  late final Output<String> databaseName;

  /// A description for the dataview.
  late final Output<String?> description;

  /// Unique identifier for the KX environment.
  late final Output<String> environmentId;

  /// The last time that the dataview was updated in FinSpace. The value is determined as epoch time in milliseconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.
  late final Output<String> lastModifiedTimestamp;

  /// A unique identifier for the dataview.
  ///
  /// The following arguments are optional:
  late final Output<String> name;

  /// The option to specify whether you want to make the dataview writable to perform database maintenance. The following are some considerations related to writable dataviews.
  /// * You cannot create partial writable dataviews. When you create writeable dataviews you must provide the entire database path. You cannot perform updates on a writeable dataview. Hence, <span pulumi-lang-nodejs="`autoUpdate`" pulumi-lang-dotnet="`AutoUpdate`" pulumi-lang-go="`autoUpdate`" pulumi-lang-python="`auto_update`" pulumi-lang-yaml="`autoUpdate`" pulumi-lang-java="`autoUpdate`">`auto_update`</span> must be set as <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span> if <span pulumi-lang-nodejs="`readWrite`" pulumi-lang-dotnet="`ReadWrite`" pulumi-lang-go="`readWrite`" pulumi-lang-python="`read_write`" pulumi-lang-yaml="`readWrite`" pulumi-lang-java="`readWrite`">`read_write`</span> is <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> for a dataview.
  /// * You must also use a unique volume for creating a writeable dataview. So, if you choose a volume that is already in use by another dataview, the dataview creation fails.
  /// * Once you create a dataview as writeable, you cannot change it to read-only. So, you cannot update the <span pulumi-lang-nodejs="`readWrite`" pulumi-lang-dotnet="`ReadWrite`" pulumi-lang-go="`readWrite`" pulumi-lang-python="`read_write`" pulumi-lang-yaml="`readWrite`" pulumi-lang-java="`readWrite`">`read_write`</span> parameter later.
  late final Output<bool?> readWrite;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The configuration that contains the database path of the data that you want to place on each selected volume. Each segment must have a unique database path for each volume. If you do not explicitly specify any database path for a volume, they are accessible from the cluster through the default S3/object store segment. See<span pulumi-lang-nodejs=" segmentConfigurations " pulumi-lang-dotnet=" SegmentConfigurations " pulumi-lang-go=" segmentConfigurations " pulumi-lang-python=" segment_configurations " pulumi-lang-yaml=" segmentConfigurations " pulumi-lang-java=" segmentConfigurations "> segment_configurations </span>below.
  late final Output<List<KxDataviewSegmentConfiguration>?>
      segmentConfigurations;
  late final Output<String> status;

  /// Key-value mapping of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  KxDataview(
    String name, {
    KxDataviewArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:finspace/kxDataview:KxDataview',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.autoUpdate = Output.createUnknown<bool>();
    this.availabilityZoneId = Output.createUnknown<String?>();
    this.azMode = Output.createUnknown<String>();
    this.changesetId = Output.createUnknown<String?>();
    this.createdTimestamp = Output.createUnknown<String>();
    this.databaseName = Output.createUnknown<String>();
    this.description = Output.createUnknown<String?>();
    this.environmentId = Output.createUnknown<String>();
    this.lastModifiedTimestamp = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.readWrite = Output.createUnknown<bool?>();
    this.region = Output.createUnknown<String>();
    this.segmentConfigurations =
        Output.createUnknown<List<KxDataviewSegmentConfiguration>?>();
    this.status = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
  }
}
