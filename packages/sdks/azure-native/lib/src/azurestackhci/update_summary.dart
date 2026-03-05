import 'package:pulumi/pulumi.dart' as pulumi;
import 'system_data_response.dart';
import 'update_summary_args.dart';

/// Get the update summaries for the cluster
///
/// Uses Azure REST API version 2024-04-01. In version 2.x of the Azure Native provider, it used API version 2023-03-01.
///
/// Other available API versions: 2022-12-15-preview, 2023-02-01, 2023-03-01, 2023-06-01, 2023-08-01, 2023-08-01-preview, 2023-11-01-preview, 2024-01-01, 2024-02-15-preview, 2024-09-01-preview, 2024-12-01-preview, 2025-02-01-preview, 2025-09-15-preview, 2025-10-01, 2025-11-01-preview, 2025-12-01-preview, 2026-02-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native azurestackhci [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Put Update summaries under cluster resource
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var updateSummary = new AzureNative.AzureStackHCI.UpdateSummary("updateSummary", new()
///     {
///         ClusterName = "testcluster",
///         CurrentVersion = "4.2203.2.32",
///         HardwareModel = "PowerEdge R730xd",
///         LastChecked = "2022-04-07T18:04:07Z",
///         LastUpdated = "2022-04-06T14:08:18.254Z",
///         OemFamily = "DellEMC",
///         ResourceGroupName = "testrg",
///         State = AzureNative.AzureStackHCI.UpdateSummariesPropertiesState.AppliedSuccessfully,
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
/// 		_, err := azurestackhci.NewUpdateSummary(ctx, "updateSummary", &azurestackhci.UpdateSummaryArgs{
/// 			ClusterName:       pulumi.String("testcluster"),
/// 			CurrentVersion:    pulumi.String("4.2203.2.32"),
/// 			HardwareModel:     pulumi.String("PowerEdge R730xd"),
/// 			LastChecked:       pulumi.String("2022-04-07T18:04:07Z"),
/// 			LastUpdated:       pulumi.String("2022-04-06T14:08:18.254Z"),
/// 			OemFamily:         pulumi.String("DellEMC"),
/// 			ResourceGroupName: pulumi.String("testrg"),
/// 			State:             pulumi.String(azurestackhci.UpdateSummariesPropertiesStateAppliedSuccessfully),
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
/// import com.pulumi.azurenative.azurestackhci.UpdateSummary;
/// import com.pulumi.azurenative.azurestackhci.UpdateSummaryArgs;
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
///         var updateSummary = new UpdateSummary("updateSummary", UpdateSummaryArgs.builder()
///             .clusterName("testcluster")
///             .currentVersion("4.2203.2.32")
///             .hardwareModel("PowerEdge R730xd")
///             .lastChecked("2022-04-07T18:04:07Z")
///             .lastUpdated("2022-04-06T14:08:18.254Z")
///             .oemFamily("DellEMC")
///             .resourceGroupName("testrg")
///             .state("AppliedSuccessfully")
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
/// const updateSummary = new azure_native.azurestackhci.UpdateSummary("updateSummary", {
///     clusterName: "testcluster",
///     currentVersion: "4.2203.2.32",
///     hardwareModel: "PowerEdge R730xd",
///     lastChecked: "2022-04-07T18:04:07Z",
///     lastUpdated: "2022-04-06T14:08:18.254Z",
///     oemFamily: "DellEMC",
///     resourceGroupName: "testrg",
///     state: azure_native.azurestackhci.UpdateSummariesPropertiesState.AppliedSuccessfully,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// update_summary = azure_native.azurestackhci.UpdateSummary("updateSummary",
///     cluster_name="testcluster",
///     current_version="4.2203.2.32",
///     hardware_model="PowerEdge R730xd",
///     last_checked="2022-04-07T18:04:07Z",
///     last_updated="2022-04-06T14:08:18.254Z",
///     oem_family="DellEMC",
///     resource_group_name="testrg",
///     state=azure_native.azurestackhci.UpdateSummariesPropertiesState.APPLIED_SUCCESSFULLY)
///
/// ```
///
/// ```yaml
/// resources:
///   updateSummary:
///     type: azure-native:azurestackhci:UpdateSummary
///     properties:
///       clusterName: testcluster
///       currentVersion: 4.2203.2.32
///       hardwareModel: PowerEdge R730xd
///       lastChecked: 2022-04-07T18:04:07Z
///       lastUpdated: 2022-04-06T14:08:18.254Z
///       oemFamily: DellEMC
///       resourceGroupName: testrg
///       state: AppliedSuccessfully
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
/// $ pulumi import azure-native:azurestackhci:UpdateSummary default /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AzureStackHCI/clusters/{clusterName}/updateSummaries/default
/// ```
class UpdateSummary extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Current OEM Version.
  late final pulumi.Output<String?> currentOemVersion;
  /// Current Sbe version of the stamp.
  late final pulumi.Output<String?> currentSbeVersion;
  /// Current Solution Bundle version of the stamp.
  late final pulumi.Output<String?> currentVersion;
  /// Name of the hardware model.
  late final pulumi.Output<String?> hardwareModel;
  /// Last time the package-specific checks were run.
  late final pulumi.Output<String?> healthCheckDate;
  /// Last time the update service successfully checked for updates
  late final pulumi.Output<String?> lastChecked;
  /// Last time an update installation completed successfully.
  late final pulumi.Output<String?> lastUpdated;
  /// The geo-location where the resource lives
  late final pulumi.Output<String?> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// OEM family name.
  late final pulumi.Output<String?> oemFamily;
  /// Provisioning state of the UpdateSummaries proxy resource.
  late final pulumi.Output<String> provisioningState;
  /// Overall update state of the stamp.
  late final pulumi.Output<String?> state;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [UpdateSummary].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [UpdateSummary]. {@macro pulumi_azurestackhci_update_summary_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  UpdateSummary(
    String name, {
    UpdateSummaryArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:azurestackhci:UpdateSummary',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    currentOemVersion = registerOutput<String?>('currentOemVersion');
    currentSbeVersion = registerOutput<String?>('currentSbeVersion');
    currentVersion = registerOutput<String?>('currentVersion');
    hardwareModel = registerOutput<String?>('hardwareModel');
    healthCheckDate = registerOutput<String?>('healthCheckDate');
    lastChecked = registerOutput<String?>('lastChecked');
    lastUpdated = registerOutput<String?>('lastUpdated');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    oemFamily = registerOutput<String?>('oemFamily');
    provisioningState = registerOutput<String>('provisioningState');
    state = registerOutput<String?>('state');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
