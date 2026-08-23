import 'package:pulumi/pulumi.dart' as pulumi;
import 'hci_collect_log_job_properties_response.dart';
import 'hci_edge_device_job_args.dart';
import 'system_data_response.dart';

/// Edge device job for Azure Stack HCI solution.
///
/// Uses Azure REST API version 2024-12-01-preview. In version 2.x of the Azure Native provider, it used API version 2024-09-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### EdgeDeviceJobs_CreateOrUpdate_CollectLog
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var hciEdgeDeviceJob = new AzureNative.AzureStackHCI.HciEdgeDeviceJob("hciEdgeDeviceJob", new()
///     {
///         EdgeDeviceName = "default",
///         JobsName = "collectLog",
///         Kind = "HCI",
///         Properties = new AzureNative.AzureStackHCI.Inputs.HciCollectLogJobPropertiesArgs
///         {
///             FromDate = "2024-01-29T10:43:27.9471574Z",
///             JobType = "CollectLog",
///             ToDate = "2024-01-29T10:43:27.9471574Z",
///         },
///         ResourceUri = "subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/ArcInstance-rg/providers/Microsoft.HybridCompute/machines/Node-1",
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
/// 		_, err := azurestackhci.NewHciEdgeDeviceJob(ctx, "hciEdgeDeviceJob", &azurestackhci.HciEdgeDeviceJobArgs{
/// 			EdgeDeviceName: pulumi.String("default"),
/// 			JobsName:       pulumi.String("collectLog"),
/// 			Kind:           pulumi.String("HCI"),
/// 			Properties: &azurestackhci.HciCollectLogJobPropertiesArgs{
/// 				FromDate: pulumi.String("2024-01-29T10:43:27.9471574Z"),
/// 				JobType:  pulumi.String("CollectLog"),
/// 				ToDate:   pulumi.String("2024-01-29T10:43:27.9471574Z"),
/// 			},
/// 			ResourceUri: pulumi.String("subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/ArcInstance-rg/providers/Microsoft.HybridCompute/machines/Node-1"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_azurestackhci_hciedgedevicejob" "hciEdgeDeviceJob" {
///   edge_device_name = "default"
///   jobs_name        = "collectLog"
///   kind             = "HCI"
///   properties = {
///     "fromDate" = "2024-01-29T10:43:27.9471574Z"
///     "jobType"  = "CollectLog"
///     "toDate"   = "2024-01-29T10:43:27.9471574Z"
///   }
///   resource_uri = "subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/ArcInstance-rg/providers/Microsoft.HybridCompute/machines/Node-1"
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
/// import com.pulumi.azurenative.azurestackhci.HciEdgeDeviceJob;
/// import com.pulumi.azurenative.azurestackhci.HciEdgeDeviceJobArgs;
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
///         var hciEdgeDeviceJob = new HciEdgeDeviceJob("hciEdgeDeviceJob", HciEdgeDeviceJobArgs.builder()
///             .edgeDeviceName("default")
///             .jobsName("collectLog")
///             .kind("HCI")
///             .properties(HciCollectLogJobPropertiesArgs.builder()
///                 .fromDate("2024-01-29T10:43:27.9471574Z")
///                 .jobType("CollectLog")
///                 .toDate("2024-01-29T10:43:27.9471574Z")
///                 .build())
///             .resourceUri("subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/ArcInstance-rg/providers/Microsoft.HybridCompute/machines/Node-1")
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
/// const hciEdgeDeviceJob = new azure_native.azurestackhci.HciEdgeDeviceJob("hciEdgeDeviceJob", {
///     edgeDeviceName: "default",
///     jobsName: "collectLog",
///     kind: "HCI",
///     properties: {
///         fromDate: "2024-01-29T10:43:27.9471574Z",
///         jobType: "CollectLog",
///         toDate: "2024-01-29T10:43:27.9471574Z",
///     },
///     resourceUri: "subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/ArcInstance-rg/providers/Microsoft.HybridCompute/machines/Node-1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// hci_edge_device_job = azure_native.azurestackhci.HciEdgeDeviceJob("hciEdgeDeviceJob",
///     edge_device_name="default",
///     jobs_name="collectLog",
///     kind="HCI",
///     properties={
///         "from_date": "2024-01-29T10:43:27.9471574Z",
///         "job_type": "CollectLog",
///         "to_date": "2024-01-29T10:43:27.9471574Z",
///     },
///     resource_uri="subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/ArcInstance-rg/providers/Microsoft.HybridCompute/machines/Node-1")
///
/// ```
///
/// ```yaml
/// resources:
///   hciEdgeDeviceJob:
///     type: azure-native:azurestackhci:HciEdgeDeviceJob
///     properties:
///       edgeDeviceName: default
///       jobsName: collectLog
///       kind: HCI
///       properties:
///         fromDate: 2024-01-29T10:43:27.9471574Z
///         jobType: CollectLog
///         toDate: 2024-01-29T10:43:27.9471574Z
///       resourceUri: subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/ArcInstance-rg/providers/Microsoft.HybridCompute/machines/Node-1
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### EdgeDeviceJobs_CreateOrUpdate_RemoteSupport
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var hciEdgeDeviceJob = new AzureNative.AzureStackHCI.HciEdgeDeviceJob("hciEdgeDeviceJob", new()
///     {
///         EdgeDeviceName = "default",
///         JobsName = "collectLog",
///         Kind = "HCI",
///         Properties = new AzureNative.AzureStackHCI.Inputs.HciRemoteSupportJobPropertiesArgs
///         {
///             AccessLevel = AzureNative.AzureStackHCI.RemoteSupportAccessLevel.Diagnostics,
///             ExpirationTimestamp = "2024-01-29T10:43:27.9471574Z",
///             JobType = "RemoteSupport",
///             Type = AzureNative.AzureStackHCI.RemoteSupportType.Enable,
///         },
///         ResourceUri = "subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/ArcInstance-rg/providers/Microsoft.HybridCompute/machines/Node-1",
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
/// 		_, err := azurestackhci.NewHciEdgeDeviceJob(ctx, "hciEdgeDeviceJob", &azurestackhci.HciEdgeDeviceJobArgs{
/// 			EdgeDeviceName: pulumi.String("default"),
/// 			JobsName:       pulumi.String("collectLog"),
/// 			Kind:           pulumi.String("HCI"),
/// 			Properties: &azurestackhci.HciRemoteSupportJobPropertiesArgs{
/// 				AccessLevel:         pulumi.String(azurestackhci.RemoteSupportAccessLevelDiagnostics),
/// 				ExpirationTimestamp: pulumi.String("2024-01-29T10:43:27.9471574Z"),
/// 				JobType:             pulumi.String("RemoteSupport"),
/// 				Type:                pulumi.String(azurestackhci.RemoteSupportTypeEnable),
/// 			},
/// 			ResourceUri: pulumi.String("subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/ArcInstance-rg/providers/Microsoft.HybridCompute/machines/Node-1"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_azurestackhci_hciedgedevicejob" "hciEdgeDeviceJob" {
///   edge_device_name = "default"
///   jobs_name        = "collectLog"
///   kind             = "HCI"
///   properties = {
///     "accessLevel"         = "Diagnostics"
///     "expirationTimestamp" = "2024-01-29T10:43:27.9471574Z"
///     "jobType"             = "RemoteSupport"
///     "type"                = "Enable"
///   }
///   resource_uri = "subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/ArcInstance-rg/providers/Microsoft.HybridCompute/machines/Node-1"
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
/// import com.pulumi.azurenative.azurestackhci.HciEdgeDeviceJob;
/// import com.pulumi.azurenative.azurestackhci.HciEdgeDeviceJobArgs;
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
///         var hciEdgeDeviceJob = new HciEdgeDeviceJob("hciEdgeDeviceJob", HciEdgeDeviceJobArgs.builder()
///             .edgeDeviceName("default")
///             .jobsName("collectLog")
///             .kind("HCI")
///             .properties(HciRemoteSupportJobPropertiesArgs.builder()
///                 .accessLevel("Diagnostics")
///                 .expirationTimestamp("2024-01-29T10:43:27.9471574Z")
///                 .jobType("RemoteSupport")
///                 .type("Enable")
///                 .build())
///             .resourceUri("subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/ArcInstance-rg/providers/Microsoft.HybridCompute/machines/Node-1")
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
/// const hciEdgeDeviceJob = new azure_native.azurestackhci.HciEdgeDeviceJob("hciEdgeDeviceJob", {
///     edgeDeviceName: "default",
///     jobsName: "collectLog",
///     kind: "HCI",
///     properties: {
///         accessLevel: azure_native.azurestackhci.RemoteSupportAccessLevel.Diagnostics,
///         expirationTimestamp: "2024-01-29T10:43:27.9471574Z",
///         jobType: "RemoteSupport",
///         type: azure_native.azurestackhci.RemoteSupportType.Enable,
///     },
///     resourceUri: "subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/ArcInstance-rg/providers/Microsoft.HybridCompute/machines/Node-1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// hci_edge_device_job = azure_native.azurestackhci.HciEdgeDeviceJob("hciEdgeDeviceJob",
///     edge_device_name="default",
///     jobs_name="collectLog",
///     kind="HCI",
///     properties={
///         "access_level": azure_native.azurestackhci.RemoteSupportAccessLevel.DIAGNOSTICS,
///         "expiration_timestamp": "2024-01-29T10:43:27.9471574Z",
///         "job_type": "RemoteSupport",
///         "type": azure_native.azurestackhci.RemoteSupportType.ENABLE,
///     },
///     resource_uri="subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/ArcInstance-rg/providers/Microsoft.HybridCompute/machines/Node-1")
///
/// ```
///
/// ```yaml
/// resources:
///   hciEdgeDeviceJob:
///     type: azure-native:azurestackhci:HciEdgeDeviceJob
///     properties:
///       edgeDeviceName: default
///       jobsName: collectLog
///       kind: HCI
///       properties:
///         accessLevel: Diagnostics
///         expirationTimestamp: 2024-01-29T10:43:27.9471574Z
///         jobType: RemoteSupport
///         type: Enable
///       resourceUri: subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/ArcInstance-rg/providers/Microsoft.HybridCompute/machines/Node-1
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
/// $ pulumi import azure-native:azurestackhci:HciEdgeDeviceJob collectLog /{resourceUri}/providers/Microsoft.AzureStackHCI/edgeDevices/{edgeDeviceName}/jobs/{jobsName}
/// ```
class HciEdgeDeviceJob extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Edge device kind.
  /// Expected value is 'HCI'.
  late final pulumi.Output<String> kind;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// HCI Edge device job properties
  late final pulumi.Output<HciCollectLogJobPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [HciEdgeDeviceJob].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [HciEdgeDeviceJob]. {@macro pulumi_azurestackhci_hci_edge_device_job_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  HciEdgeDeviceJob(
    String name, {
    HciEdgeDeviceJobArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:azurestackhci:HciEdgeDeviceJob',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    kind = registerOutput<String>('kind');
    this.name = registerOutput<String>('name');
    properties = registerOutput<HciCollectLogJobPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return HciCollectLogJobPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
