import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_container_info_response.dart';
import 'refresh_details_response.dart';
import 'share_args.dart';
import 'system_data_response.dart';

/// Represents a share on the  Data Box Edge/Gateway device.
///
/// Uses Azure REST API version 2023-07-01. In version 2.x of the Azure Native provider, it used API version 2022-03-01.
///
/// Other available API versions: 2022-03-01, 2022-04-01-preview, 2022-12-01-preview, 2023-01-01-preview, 2023-12-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native databoxedge [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### SharePut
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var share = new AzureNative.DataBoxEdge.Share("share", new()
///     {
///         AccessProtocol = AzureNative.DataBoxEdge.ShareAccessProtocol.SMB,
///         AzureContainerInfo = new AzureNative.DataBoxEdge.Inputs.AzureContainerInfoArgs
///         {
///             ContainerName = "testContainerSMB",
///             DataFormat = AzureNative.DataBoxEdge.AzureContainerDataFormat.BlockBlob,
///             StorageAccountCredentialId = "/subscriptions/4385cf00-2d3a-425a-832f-f4285b1c9dce/resourceGroups/GroupForEdgeAutomation/providers/Microsoft.DataBoxEdge/dataBoxEdgeDevices/testedgedevice/storageAccountCredentials/sac1",
///         },
///         DataPolicy = AzureNative.DataBoxEdge.DataPolicy.Cloud,
///         Description = "",
///         DeviceName = "testedgedevice",
///         MonitoringStatus = AzureNative.DataBoxEdge.MonitoringStatus.Enabled,
///         Name = "smbshare",
///         ResourceGroupName = "GroupForEdgeAutomation",
///         ShareStatus = "Online",
///         UserAccessRights = new[]
///         {
///             new AzureNative.DataBoxEdge.Inputs.UserAccessRightArgs
///             {
///                 AccessType = AzureNative.DataBoxEdge.ShareAccessType.Change,
///                 UserId = "/subscriptions/4385cf00-2d3a-425a-832f-f4285b1c9dce/resourceGroups/GroupForEdgeAutomation/providers/Microsoft.DataBoxEdge/dataBoxEdgeDevices/testedgedevice/users/user2",
///             },
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
/// 	databoxedge "github.com/pulumi/pulumi-azure-native-sdk/databoxedge/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := databoxedge.NewShare(ctx, "share", &databoxedge.ShareArgs{
/// 			AccessProtocol: pulumi.String(databoxedge.ShareAccessProtocolSMB),
/// 			AzureContainerInfo: &databoxedge.AzureContainerInfoArgs{
/// 				ContainerName:              pulumi.String("testContainerSMB"),
/// 				DataFormat:                 pulumi.String(databoxedge.AzureContainerDataFormatBlockBlob),
/// 				StorageAccountCredentialId: pulumi.String("/subscriptions/4385cf00-2d3a-425a-832f-f4285b1c9dce/resourceGroups/GroupForEdgeAutomation/providers/Microsoft.DataBoxEdge/dataBoxEdgeDevices/testedgedevice/storageAccountCredentials/sac1"),
/// 			},
/// 			DataPolicy:        pulumi.String(databoxedge.DataPolicyCloud),
/// 			Description:       pulumi.String(""),
/// 			DeviceName:        pulumi.String("testedgedevice"),
/// 			MonitoringStatus:  pulumi.String(databoxedge.MonitoringStatusEnabled),
/// 			Name:              pulumi.String("smbshare"),
/// 			ResourceGroupName: pulumi.String("GroupForEdgeAutomation"),
/// 			ShareStatus:       pulumi.String("Online"),
/// 			UserAccessRights: databoxedge.UserAccessRightArray{
/// 				&databoxedge.UserAccessRightArgs{
/// 					AccessType: pulumi.String(databoxedge.ShareAccessTypeChange),
/// 					UserId:     pulumi.String("/subscriptions/4385cf00-2d3a-425a-832f-f4285b1c9dce/resourceGroups/GroupForEdgeAutomation/providers/Microsoft.DataBoxEdge/dataBoxEdgeDevices/testedgedevice/users/user2"),
/// 				},
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
/// import com.pulumi.azurenative.databoxedge.Share;
/// import com.pulumi.azurenative.databoxedge.ShareArgs;
/// import com.pulumi.azurenative.databoxedge.inputs.AzureContainerInfoArgs;
/// import com.pulumi.azurenative.databoxedge.inputs.UserAccessRightArgs;
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
///         var share = new Share("share", ShareArgs.builder()
///             .accessProtocol("SMB")
///             .azureContainerInfo(AzureContainerInfoArgs.builder()
///                 .containerName("testContainerSMB")
///                 .dataFormat("BlockBlob")
///                 .storageAccountCredentialId("/subscriptions/4385cf00-2d3a-425a-832f-f4285b1c9dce/resourceGroups/GroupForEdgeAutomation/providers/Microsoft.DataBoxEdge/dataBoxEdgeDevices/testedgedevice/storageAccountCredentials/sac1")
///                 .build())
///             .dataPolicy("Cloud")
///             .description("")
///             .deviceName("testedgedevice")
///             .monitoringStatus("Enabled")
///             .name("smbshare")
///             .resourceGroupName("GroupForEdgeAutomation")
///             .shareStatus("Online")
///             .userAccessRights(UserAccessRightArgs.builder()
///                 .accessType("Change")
///                 .userId("/subscriptions/4385cf00-2d3a-425a-832f-f4285b1c9dce/resourceGroups/GroupForEdgeAutomation/providers/Microsoft.DataBoxEdge/dataBoxEdgeDevices/testedgedevice/users/user2")
///                 .build())
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
/// const share = new azure_native.databoxedge.Share("share", {
///     accessProtocol: azure_native.databoxedge.ShareAccessProtocol.SMB,
///     azureContainerInfo: {
///         containerName: "testContainerSMB",
///         dataFormat: azure_native.databoxedge.AzureContainerDataFormat.BlockBlob,
///         storageAccountCredentialId: "/subscriptions/4385cf00-2d3a-425a-832f-f4285b1c9dce/resourceGroups/GroupForEdgeAutomation/providers/Microsoft.DataBoxEdge/dataBoxEdgeDevices/testedgedevice/storageAccountCredentials/sac1",
///     },
///     dataPolicy: azure_native.databoxedge.DataPolicy.Cloud,
///     description: "",
///     deviceName: "testedgedevice",
///     monitoringStatus: azure_native.databoxedge.MonitoringStatus.Enabled,
///     name: "smbshare",
///     resourceGroupName: "GroupForEdgeAutomation",
///     shareStatus: "Online",
///     userAccessRights: [{
///         accessType: azure_native.databoxedge.ShareAccessType.Change,
///         userId: "/subscriptions/4385cf00-2d3a-425a-832f-f4285b1c9dce/resourceGroups/GroupForEdgeAutomation/providers/Microsoft.DataBoxEdge/dataBoxEdgeDevices/testedgedevice/users/user2",
///     }],
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// share = azure_native.databoxedge.Share("share",
///     access_protocol=azure_native.databoxedge.ShareAccessProtocol.SMB,
///     azure_container_info={
///         "container_name": "testContainerSMB",
///         "data_format": azure_native.databoxedge.AzureContainerDataFormat.BLOCK_BLOB,
///         "storage_account_credential_id": "/subscriptions/4385cf00-2d3a-425a-832f-f4285b1c9dce/resourceGroups/GroupForEdgeAutomation/providers/Microsoft.DataBoxEdge/dataBoxEdgeDevices/testedgedevice/storageAccountCredentials/sac1",
///     },
///     data_policy=azure_native.databoxedge.DataPolicy.CLOUD,
///     description="",
///     device_name="testedgedevice",
///     monitoring_status=azure_native.databoxedge.MonitoringStatus.ENABLED,
///     name="smbshare",
///     resource_group_name="GroupForEdgeAutomation",
///     share_status="Online",
///     user_access_rights=[{
///         "access_type": azure_native.databoxedge.ShareAccessType.CHANGE,
///         "user_id": "/subscriptions/4385cf00-2d3a-425a-832f-f4285b1c9dce/resourceGroups/GroupForEdgeAutomation/providers/Microsoft.DataBoxEdge/dataBoxEdgeDevices/testedgedevice/users/user2",
///     }])
///
/// ```
///
/// ```yaml
/// resources:
///   share:
///     type: azure-native:databoxedge:Share
///     properties:
///       accessProtocol: SMB
///       azureContainerInfo:
///         containerName: testContainerSMB
///         dataFormat: BlockBlob
///         storageAccountCredentialId: /subscriptions/4385cf00-2d3a-425a-832f-f4285b1c9dce/resourceGroups/GroupForEdgeAutomation/providers/Microsoft.DataBoxEdge/dataBoxEdgeDevices/testedgedevice/storageAccountCredentials/sac1
///       dataPolicy: Cloud
///       description: ""
///       deviceName: testedgedevice
///       monitoringStatus: Enabled
///       name: smbshare
///       resourceGroupName: GroupForEdgeAutomation
///       shareStatus: Online
///       userAccessRights:
///         - accessType: Change
///           userId: /subscriptions/4385cf00-2d3a-425a-832f-f4285b1c9dce/resourceGroups/GroupForEdgeAutomation/providers/Microsoft.DataBoxEdge/dataBoxEdgeDevices/testedgedevice/users/user2
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
/// $ pulumi import azure-native:databoxedge:Share smbshare /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DataBoxEdge/dataBoxEdgeDevices/{deviceName}/shares/{name}
/// ```
class Share extends pulumi.CustomResource {
  /// Access protocol to be used by the share.
  late final pulumi.Output<String> accessProtocol;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Azure container mapping for the share.
  late final pulumi.Output<AzureContainerInfoResponse?> azureContainerInfo;
  /// List of IP addresses and corresponding access rights on the share(required for NFS protocol).
  late final pulumi.Output<List<Map<String, dynamic>>?> clientAccessRights;
  /// Data policy of the share.
  late final pulumi.Output<String?> dataPolicy;
  /// Description for the share.
  late final pulumi.Output<String?> description;
  /// Current monitoring status of the share.
  late final pulumi.Output<String> monitoringStatus;
  /// The object name.
  late final pulumi.Output<String> name;
  /// Details of the refresh job on this share.
  late final pulumi.Output<RefreshDetailsResponse?> refreshDetails;
  /// Share mount point to the role.
  late final pulumi.Output<List<Map<String, dynamic>>> shareMappings;
  /// Current status of the share.
  late final pulumi.Output<String> shareStatus;
  /// Metadata pertaining to creation and last modification of Share
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The hierarchical type of the object.
  late final pulumi.Output<String> type;
  /// Mapping of users and corresponding access rights on the share (required for SMB protocol).
  late final pulumi.Output<List<Map<String, dynamic>>?> userAccessRights;

  /// Creates a new [Share].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Share]. {@macro pulumi_databoxedge_share_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Share(
    String name, {
    ShareArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:databoxedge:Share',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accessProtocol = registerOutput<String>('accessProtocol');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    azureContainerInfo = registerOutput<AzureContainerInfoResponse?>('azureContainerInfo', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AzureContainerInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    clientAccessRights = registerOutput<List<Map<String, dynamic>>?>('clientAccessRights');
    dataPolicy = registerOutput<String?>('dataPolicy');
    description = registerOutput<String?>('description');
    monitoringStatus = registerOutput<String>('monitoringStatus');
    this.name = registerOutput<String>('name');
    refreshDetails = registerOutput<RefreshDetailsResponse?>('refreshDetails', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RefreshDetailsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    shareMappings = registerOutput<List<Map<String, dynamic>>>('shareMappings');
    shareStatus = registerOutput<String>('shareStatus');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
    userAccessRights = registerOutput<List<Map<String, dynamic>>?>('userAccessRights');
  }
}
