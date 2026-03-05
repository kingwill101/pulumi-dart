import 'package:pulumi/pulumi.dart' as pulumi;
import 'storage_account_args.dart';
import 'system_data_response.dart';

/// Represents a Storage Account on the  Data Box Edge/Gateway device.
///
/// Uses Azure REST API version 2023-07-01. In version 2.x of the Azure Native provider, it used API version 2022-03-01.
///
/// Other available API versions: 2022-03-01, 2022-04-01-preview, 2022-12-01-preview, 2023-01-01-preview, 2023-12-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native databoxedge [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### StorageAccountPut
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var storageAccount = new AzureNative.DataBoxEdge.StorageAccount("storageAccount", new()
///     {
///         DataPolicy = AzureNative.DataBoxEdge.DataPolicy.Cloud,
///         Description = "It's an awesome storage account",
///         DeviceName = "testedgedevice",
///         ResourceGroupName = "GroupForEdgeAutomation",
///         StorageAccountCredentialId = "/subscriptions/4385cf00-2d3a-425a-832f-f4285b1c9dce/resourceGroups/GroupForDataBoxEdgeAutomation/providers/Microsoft.DataBoxEdge/dataBoxEdgeDevices/testedgedevice/storageAccountCredentials/cisbvt",
///         StorageAccountName = "blobstorageaccount1",
///         StorageAccountStatus = AzureNative.DataBoxEdge.StorageAccountStatus.OK,
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
/// 		_, err := databoxedge.NewStorageAccount(ctx, "storageAccount", &databoxedge.StorageAccountArgs{
/// 			DataPolicy:                 pulumi.String(databoxedge.DataPolicyCloud),
/// 			Description:                pulumi.String("It's an awesome storage account"),
/// 			DeviceName:                 pulumi.String("testedgedevice"),
/// 			ResourceGroupName:          pulumi.String("GroupForEdgeAutomation"),
/// 			StorageAccountCredentialId: pulumi.String("/subscriptions/4385cf00-2d3a-425a-832f-f4285b1c9dce/resourceGroups/GroupForDataBoxEdgeAutomation/providers/Microsoft.DataBoxEdge/dataBoxEdgeDevices/testedgedevice/storageAccountCredentials/cisbvt"),
/// 			StorageAccountName:         pulumi.String("blobstorageaccount1"),
/// 			StorageAccountStatus:       pulumi.String(databoxedge.StorageAccountStatusOK),
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
/// import com.pulumi.azurenative.databoxedge.StorageAccount;
/// import com.pulumi.azurenative.databoxedge.StorageAccountArgs;
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
///         var storageAccount = new StorageAccount("storageAccount", StorageAccountArgs.builder()
///             .dataPolicy("Cloud")
///             .description("It's an awesome storage account")
///             .deviceName("testedgedevice")
///             .resourceGroupName("GroupForEdgeAutomation")
///             .storageAccountCredentialId("/subscriptions/4385cf00-2d3a-425a-832f-f4285b1c9dce/resourceGroups/GroupForDataBoxEdgeAutomation/providers/Microsoft.DataBoxEdge/dataBoxEdgeDevices/testedgedevice/storageAccountCredentials/cisbvt")
///             .storageAccountName("blobstorageaccount1")
///             .storageAccountStatus("OK")
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
/// const storageAccount = new azure_native.databoxedge.StorageAccount("storageAccount", {
///     dataPolicy: azure_native.databoxedge.DataPolicy.Cloud,
///     description: "It's an awesome storage account",
///     deviceName: "testedgedevice",
///     resourceGroupName: "GroupForEdgeAutomation",
///     storageAccountCredentialId: "/subscriptions/4385cf00-2d3a-425a-832f-f4285b1c9dce/resourceGroups/GroupForDataBoxEdgeAutomation/providers/Microsoft.DataBoxEdge/dataBoxEdgeDevices/testedgedevice/storageAccountCredentials/cisbvt",
///     storageAccountName: "blobstorageaccount1",
///     storageAccountStatus: azure_native.databoxedge.StorageAccountStatus.OK,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// storage_account = azure_native.databoxedge.StorageAccount("storageAccount",
///     data_policy=azure_native.databoxedge.DataPolicy.CLOUD,
///     description="It's an awesome storage account",
///     device_name="testedgedevice",
///     resource_group_name="GroupForEdgeAutomation",
///     storage_account_credential_id="/subscriptions/4385cf00-2d3a-425a-832f-f4285b1c9dce/resourceGroups/GroupForDataBoxEdgeAutomation/providers/Microsoft.DataBoxEdge/dataBoxEdgeDevices/testedgedevice/storageAccountCredentials/cisbvt",
///     storage_account_name="blobstorageaccount1",
///     storage_account_status=azure_native.databoxedge.StorageAccountStatus.OK)
///
/// ```
///
/// ```yaml
/// resources:
///   storageAccount:
///     type: azure-native:databoxedge:StorageAccount
///     properties:
///       dataPolicy: Cloud
///       description: It's an awesome storage account
///       deviceName: testedgedevice
///       resourceGroupName: GroupForEdgeAutomation
///       storageAccountCredentialId: /subscriptions/4385cf00-2d3a-425a-832f-f4285b1c9dce/resourceGroups/GroupForDataBoxEdgeAutomation/providers/Microsoft.DataBoxEdge/dataBoxEdgeDevices/testedgedevice/storageAccountCredentials/cisbvt
///       storageAccountName: blobstorageaccount1
///       storageAccountStatus: OK
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
/// $ pulumi import azure-native:databoxedge:StorageAccount blobstorageaccount1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DataBoxEdge/dataBoxEdgeDevices/{deviceName}/storageAccounts/{storageAccountName}
/// ```
class StorageAccount extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// BlobEndpoint of Storage Account
  late final pulumi.Output<String> blobEndpoint;
  /// The Container Count. Present only for Storage Accounts with DataPolicy set to Cloud.
  late final pulumi.Output<int> containerCount;
  /// Data policy of the storage Account.
  late final pulumi.Output<String> dataPolicy;
  /// Description for the storage Account.
  late final pulumi.Output<String?> description;
  /// The object name.
  late final pulumi.Output<String> name;
  /// Storage Account Credential Id
  late final pulumi.Output<String?> storageAccountCredentialId;
  /// Current status of the storage account
  late final pulumi.Output<String?> storageAccountStatus;
  /// Metadata pertaining to creation and last modification of StorageAccount
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The hierarchical type of the object.
  late final pulumi.Output<String> type;

  /// Creates a new [StorageAccount].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [StorageAccount]. {@macro pulumi_databoxedge_storage_account_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  StorageAccount(
    String name, {
    StorageAccountArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:databoxedge:StorageAccount',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    blobEndpoint = registerOutput<String>('blobEndpoint');
    containerCount = registerOutput<int>('containerCount');
    dataPolicy = registerOutput<String>('dataPolicy');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    storageAccountCredentialId = registerOutput<String?>('storageAccountCredentialId');
    storageAccountStatus = registerOutput<String?>('storageAccountStatus');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
