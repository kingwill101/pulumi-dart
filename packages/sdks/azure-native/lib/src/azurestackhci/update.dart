import 'package:pulumi/pulumi.dart' as pulumi;
import 'system_data_response.dart';
import 'update_args.dart';

/// Update details
///
/// Uses Azure REST API version 2024-04-01. In version 2.x of the Azure Native provider, it used API version 2023-03-01.
///
/// Other available API versions: 2022-12-15-preview, 2023-02-01, 2023-03-01, 2023-06-01, 2023-08-01, 2023-08-01-preview, 2023-11-01-preview, 2024-01-01, 2024-02-15-preview, 2024-09-01-preview, 2024-12-01-preview, 2025-02-01-preview, 2025-09-15-preview, 2025-10-01, 2025-11-01-preview, 2025-12-01-preview, 2026-02-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native azurestackhci [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Put a specific update
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var update = new AzureNative.AzureStackHCI.Update("update", new()
///     {
///         AdditionalProperties = "additional properties",
///         AvailabilityType = AzureNative.AzureStackHCI.AvailabilityType.Local,
///         ClusterName = "testcluster",
///         Description = "AzS Update 4.2203.2.32",
///         DisplayName = "AzS Update - 4.2203.2.32",
///         InstalledDate = "2022-04-06T14:08:18.254Z",
///         NotifyMessage = "Brief message with instructions for updates of AvailabilityType Notify",
///         PackagePath = "\\\\SU1FileServer\\SU1_Infrastructure_2\\Updates\\Packages\\Microsoft4.2203.2.32",
///         PackageSizeInMb = 18858,
///         PackageType = "Infrastructure",
///         Prerequisites = new[]
///         {
///             new AzureNative.AzureStackHCI.Inputs.UpdatePrerequisiteArgs
///             {
///                 PackageName = "update package name",
///                 UpdateType = "update type",
///                 Version = "prerequisite version",
///             },
///         },
///         ProgressPercentage = 0,
///         Publisher = "Microsoft",
///         ReleaseLink = "https://docs.microsoft.com/azure-stack/operator/release-notes?view=azs-2203",
///         ResourceGroupName = "testrg",
///         State = AzureNative.AzureStackHCI.State.Installed,
///         UpdateName = "Microsoft4.2203.2.32",
///         Version = "4.2203.2.32",
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
/// 	azurestackhci "github.com/pulumi/pulumi-azure-native-sdk/azurestackhci/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := azurestackhci.NewUpdate(ctx, "update", &azurestackhci.UpdateArgs{
/// 			AdditionalProperties: pulumi.String("additional properties"),
/// 			AvailabilityType:     pulumi.String(azurestackhci.AvailabilityTypeLocal),
/// 			ClusterName:          pulumi.String("testcluster"),
/// 			Description:          pulumi.String("AzS Update 4.2203.2.32"),
/// 			DisplayName:          pulumi.String("AzS Update - 4.2203.2.32"),
/// 			InstalledDate:        pulumi.String("2022-04-06T14:08:18.254Z"),
/// 			NotifyMessage:        pulumi.String("Brief message with instructions for updates of AvailabilityType Notify"),
/// 			PackagePath:          pulumi.String("\\\\SU1FileServer\\SU1_Infrastructure_2\\Updates\\Packages\\Microsoft4.2203.2.32"),
/// 			PackageSizeInMb:      pulumi.Float64(18858),
/// 			PackageType:          pulumi.String("Infrastructure"),
/// 			Prerequisites: azurestackhci.UpdatePrerequisiteArray{
/// 				&azurestackhci.UpdatePrerequisiteArgs{
/// 					PackageName: pulumi.String("update package name"),
/// 					UpdateType:  pulumi.String("update type"),
/// 					Version:     pulumi.String("prerequisite version"),
/// 				},
/// 			},
/// 			ProgressPercentage: pulumi.Float64(0),
/// 			Publisher:          pulumi.String("Microsoft"),
/// 			ReleaseLink:        pulumi.String("https://docs.microsoft.com/azure-stack/operator/release-notes?view=azs-2203"),
/// 			ResourceGroupName:  pulumi.String("testrg"),
/// 			State:              pulumi.String(azurestackhci.StateInstalled),
/// 			UpdateName:         pulumi.String("Microsoft4.2203.2.32"),
/// 			Version:            pulumi.String("4.2203.2.32"),
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
/// import com.pulumi.azurenative.azurestackhci.Update;
/// import com.pulumi.azurenative.azurestackhci.UpdateArgs;
/// import com.pulumi.azurenative.azurestackhci.inputs.UpdatePrerequisiteArgs;
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
///         var update = new Update("update", UpdateArgs.builder()
///             .additionalProperties("additional properties")
///             .availabilityType("Local")
///             .clusterName("testcluster")
///             .description("AzS Update 4.2203.2.32")
///             .displayName("AzS Update - 4.2203.2.32")
///             .installedDate("2022-04-06T14:08:18.254Z")
///             .notifyMessage("Brief message with instructions for updates of AvailabilityType Notify")
///             .packagePath("\\\\SU1FileServer\\SU1_Infrastructure_2\\Updates\\Packages\\Microsoft4.2203.2.32")
///             .packageSizeInMb(18858.0)
///             .packageType("Infrastructure")
///             .prerequisites(UpdatePrerequisiteArgs.builder()
///                 .packageName("update package name")
///                 .updateType("update type")
///                 .version("prerequisite version")
///                 .build())
///             .progressPercentage(0.0)
///             .publisher("Microsoft")
///             .releaseLink("https://docs.microsoft.com/azure-stack/operator/release-notes?view=azs-2203")
///             .resourceGroupName("testrg")
///             .state("Installed")
///             .updateName("Microsoft4.2203.2.32")
///             .version("4.2203.2.32")
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
/// const update = new azure_native.azurestackhci.Update("update", {
///     additionalProperties: "additional properties",
///     availabilityType: azure_native.azurestackhci.AvailabilityType.Local,
///     clusterName: "testcluster",
///     description: "AzS Update 4.2203.2.32",
///     displayName: "AzS Update - 4.2203.2.32",
///     installedDate: "2022-04-06T14:08:18.254Z",
///     notifyMessage: "Brief message with instructions for updates of AvailabilityType Notify",
///     packagePath: "\\\\SU1FileServer\\SU1_Infrastructure_2\\Updates\\Packages\\Microsoft4.2203.2.32",
///     packageSizeInMb: 18858,
///     packageType: "Infrastructure",
///     prerequisites: [{
///         packageName: "update package name",
///         updateType: "update type",
///         version: "prerequisite version",
///     }],
///     progressPercentage: 0,
///     publisher: "Microsoft",
///     releaseLink: "https://docs.microsoft.com/azure-stack/operator/release-notes?view=azs-2203",
///     resourceGroupName: "testrg",
///     state: azure_native.azurestackhci.State.Installed,
///     updateName: "Microsoft4.2203.2.32",
///     version: "4.2203.2.32",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// update = azure_native.azurestackhci.Update("update",
///     additional_properties="additional properties",
///     availability_type=azure_native.azurestackhci.AvailabilityType.LOCAL,
///     cluster_name="testcluster",
///     description="AzS Update 4.2203.2.32",
///     display_name="AzS Update - 4.2203.2.32",
///     installed_date="2022-04-06T14:08:18.254Z",
///     notify_message="Brief message with instructions for updates of AvailabilityType Notify",
///     package_path="\\\\SU1FileServer\\SU1_Infrastructure_2\\Updates\\Packages\\Microsoft4.2203.2.32",
///     package_size_in_mb=18858,
///     package_type="Infrastructure",
///     prerequisites=[{
///         "package_name": "update package name",
///         "update_type": "update type",
///         "version": "prerequisite version",
///     }],
///     progress_percentage=0,
///     publisher="Microsoft",
///     release_link="https://docs.microsoft.com/azure-stack/operator/release-notes?view=azs-2203",
///     resource_group_name="testrg",
///     state=azure_native.azurestackhci.State.INSTALLED,
///     update_name="Microsoft4.2203.2.32",
///     version="4.2203.2.32")
///
/// ```
///
/// ```yaml
/// resources:
///   update:
///     type: azure-native:azurestackhci:Update
///     properties:
///       additionalProperties: additional properties
///       availabilityType: Local
///       clusterName: testcluster
///       description: AzS Update 4.2203.2.32
///       displayName: AzS Update - 4.2203.2.32
///       installedDate: 2022-04-06T14:08:18.254Z
///       notifyMessage: Brief message with instructions for updates of AvailabilityType Notify
///       packagePath: \\SU1FileServer\SU1_Infrastructure_2\Updates\Packages\Microsoft4.2203.2.32
///       packageSizeInMb: 18858
///       packageType: Infrastructure
///       prerequisites:
///         - packageName: update package name
///           updateType: update type
///           version: prerequisite version
///       progressPercentage: 0
///       publisher: Microsoft
///       releaseLink: https://docs.microsoft.com/azure-stack/operator/release-notes?view=azs-2203
///       resourceGroupName: testrg
///       state: Installed
///       updateName: Microsoft4.2203.2.32
///       version: 4.2203.2.32
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
/// $ pulumi import azure-native:azurestackhci:Update Microsoft4.2203.2.32 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AzureStackHCI/clusters/{clusterName}/updates/{updateName}
/// ```
class Update extends pulumi.CustomResource {
  /// Extensible KV pairs serialized as a string. This is currently used to report the stamp OEM family and hardware model information when an update is flagged as Invalid for the stamp based on OEM type.
  late final pulumi.Output<String?> additionalProperties;

  /// Indicates the way the update content can be downloaded.
  late final pulumi.Output<String?> availabilityType;

  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Description of the update.
  late final pulumi.Output<String?> description;

  /// Display name of the Update
  late final pulumi.Output<String?> displayName;

  /// Last time the package-specific checks were run.
  late final pulumi.Output<String?> healthCheckDate;

  /// Date that the update was installed.
  late final pulumi.Output<String?> installedDate;

  /// The geo-location where the resource lives
  late final pulumi.Output<String?> location;

  /// Minimum Sbe Version of the update.
  late final pulumi.Output<String?> minSbeVersionRequired;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Brief message with instructions for updates of AvailabilityType Notify.
  late final pulumi.Output<String?> notifyMessage;

  /// Path where the update package is available.
  late final pulumi.Output<String?> packagePath;

  /// Size of the package. This value is a combination of the size from update metadata and size of the payload that results from the live scan operation for OS update content.
  late final pulumi.Output<double?> packageSizeInMb;

  /// Customer-visible type of the update.
  late final pulumi.Output<String?> packageType;

  /// If update State is HasPrerequisite, this property contains an array of objects describing prerequisite updates before installing this update. Otherwise, it is empty.
  late final pulumi.Output<List<Map<String, dynamic>>?> prerequisites;

  /// Progress percentage of ongoing operation. Currently this property is only valid when the update is in the Downloading state, where it maps to how much of the update content has been downloaded.
  late final pulumi.Output<double?> progressPercentage;

  /// Provisioning state of the Updates proxy resource.
  late final pulumi.Output<String> provisioningState;

  /// Publisher of the update package.
  late final pulumi.Output<String?> publisher;

  /// Link to release notes for the update.
  late final pulumi.Output<String?> releaseLink;

  /// State of the update as it relates to this stamp.
  late final pulumi.Output<String?> state;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Version of the update.
  late final pulumi.Output<String?> version;

  /// Creates a new [Update].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Update]. {@macro pulumi_azurestackhci_update_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Update(String name, {UpdateArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'azure-native:azurestackhci:Update',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    additionalProperties = registerOutput<String?>('additionalProperties');
    availabilityType = registerOutput<String?>('availabilityType');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    healthCheckDate = registerOutput<String?>('healthCheckDate');
    installedDate = registerOutput<String?>('installedDate');
    location = registerOutput<String?>('location');
    minSbeVersionRequired = registerOutput<String?>('minSbeVersionRequired');
    this.name = registerOutput<String>('name');
    notifyMessage = registerOutput<String?>('notifyMessage');
    packagePath = registerOutput<String?>('packagePath');
    packageSizeInMb = registerOutput<double?>('packageSizeInMb');
    packageType = registerOutput<String?>('packageType');
    prerequisites = registerOutput<List<Map<String, dynamic>>?>(
      'prerequisites',
    );
    progressPercentage = registerOutput<double?>('progressPercentage');
    provisioningState = registerOutput<String>('provisioningState');
    publisher = registerOutput<String?>('publisher');
    releaseLink = registerOutput<String?>('releaseLink');
    state = registerOutput<String?>('state');
    systemData = registerOutput<SystemDataResponse>(
      'systemData',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SystemDataResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    type = registerOutput<String>('type');
    version = registerOutput<String?>('version');
  }
}
