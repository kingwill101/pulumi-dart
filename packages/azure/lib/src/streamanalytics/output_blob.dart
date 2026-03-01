import 'package:pulumi/pulumi.dart' as pulumi;
import 'output_blob_args.dart';
import 'output_blob_serialization.dart';

/// Manages a Stream Analytics Output to Blob Storage.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const exampleResourceGroup = new azure.core.ResourceGroup("example", {
///     name: "rg-example",
///     location: "West Europe",
/// });
/// const example = azure.streamanalytics.getJobOutput({
///     name: "example-job",
///     resourceGroupName: exampleResourceGroup.name,
/// });
/// const exampleAccount = new azure.storage.Account("example", {
///     name: "examplesa",
///     resourceGroupName: exampleResourceGroup.name,
///     location: exampleResourceGroup.location,
///     accountTier: "Standard",
///     accountReplicationType: "LRS",
/// });
/// const exampleContainer = new azure.storage.Container("example", {
///     name: "example",
///     storageAccountName: exampleAccount.name,
///     containerAccessType: "private",
/// });
/// const exampleOutputBlob = new azure.streamanalytics.OutputBlob("example", {
///     name: "output-to-blob-storage",
///     streamAnalyticsJobName: example.apply(example => example.name),
///     resourceGroupName: example.apply(example => example.resourceGroupName),
///     storageAccountName: exampleAccount.name,
///     storageAccountKey: exampleAccount.primaryAccessKey,
///     storageContainerName: exampleContainer.name,
///     pathPattern: "some-pattern",
///     dateFormat: "yyyy-MM-dd",
///     timeFormat: "HH",
///     serialization: {
///         type: "Csv",
///         encoding: "UTF8",
///         fieldDelimiter: ",",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example_resource_group = azure.core.ResourceGroup("example",
///     name="rg-example",
///     location="West Europe")
/// example = azure.streamanalytics.get_job_output(name="example-job",
///     resource_group_name=example_resource_group.name)
/// example_account = azure.storage.Account("example",
///     name="examplesa",
///     resource_group_name=example_resource_group.name,
///     location=example_resource_group.location,
///     account_tier="Standard",
///     account_replication_type="LRS")
/// example_container = azure.storage.Container("example",
///     name="example",
///     storage_account_name=example_account.name,
///     container_access_type="private")
/// example_output_blob = azure.streamanalytics.OutputBlob("example",
///     name="output-to-blob-storage",
///     stream_analytics_job_name=example.name,
///     resource_group_name=example.resource_group_name,
///     storage_account_name=example_account.name,
///     storage_account_key=example_account.primary_access_key,
///     storage_container_name=example_container.name,
///     path_pattern="some-pattern",
///     date_format="yyyy-MM-dd",
///     time_format="HH",
///     serialization={
///         "type": "Csv",
///         "encoding": "UTF8",
///         "field_delimiter": ",",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleResourceGroup = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "rg-example",
///         Location = "West Europe",
///     });
///
///     var example = Azure.StreamAnalytics.GetJob.Invoke(new()
///     {
///         Name = "example-job",
///         ResourceGroupName = exampleResourceGroup.Name,
///     });
///
///     var exampleAccount = new Azure.Storage.Account("example", new()
///     {
///         Name = "examplesa",
///         ResourceGroupName = exampleResourceGroup.Name,
///         Location = exampleResourceGroup.Location,
///         AccountTier = "Standard",
///         AccountReplicationType = "LRS",
///     });
///
///     var exampleContainer = new Azure.Storage.Container("example", new()
///     {
///         Name = "example",
///         StorageAccountName = exampleAccount.Name,
///         ContainerAccessType = "private",
///     });
///
///     var exampleOutputBlob = new Azure.StreamAnalytics.OutputBlob("example", new()
///     {
///         Name = "output-to-blob-storage",
///         StreamAnalyticsJobName = example.Apply(getJobResult => getJobResult.Name),
///         ResourceGroupName = example.Apply(getJobResult => getJobResult.ResourceGroupName),
///         StorageAccountName = exampleAccount.Name,
///         StorageAccountKey = exampleAccount.PrimaryAccessKey,
///         StorageContainerName = exampleContainer.Name,
///         PathPattern = "some-pattern",
///         DateFormat = "yyyy-MM-dd",
///         TimeFormat = "HH",
///         Serialization = new Azure.StreamAnalytics.Inputs.OutputBlobSerializationArgs
///         {
///             Type = "Csv",
///             Encoding = "UTF8",
///             FieldDelimiter = ",",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/storage"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/streamanalytics"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		exampleResourceGroup, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("rg-example"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example := streamanalytics.LookupJobOutput(ctx, streamanalytics.GetJobOutputArgs{
/// 			Name:              pulumi.String("example-job"),
/// 			ResourceGroupName: exampleResourceGroup.Name,
/// 		}, nil)
/// 		exampleAccount, err := storage.NewAccount(ctx, "example", &storage.AccountArgs{
/// 			Name:                   pulumi.String("examplesa"),
/// 			ResourceGroupName:      exampleResourceGroup.Name,
/// 			Location:               exampleResourceGroup.Location,
/// 			AccountTier:            pulumi.String("Standard"),
/// 			AccountReplicationType: pulumi.String("LRS"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleContainer, err := storage.NewContainer(ctx, "example", &storage.ContainerArgs{
/// 			Name:                pulumi.String("example"),
/// 			StorageAccountName:  exampleAccount.Name,
/// 			ContainerAccessType: pulumi.String("private"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = streamanalytics.NewOutputBlob(ctx, "example", &streamanalytics.OutputBlobArgs{
/// 			Name: pulumi.String("output-to-blob-storage"),
/// 			StreamAnalyticsJobName: pulumi.String(example.ApplyT(func(example streamanalytics.GetJobResult) (*string, error) {
/// 				return &example.Name, nil
/// 			}).(pulumi.StringPtrOutput)),
/// 			ResourceGroupName: pulumi.String(example.ApplyT(func(example streamanalytics.GetJobResult) (*string, error) {
/// 				return &example.ResourceGroupName, nil
/// 			}).(pulumi.StringPtrOutput)),
/// 			StorageAccountName:   exampleAccount.Name,
/// 			StorageAccountKey:    exampleAccount.PrimaryAccessKey,
/// 			StorageContainerName: exampleContainer.Name,
/// 			PathPattern:          pulumi.String("some-pattern"),
/// 			DateFormat:           pulumi.String("yyyy-MM-dd"),
/// 			TimeFormat:           pulumi.String("HH"),
/// 			Serialization: &streamanalytics.OutputBlobSerializationArgs{
/// 				Type:           pulumi.String("Csv"),
/// 				Encoding:       pulumi.String("UTF8"),
/// 				FieldDelimiter: pulumi.String(","),
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
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.streamanalytics.StreamanalyticsFunctions;
/// import com.pulumi.azure.streamanalytics.inputs.GetJobArgs;
/// import com.pulumi.azure.storage.Account;
/// import com.pulumi.azure.storage.AccountArgs;
/// import com.pulumi.azure.storage.Container;
/// import com.pulumi.azure.storage.ContainerArgs;
/// import com.pulumi.azure.streamanalytics.OutputBlob;
/// import com.pulumi.azure.streamanalytics.OutputBlobArgs;
/// import com.pulumi.azure.streamanalytics.inputs.OutputBlobSerializationArgs;
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
///         var exampleResourceGroup = new ResourceGroup("exampleResourceGroup", ResourceGroupArgs.builder()
///             .name("rg-example")
///             .location("West Europe")
///             .build());
///
///         final var example = StreamanalyticsFunctions.getJob(GetJobArgs.builder()
///             .name("example-job")
///             .resourceGroupName(exampleResourceGroup.name())
///             .build());
///
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("examplesa")
///             .resourceGroupName(exampleResourceGroup.name())
///             .location(exampleResourceGroup.location())
///             .accountTier("Standard")
///             .accountReplicationType("LRS")
///             .build());
///
///         var exampleContainer = new Container("exampleContainer", ContainerArgs.builder()
///             .name("example")
///             .storageAccountName(exampleAccount.name())
///             .containerAccessType("private")
///             .build());
///
///         var exampleOutputBlob = new OutputBlob("exampleOutputBlob", OutputBlobArgs.builder()
///             .name("output-to-blob-storage")
///             .streamAnalyticsJobName(example.applyValue(_example -> _example.name()))
///             .resourceGroupName(example.applyValue(_example -> _example.resourceGroupName()))
///             .storageAccountName(exampleAccount.name())
///             .storageAccountKey(exampleAccount.primaryAccessKey())
///             .storageContainerName(exampleContainer.name())
///             .pathPattern("some-pattern")
///             .dateFormat("yyyy-MM-dd")
///             .timeFormat("HH")
///             .serialization(OutputBlobSerializationArgs.builder()
///                 .type("Csv")
///                 .encoding("UTF8")
///                 .fieldDelimiter(",")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleResourceGroup:
///     type: azure:core:ResourceGroup
///     name: example
///     properties:
///       name: rg-example
///       location: West Europe
///   exampleAccount:
///     type: azure:storage:Account
///     name: example
///     properties:
///       name: examplesa
///       resourceGroupName: ${exampleResourceGroup.name}
///       location: ${exampleResourceGroup.location}
///       accountTier: Standard
///       accountReplicationType: LRS
///   exampleContainer:
///     type: azure:storage:Container
///     name: example
///     properties:
///       name: example
///       storageAccountName: ${exampleAccount.name}
///       containerAccessType: private
///   exampleOutputBlob:
///     type: azure:streamanalytics:OutputBlob
///     name: example
///     properties:
///       name: output-to-blob-storage
///       streamAnalyticsJobName: ${example.name}
///       resourceGroupName: ${example.resourceGroupName}
///       storageAccountName: ${exampleAccount.name}
///       storageAccountKey: ${exampleAccount.primaryAccessKey}
///       storageContainerName: ${exampleContainer.name}
///       pathPattern: some-pattern
///       dateFormat: yyyy-MM-dd
///       timeFormat: HH
///       serialization:
///         type: Csv
///         encoding: UTF8
///         fieldDelimiter: ','
/// variables:
///   example:
///     fn::invoke:
///       function: azure:streamanalytics:getJob
///       arguments:
///         name: example-job
///         resourceGroupName: ${exampleResourceGroup.name}
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.StreamAnalytics` - 2021-10-01-preview
///
/// ## Import
///
/// Stream Analytics Outputs to Blob Storage can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:streamanalytics/outputBlob:OutputBlob example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.StreamAnalytics/streamingJobs/job1/outputs/output1
/// ```
class OutputBlob extends pulumi.CustomResource {
  /// The authentication mode for the Stream Output. Possible values are `Msi` and `ConnectionString`. Defaults to `ConnectionString`.
  late final pulumi.Output<String?> authenticationMode;
  /// The maximum wait time per batch in `hh:mm:ss` e.g. `00:02:00` for two minutes.
  late final pulumi.Output<String?> batchMaxWaitTime;
  /// The minimum number of rows per batch (must be between `0` and `1000000`).
  late final pulumi.Output<int?> batchMinRows;
  /// Determines whether blob blocks are either committed automatically or appended. Possible values are `Append` and `Once`. Defaults to `Append`.
  late final pulumi.Output<String?> blobWriteMode;
  /// The date format. Wherever `{date}` appears in `path_pattern`, the value of this property is used as the date format instead.
  late final pulumi.Output<String> dateFormat;
  /// The name of the Stream Output. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The blob path pattern. Not a regular expression. It represents a pattern against which blob names will be matched to determine whether or not they should be included as input or output to the job.
  late final pulumi.Output<String> pathPattern;
  /// The name of the Resource Group where the Stream Analytics Job exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// A `serialization` block as defined below.
  late final pulumi.Output<OutputBlobSerialization> serialization;
  /// The Access Key which should be used to connect to this Storage Account.
  late final pulumi.Output<String?> storageAccountKey;
  /// The name of the Storage Account.
  late final pulumi.Output<String> storageAccountName;
  /// The name of the Container within the Storage Account.
  late final pulumi.Output<String> storageContainerName;
  /// The name of the Stream Analytics Job. Changing this forces a new resource to be created.
  late final pulumi.Output<String> streamAnalyticsJobName;
  /// The time format. Wherever `{time}` appears in `path_pattern`, the value of this property is used as the time format instead.
  late final pulumi.Output<String> timeFormat;

  /// Creates a new [OutputBlob].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [OutputBlob]. {@macro pulumi_streamanalytics_output_blob_output_blob_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  OutputBlob(
    String name, {
    OutputBlobArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:streamanalytics/outputBlob:OutputBlob',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.authenticationMode = registerOutput<String?>('authenticationMode');
    this.batchMaxWaitTime = registerOutput<String?>('batchMaxWaitTime');
    this.batchMinRows = registerOutput<int?>('batchMinRows');
    this.blobWriteMode = registerOutput<String?>('blobWriteMode');
    this.dateFormat = registerOutput<String>('dateFormat');
    this.name = registerOutput<String>('name');
    this.pathPattern = registerOutput<String>('pathPattern');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.serialization = registerOutput<OutputBlobSerialization>('serialization');
    this.storageAccountKey = registerOutput<String?>('storageAccountKey');
    this.storageAccountName = registerOutput<String>('storageAccountName');
    this.storageContainerName = registerOutput<String>('storageContainerName');
    this.streamAnalyticsJobName = registerOutput<String>('streamAnalyticsJobName');
    this.timeFormat = registerOutput<String>('timeFormat');
  }
}
