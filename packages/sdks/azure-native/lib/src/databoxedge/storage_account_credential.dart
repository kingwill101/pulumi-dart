import 'package:pulumi/pulumi.dart' as pulumi;
import 'asymmetric_encrypted_secret_response.dart';
import 'storage_account_credential_args.dart';
import 'system_data_response.dart';

/// The storage account credential.
///
/// Uses Azure REST API version 2023-07-01. In version 2.x of the Azure Native provider, it used API version 2022-03-01.
///
/// Other available API versions: 2022-03-01, 2022-04-01-preview, 2022-12-01-preview, 2023-01-01-preview, 2023-12-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native databoxedge [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### SACPut
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var storageAccountCredential = new AzureNative.DataBoxEdge.StorageAccountCredential("storageAccountCredential", new()
///     {
///         AccountKey = new AzureNative.DataBoxEdge.Inputs.AsymmetricEncryptedSecretArgs
///         {
///             EncryptionAlgorithm = AzureNative.DataBoxEdge.EncryptionAlgorithm.AES256,
///             EncryptionCertThumbprint = "2A9D8D6BE51574B5461230AEF02F162C5F01AD31",
///             Value = "lAeZEYi6rNP1/EyNaVUYmTSZEYyaIaWmwUsGwek0+xiZj54GM9Ue9/UA2ed/ClC03wuSit2XzM/cLRU5eYiFBwks23rGwiQOr3sruEL2a74EjPD050xYjA6M1I2hu/w2yjVHhn5j+DbXS4Xzi+rHHNZK3DgfDO3PkbECjPck+PbpSBjy9+6Mrjcld5DIZhUAeMlMHrFlg+WKRKB14o/og56u5/xX6WKlrMLEQ+y6E18dUwvWs2elTNoVO8PBE8SM/CfooX4AMNvaNdSObNBPdP+F6Lzc556nFNWXrBLRt0vC7s9qTiVRO4x/qCNaK/B4y7IqXMllwQFf4Np9UQ2ECA==",
///         },
///         AccountType = AzureNative.DataBoxEdge.AccountType.BlobStorage,
///         Alias = "sac1",
///         DeviceName = "testedgedevice",
///         Name = "sac1",
///         ResourceGroupName = "GroupForEdgeAutomation",
///         SslStatus = AzureNative.DataBoxEdge.SSLStatus.Disabled,
///         UserName = "cisbvt",
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
/// 		_, err := databoxedge.NewStorageAccountCredential(ctx, "storageAccountCredential", &databoxedge.StorageAccountCredentialArgs{
/// 			AccountKey: &databoxedge.AsymmetricEncryptedSecretArgs{
/// 				EncryptionAlgorithm:      pulumi.String(databoxedge.EncryptionAlgorithmAES256),
/// 				EncryptionCertThumbprint: pulumi.String("2A9D8D6BE51574B5461230AEF02F162C5F01AD31"),
/// 				Value:                    pulumi.String("lAeZEYi6rNP1/EyNaVUYmTSZEYyaIaWmwUsGwek0+xiZj54GM9Ue9/UA2ed/ClC03wuSit2XzM/cLRU5eYiFBwks23rGwiQOr3sruEL2a74EjPD050xYjA6M1I2hu/w2yjVHhn5j+DbXS4Xzi+rHHNZK3DgfDO3PkbECjPck+PbpSBjy9+6Mrjcld5DIZhUAeMlMHrFlg+WKRKB14o/og56u5/xX6WKlrMLEQ+y6E18dUwvWs2elTNoVO8PBE8SM/CfooX4AMNvaNdSObNBPdP+F6Lzc556nFNWXrBLRt0vC7s9qTiVRO4x/qCNaK/B4y7IqXMllwQFf4Np9UQ2ECA=="),
/// 			},
/// 			AccountType:       pulumi.String(databoxedge.AccountTypeBlobStorage),
/// 			Alias:             pulumi.String("sac1"),
/// 			DeviceName:        pulumi.String("testedgedevice"),
/// 			Name:              pulumi.String("sac1"),
/// 			ResourceGroupName: pulumi.String("GroupForEdgeAutomation"),
/// 			SslStatus:         pulumi.String(databoxedge.SSLStatusDisabled),
/// 			UserName:          pulumi.String("cisbvt"),
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
/// resource "azure-native_databoxedge_storageaccountcredential" "storageAccountCredential" {
///   account_key = {
///     encryption_algorithm       = "AES256"
///     encryption_cert_thumbprint = "2A9D8D6BE51574B5461230AEF02F162C5F01AD31"
///     value                      = "lAeZEYi6rNP1/EyNaVUYmTSZEYyaIaWmwUsGwek0+xiZj54GM9Ue9/UA2ed/ClC03wuSit2XzM/cLRU5eYiFBwks23rGwiQOr3sruEL2a74EjPD050xYjA6M1I2hu/w2yjVHhn5j+DbXS4Xzi+rHHNZK3DgfDO3PkbECjPck+PbpSBjy9+6Mrjcld5DIZhUAeMlMHrFlg+WKRKB14o/og56u5/xX6WKlrMLEQ+y6E18dUwvWs2elTNoVO8PBE8SM/CfooX4AMNvaNdSObNBPdP+F6Lzc556nFNWXrBLRt0vC7s9qTiVRO4x/qCNaK/B4y7IqXMllwQFf4Np9UQ2ECA=="
///   }
///   account_type        = "BlobStorage"
///   alias               = "sac1"
///   device_name         = "testedgedevice"
///   name                = "sac1"
///   resource_group_name = "GroupForEdgeAutomation"
///   ssl_status          = "Disabled"
///   user_name           = "cisbvt"
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
/// import com.pulumi.azurenative.databoxedge.StorageAccountCredential;
/// import com.pulumi.azurenative.databoxedge.StorageAccountCredentialArgs;
/// import com.pulumi.azurenative.databoxedge.inputs.AsymmetricEncryptedSecretArgs;
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
///         var storageAccountCredential = new StorageAccountCredential("storageAccountCredential", StorageAccountCredentialArgs.builder()
///             .accountKey(AsymmetricEncryptedSecretArgs.builder()
///                 .encryptionAlgorithm("AES256")
///                 .encryptionCertThumbprint("2A9D8D6BE51574B5461230AEF02F162C5F01AD31")
///                 .value("lAeZEYi6rNP1/EyNaVUYmTSZEYyaIaWmwUsGwek0+xiZj54GM9Ue9/UA2ed/ClC03wuSit2XzM/cLRU5eYiFBwks23rGwiQOr3sruEL2a74EjPD050xYjA6M1I2hu/w2yjVHhn5j+DbXS4Xzi+rHHNZK3DgfDO3PkbECjPck+PbpSBjy9+6Mrjcld5DIZhUAeMlMHrFlg+WKRKB14o/og56u5/xX6WKlrMLEQ+y6E18dUwvWs2elTNoVO8PBE8SM/CfooX4AMNvaNdSObNBPdP+F6Lzc556nFNWXrBLRt0vC7s9qTiVRO4x/qCNaK/B4y7IqXMllwQFf4Np9UQ2ECA==")
///                 .build())
///             .accountType("BlobStorage")
///             .alias("sac1")
///             .deviceName("testedgedevice")
///             .name("sac1")
///             .resourceGroupName("GroupForEdgeAutomation")
///             .sslStatus("Disabled")
///             .userName("cisbvt")
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
/// const storageAccountCredential = new azure_native.databoxedge.StorageAccountCredential("storageAccountCredential", {
///     accountKey: {
///         encryptionAlgorithm: azure_native.databoxedge.EncryptionAlgorithm.AES256,
///         encryptionCertThumbprint: "2A9D8D6BE51574B5461230AEF02F162C5F01AD31",
///         value: "lAeZEYi6rNP1/EyNaVUYmTSZEYyaIaWmwUsGwek0+xiZj54GM9Ue9/UA2ed/ClC03wuSit2XzM/cLRU5eYiFBwks23rGwiQOr3sruEL2a74EjPD050xYjA6M1I2hu/w2yjVHhn5j+DbXS4Xzi+rHHNZK3DgfDO3PkbECjPck+PbpSBjy9+6Mrjcld5DIZhUAeMlMHrFlg+WKRKB14o/og56u5/xX6WKlrMLEQ+y6E18dUwvWs2elTNoVO8PBE8SM/CfooX4AMNvaNdSObNBPdP+F6Lzc556nFNWXrBLRt0vC7s9qTiVRO4x/qCNaK/B4y7IqXMllwQFf4Np9UQ2ECA==",
///     },
///     accountType: azure_native.databoxedge.AccountType.BlobStorage,
///     alias: "sac1",
///     deviceName: "testedgedevice",
///     name: "sac1",
///     resourceGroupName: "GroupForEdgeAutomation",
///     sslStatus: azure_native.databoxedge.SSLStatus.Disabled,
///     userName: "cisbvt",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// storage_account_credential = azure_native.databoxedge.StorageAccountCredential("storageAccountCredential",
///     account_key={
///         "encryption_algorithm": azure_native.databoxedge.EncryptionAlgorithm.AES256,
///         "encryption_cert_thumbprint": "2A9D8D6BE51574B5461230AEF02F162C5F01AD31",
///         "value": "lAeZEYi6rNP1/EyNaVUYmTSZEYyaIaWmwUsGwek0+xiZj54GM9Ue9/UA2ed/ClC03wuSit2XzM/cLRU5eYiFBwks23rGwiQOr3sruEL2a74EjPD050xYjA6M1I2hu/w2yjVHhn5j+DbXS4Xzi+rHHNZK3DgfDO3PkbECjPck+PbpSBjy9+6Mrjcld5DIZhUAeMlMHrFlg+WKRKB14o/og56u5/xX6WKlrMLEQ+y6E18dUwvWs2elTNoVO8PBE8SM/CfooX4AMNvaNdSObNBPdP+F6Lzc556nFNWXrBLRt0vC7s9qTiVRO4x/qCNaK/B4y7IqXMllwQFf4Np9UQ2ECA==",
///     },
///     account_type=azure_native.databoxedge.AccountType.BLOB_STORAGE,
///     alias="sac1",
///     device_name="testedgedevice",
///     name="sac1",
///     resource_group_name="GroupForEdgeAutomation",
///     ssl_status=azure_native.databoxedge.SSLStatus.DISABLED,
///     user_name="cisbvt")
///
/// ```
///
/// ```yaml
/// resources:
///   storageAccountCredential:
///     type: azure-native:databoxedge:StorageAccountCredential
///     properties:
///       accountKey:
///         encryptionAlgorithm: AES256
///         encryptionCertThumbprint: 2A9D8D6BE51574B5461230AEF02F162C5F01AD31
///         value: lAeZEYi6rNP1/EyNaVUYmTSZEYyaIaWmwUsGwek0+xiZj54GM9Ue9/UA2ed/ClC03wuSit2XzM/cLRU5eYiFBwks23rGwiQOr3sruEL2a74EjPD050xYjA6M1I2hu/w2yjVHhn5j+DbXS4Xzi+rHHNZK3DgfDO3PkbECjPck+PbpSBjy9+6Mrjcld5DIZhUAeMlMHrFlg+WKRKB14o/og56u5/xX6WKlrMLEQ+y6E18dUwvWs2elTNoVO8PBE8SM/CfooX4AMNvaNdSObNBPdP+F6Lzc556nFNWXrBLRt0vC7s9qTiVRO4x/qCNaK/B4y7IqXMllwQFf4Np9UQ2ECA==
///       accountType: BlobStorage
///       alias: sac1
///       deviceName: testedgedevice
///       name: sac1
///       resourceGroupName: GroupForEdgeAutomation
///       sslStatus: Disabled
///       userName: cisbvt
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
/// $ pulumi import azure-native:databoxedge:StorageAccountCredential sac1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DataBoxEdge/dataBoxEdgeDevices/{deviceName}/storageAccountCredentials/{name}
/// ```
class StorageAccountCredential extends pulumi.CustomResource {
  /// Encrypted storage key.
  late final pulumi.Output<AsymmetricEncryptedSecretResponse?> accountKey;
  /// Type of storage accessed on the storage account.
  late final pulumi.Output<String> accountType;
  /// Alias for the storage account.
  late final pulumi.Output<String> alias;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Blob end point for private clouds.
  late final pulumi.Output<String?> blobDomainName;
  /// Connection string for the storage account. Use this string if username and account key are not specified.
  late final pulumi.Output<String?> connectionString;
  /// The object name.
  late final pulumi.Output<String> name;
  /// Signifies whether SSL needs to be enabled or not.
  late final pulumi.Output<String> sslStatus;
  /// Id of the storage account.
  late final pulumi.Output<String?> storageAccountId;
  /// Metadata pertaining to creation and last modification of StorageAccountCredential
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The hierarchical type of the object.
  late final pulumi.Output<String> type;
  /// Username for the storage account.
  late final pulumi.Output<String?> userName;

  /// Creates a new [StorageAccountCredential].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [StorageAccountCredential]. {@macro pulumi_databoxedge_storage_account_credential_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  StorageAccountCredential(
    String name, {
    StorageAccountCredentialArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:databoxedge:StorageAccountCredential',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountKey = registerOutput<AsymmetricEncryptedSecretResponse?>('accountKey', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AsymmetricEncryptedSecretResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    accountType = registerOutput<String>('accountType');
    alias = registerOutput<String>('alias');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    blobDomainName = registerOutput<String?>('blobDomainName');
    connectionString = registerOutput<String?>('connectionString');
    this.name = registerOutput<String>('name');
    sslStatus = registerOutput<String>('sslStatus');
    storageAccountId = registerOutput<String?>('storageAccountId');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
    userName = registerOutput<String?>('userName');
  }

  /// Creates a typed reference to an existing [StorageAccountCredential] resource.
  StorageAccountCredential.reference(String urn)
    : super(
        'azure-native:databoxedge:StorageAccountCredential',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountKey = registerOutput<AsymmetricEncryptedSecretResponse?>('accountKey', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AsymmetricEncryptedSecretResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    accountType = registerOutput<String>('accountType');
    alias = registerOutput<String>('alias');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    blobDomainName = registerOutput<String?>('blobDomainName');
    connectionString = registerOutput<String?>('connectionString');
    this.name = registerOutput<String>('name');
    sslStatus = registerOutput<String>('sslStatus');
    storageAccountId = registerOutput<String?>('storageAccountId');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
    userName = registerOutput<String?>('userName');
  }
}
