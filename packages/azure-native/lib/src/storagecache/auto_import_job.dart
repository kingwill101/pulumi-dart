import 'package:pulumi/pulumi.dart' as pulumi;
import 'auto_import_job_args.dart';
import 'auto_import_job_response_blob_sync_events.dart';
import 'system_data_response.dart';

/// An auto import job instance. Follows Azure Resource Manager standards: https://github.com/Azure/azure-resource-manager-rpc/blob/master/v1.0/resource-api-reference.md
///
/// Uses Azure REST API version 2025-07-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### autoImportJobs_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var autoImportJob = new AzureNative.StorageCache.AutoImportJob("autoImportJob", new()
///     {
///         AdminStatus = AzureNative.StorageCache.AdminStatus.Enable,
///         AmlFilesystemName = "fs1",
///         AutoImportJobName = "autojob1",
///         AutoImportPrefixes = new[]
///         {
///             "/",
///         },
///         ConflictResolutionMode = AzureNative.StorageCache.ConflictResolutionMode.Skip,
///         EnableDeletions = false,
///         Location = "eastus",
///         MaximumErrors = 0,
///         ResourceGroupName = "scgroup",
///         Tags =
///         {
///             { "Dept", "ContosoAds" },
///         },
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	storagecache "github.com/pulumi/pulumi-azure-native-sdk/storagecache/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := storagecache.NewAutoImportJob(ctx, "autoImportJob", &storagecache.AutoImportJobArgs{
/// 			AdminStatus:       pulumi.String(storagecache.AdminStatusEnable),
/// 			AmlFilesystemName: pulumi.String("fs1"),
/// 			AutoImportJobName: pulumi.String("autojob1"),
/// 			AutoImportPrefixes: pulumi.StringArray{
/// 				pulumi.String("/"),
/// 			},
/// 			ConflictResolutionMode: pulumi.String(storagecache.ConflictResolutionModeSkip),
/// 			EnableDeletions:        pulumi.Bool(false),
/// 			Location:               pulumi.String("eastus"),
/// 			MaximumErrors:          pulumi.Float64(0),
/// 			ResourceGroupName:      pulumi.String("scgroup"),
/// 			Tags: pulumi.StringMap{
/// 				"Dept": pulumi.String("ContosoAds"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.storagecache.AutoImportJob;
/// import com.pulumi.azurenative.storagecache.AutoImportJobArgs;
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
///         var autoImportJob = new AutoImportJob("autoImportJob", AutoImportJobArgs.builder()
///             .adminStatus("Enable")
///             .amlFilesystemName("fs1")
///             .autoImportJobName("autojob1")
///             .autoImportPrefixes("/")
///             .conflictResolutionMode("Skip")
///             .enableDeletions(false)
///             .location("eastus")
///             .maximumErrors(0.0)
///             .resourceGroupName("scgroup")
///             .tags(Map.of("Dept", "ContosoAds"))
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const autoImportJob = new azure_native.storagecache.AutoImportJob("autoImportJob", {
///     adminStatus: azure_native.storagecache.AdminStatus.Enable,
///     amlFilesystemName: "fs1",
///     autoImportJobName: "autojob1",
///     autoImportPrefixes: ["/"],
///     conflictResolutionMode: azure_native.storagecache.ConflictResolutionMode.Skip,
///     enableDeletions: false,
///     location: "eastus",
///     maximumErrors: 0,
///     resourceGroupName: "scgroup",
///     tags: {
///         Dept: "ContosoAds",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// auto_import_job = azure_native.storagecache.AutoImportJob("autoImportJob",
///     admin_status=azure_native.storagecache.AdminStatus.ENABLE,
///     aml_filesystem_name="fs1",
///     auto_import_job_name="autojob1",
///     auto_import_prefixes=["/"],
///     conflict_resolution_mode=azure_native.storagecache.ConflictResolutionMode.SKIP,
///     enable_deletions=False,
///     location="eastus",
///     maximum_errors=0,
///     resource_group_name="scgroup",
///     tags={
///         "Dept": "ContosoAds",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   autoImportJob:
///     type: azure-native:storagecache:AutoImportJob
///     properties:
///       adminStatus: Enable
///       amlFilesystemName: fs1
///       autoImportJobName: autojob1
///       autoImportPrefixes:
///         - /
///       conflictResolutionMode: Skip
///       enableDeletions: false
///       location: eastus
///       maximumErrors: 0
///       resourceGroupName: scgroup
///       tags:
///         Dept: ContosoAds
///
/// ```
///
/// {{% /example %}}
/// {{% /examples %}}
///
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:storagecache:AutoImportJob autojob1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.StorageCache/amlFilesystems/{amlFilesystemName}/autoImportJobs/{autoImportJobName}
/// ```
class AutoImportJob extends pulumi.CustomResource {
  /// The administrative status of the auto import job. Possible values: 'Enable', 'Disable'. Passing in a value of 'Disable' will disable the current active auto import job. By default it is set to 'Enable'.
  late final pulumi.Output<String?> adminStatus;
  /// An array of blob paths/prefixes that get auto imported to the cluster namespace. It has '/' as the default value. Number of maximum allowed paths is 100.
  late final pulumi.Output<List<String>?> autoImportPrefixes;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The storage account blob change feed status of the auto import job.
  late final pulumi.Output<AutoImportJobResponseBlobSyncEvents> blobSyncEvents;
  /// How the auto import job will handle conflicts. For example, if the auto import job is trying to bring in a directory, but a file is at that path, how it handles it. Fail indicates that the auto import job should stop immediately and not do anything with the conflict. Skip indicates that it should pass over the conflict. OverwriteIfDirty causes the auto import job to delete and re-import the file or directory if it is a conflicting type, is dirty, or is currently released. OverwriteAlways extends OverwriteIfDirty to include releasing files that had been restored but were not dirty. Please reference https://learn.microsoft.com/en-us/azure/azure-managed-lustre/blob-integration#conflict-resolution-mode for a thorough explanation of these resolution modes.
  late final pulumi.Output<String?> conflictResolutionMode;
  /// Whether or not to enable deletions during auto import. This only affects overwrite-dirty.
  late final pulumi.Output<bool?> enableDeletions;
  /// Number of directories imported during full scan.
  late final pulumi.Output<double> importedDirectories;
  /// Number of files imported during full scan.
  late final pulumi.Output<double> importedFiles;
  /// Number of symlinks imported during full scan.
  late final pulumi.Output<double> importedSymlinks;
  /// The time (in UTC) of the last completed auto import job.
  late final pulumi.Output<String> lastCompletionTimeUTC;
  /// The time (in UTC) the latest auto import job started.
  late final pulumi.Output<String> lastStartedTimeUTC;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// Total non-conflict-oriented errors (e.g., OS errors) Import will tolerate before exiting with failure. -1 means infinite. 0 means exit immediately on any error.
  late final pulumi.Output<double?> maximumErrors;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Number of preexisting directories during full scan.
  late final pulumi.Output<double> preexistingDirectories;
  /// Number of preexisting files during full scan.
  late final pulumi.Output<double> preexistingFiles;
  /// Number of preexisting symlinks during full scan.
  late final pulumi.Output<double> preexistingSymlinks;
  /// ARM provisioning state.
  late final pulumi.Output<String> provisioningState;
  /// Rate of blob import during full scan.
  late final pulumi.Output<double> rateOfBlobImport;
  /// Rate of blobs walked during full scan.
  late final pulumi.Output<double> rateOfBlobWalk;
  /// Date and time of when the full scan ended.
  late final pulumi.Output<String> scanEndTime;
  /// Date and time of when the currently running full scan began.
  late final pulumi.Output<String> scanStartTime;
  /// The state of the auto import operation.
  late final pulumi.Output<String> state;
  /// Server-defined status code for auto import job.
  late final pulumi.Output<String> statusCode;
  /// Server-defined status message for auto import job.
  late final pulumi.Output<String> statusMessage;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Total number of blobs imported during full scan.
  late final pulumi.Output<double> totalBlobsImported;
  /// Total number of blobs walked during full scan.
  late final pulumi.Output<double> totalBlobsWalked;
  /// Total conflicts encountered during full scan.
  late final pulumi.Output<double> totalConflicts;
  /// Total errors encountered during full scan.
  late final pulumi.Output<double> totalErrors;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [AutoImportJob].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AutoImportJob]. {@macro pulumi_storagecache_auto_import_job_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AutoImportJob(
    String name, {
    AutoImportJobArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:storagecache:AutoImportJob',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.adminStatus = registerOutput<String?>('adminStatus');
    this.autoImportPrefixes = registerOutput<List<String>?>('autoImportPrefixes');
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.blobSyncEvents = registerOutput<AutoImportJobResponseBlobSyncEvents>('blobSyncEvents');
    this.conflictResolutionMode = registerOutput<String?>('conflictResolutionMode');
    this.enableDeletions = registerOutput<bool?>('enableDeletions');
    this.importedDirectories = registerOutput<double>('importedDirectories');
    this.importedFiles = registerOutput<double>('importedFiles');
    this.importedSymlinks = registerOutput<double>('importedSymlinks');
    this.lastCompletionTimeUTC = registerOutput<String>('lastCompletionTimeUTC');
    this.lastStartedTimeUTC = registerOutput<String>('lastStartedTimeUTC');
    this.location = registerOutput<String>('location');
    this.maximumErrors = registerOutput<double?>('maximumErrors');
    this.name = registerOutput<String>('name');
    this.preexistingDirectories = registerOutput<double>('preexistingDirectories');
    this.preexistingFiles = registerOutput<double>('preexistingFiles');
    this.preexistingSymlinks = registerOutput<double>('preexistingSymlinks');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.rateOfBlobImport = registerOutput<double>('rateOfBlobImport');
    this.rateOfBlobWalk = registerOutput<double>('rateOfBlobWalk');
    this.scanEndTime = registerOutput<String>('scanEndTime');
    this.scanStartTime = registerOutput<String>('scanStartTime');
    this.state = registerOutput<String>('state');
    this.statusCode = registerOutput<String>('statusCode');
    this.statusMessage = registerOutput<String>('statusMessage');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.totalBlobsImported = registerOutput<double>('totalBlobsImported');
    this.totalBlobsWalked = registerOutput<double>('totalBlobsWalked');
    this.totalConflicts = registerOutput<double>('totalConflicts');
    this.totalErrors = registerOutput<double>('totalErrors');
    this.type = registerOutput<String>('type');
  }
}
