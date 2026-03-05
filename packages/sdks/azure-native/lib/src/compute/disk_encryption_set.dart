import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_error_response.dart';
import 'disk_encryption_set_args.dart';
import 'encryption_set_identity_response.dart';
import 'key_for_disk_encryption_set_response.dart';
import 'system_data_response.dart';

/// disk encryption set resource.
///
/// Uses Azure REST API version 2024-03-02. In version 2.x of the Azure Native provider, it used API version 2022-07-02.
///
/// Other available API versions: 2022-07-02, 2023-01-02, 2023-04-02, 2023-10-02, 2025-01-02. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native compute [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### create a disk encryption set with key vault from a different subscription.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var diskEncryptionSet = new AzureNative.Compute.DiskEncryptionSet("diskEncryptionSet", new()
///     {
///         ActiveKey = new AzureNative.Compute.Inputs.KeyForDiskEncryptionSetArgs
///         {
///             KeyUrl = "https://myvaultdifferentsub.vault-int.azure-int.net/keys/{key}",
///         },
///         DiskEncryptionSetName = "myDiskEncryptionSet",
///         EncryptionType = AzureNative.Compute.DiskEncryptionSetType.EncryptionAtRestWithCustomerKey,
///         Identity = new AzureNative.Compute.Inputs.EncryptionSetIdentityArgs
///         {
///             Type = AzureNative.Compute.DiskEncryptionSetIdentityType.SystemAssigned,
///         },
///         Location = "West US",
///         ResourceGroupName = "myResourceGroup",
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
/// 	compute "github.com/pulumi/pulumi-azure-native-sdk/compute/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewDiskEncryptionSet(ctx, "diskEncryptionSet", &compute.DiskEncryptionSetArgs{
/// 			ActiveKey: &compute.KeyForDiskEncryptionSetArgs{
/// 				KeyUrl: pulumi.String("https://myvaultdifferentsub.vault-int.azure-int.net/keys/{key}"),
/// 			},
/// 			DiskEncryptionSetName: pulumi.String("myDiskEncryptionSet"),
/// 			EncryptionType:        pulumi.String(compute.DiskEncryptionSetTypeEncryptionAtRestWithCustomerKey),
/// 			Identity: &compute.EncryptionSetIdentityArgs{
/// 				Type: pulumi.String(compute.DiskEncryptionSetIdentityTypeSystemAssigned),
/// 			},
/// 			Location:          pulumi.String("West US"),
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
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
/// import com.pulumi.azurenative.compute.DiskEncryptionSet;
/// import com.pulumi.azurenative.compute.DiskEncryptionSetArgs;
/// import com.pulumi.azurenative.compute.inputs.KeyForDiskEncryptionSetArgs;
/// import com.pulumi.azurenative.compute.inputs.EncryptionSetIdentityArgs;
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
///         var diskEncryptionSet = new DiskEncryptionSet("diskEncryptionSet", DiskEncryptionSetArgs.builder()
///             .activeKey(KeyForDiskEncryptionSetArgs.builder()
///                 .keyUrl("https://myvaultdifferentsub.vault-int.azure-int.net/keys/{key}")
///                 .build())
///             .diskEncryptionSetName("myDiskEncryptionSet")
///             .encryptionType("EncryptionAtRestWithCustomerKey")
///             .identity(EncryptionSetIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .location("West US")
///             .resourceGroupName("myResourceGroup")
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
/// const diskEncryptionSet = new azure_native.compute.DiskEncryptionSet("diskEncryptionSet", {
///     activeKey: {
///         keyUrl: "https://myvaultdifferentsub.vault-int.azure-int.net/keys/{key}",
///     },
///     diskEncryptionSetName: "myDiskEncryptionSet",
///     encryptionType: azure_native.compute.DiskEncryptionSetType.EncryptionAtRestWithCustomerKey,
///     identity: {
///         type: azure_native.compute.DiskEncryptionSetIdentityType.SystemAssigned,
///     },
///     location: "West US",
///     resourceGroupName: "myResourceGroup",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// disk_encryption_set = azure_native.compute.DiskEncryptionSet("diskEncryptionSet",
///     active_key={
///         "key_url": "https://myvaultdifferentsub.vault-int.azure-int.net/keys/{key}",
///     },
///     disk_encryption_set_name="myDiskEncryptionSet",
///     encryption_type=azure_native.compute.DiskEncryptionSetType.ENCRYPTION_AT_REST_WITH_CUSTOMER_KEY,
///     identity={
///         "type": azure_native.compute.DiskEncryptionSetIdentityType.SYSTEM_ASSIGNED,
///     },
///     location="West US",
///     resource_group_name="myResourceGroup")
///
/// ```
///
/// ```yaml
/// resources:
///   diskEncryptionSet:
///     type: azure-native:compute:DiskEncryptionSet
///     properties:
///       activeKey:
///         keyUrl: https://myvaultdifferentsub.vault-int.azure-int.net/keys/{key}
///       diskEncryptionSetName: myDiskEncryptionSet
///       encryptionType: EncryptionAtRestWithCustomerKey
///       identity:
///         type: SystemAssigned
///       location: West US
///       resourceGroupName: myResourceGroup
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### create a disk encryption set.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var diskEncryptionSet = new AzureNative.Compute.DiskEncryptionSet("diskEncryptionSet", new()
///     {
///         ActiveKey = new AzureNative.Compute.Inputs.KeyForDiskEncryptionSetArgs
///         {
///             KeyUrl = "https://myvmvault.vault-int.azure-int.net/keys/{key}",
///             SourceVault = new AzureNative.Compute.Inputs.SourceVaultArgs
///             {
///                 Id = "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.KeyVault/vaults/myVMVault",
///             },
///         },
///         DiskEncryptionSetName = "myDiskEncryptionSet",
///         EncryptionType = AzureNative.Compute.DiskEncryptionSetType.EncryptionAtRestWithCustomerKey,
///         Identity = new AzureNative.Compute.Inputs.EncryptionSetIdentityArgs
///         {
///             Type = AzureNative.Compute.DiskEncryptionSetIdentityType.SystemAssigned,
///         },
///         Location = "West US",
///         ResourceGroupName = "myResourceGroup",
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
/// 	compute "github.com/pulumi/pulumi-azure-native-sdk/compute/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewDiskEncryptionSet(ctx, "diskEncryptionSet", &compute.DiskEncryptionSetArgs{
/// 			ActiveKey: &compute.KeyForDiskEncryptionSetArgs{
/// 				KeyUrl: pulumi.String("https://myvmvault.vault-int.azure-int.net/keys/{key}"),
/// 				SourceVault: &compute.SourceVaultArgs{
/// 					Id: pulumi.String("/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.KeyVault/vaults/myVMVault"),
/// 				},
/// 			},
/// 			DiskEncryptionSetName: pulumi.String("myDiskEncryptionSet"),
/// 			EncryptionType:        pulumi.String(compute.DiskEncryptionSetTypeEncryptionAtRestWithCustomerKey),
/// 			Identity: &compute.EncryptionSetIdentityArgs{
/// 				Type: pulumi.String(compute.DiskEncryptionSetIdentityTypeSystemAssigned),
/// 			},
/// 			Location:          pulumi.String("West US"),
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
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
/// import com.pulumi.azurenative.compute.DiskEncryptionSet;
/// import com.pulumi.azurenative.compute.DiskEncryptionSetArgs;
/// import com.pulumi.azurenative.compute.inputs.KeyForDiskEncryptionSetArgs;
/// import com.pulumi.azurenative.compute.inputs.SourceVaultArgs;
/// import com.pulumi.azurenative.compute.inputs.EncryptionSetIdentityArgs;
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
///         var diskEncryptionSet = new DiskEncryptionSet("diskEncryptionSet", DiskEncryptionSetArgs.builder()
///             .activeKey(KeyForDiskEncryptionSetArgs.builder()
///                 .keyUrl("https://myvmvault.vault-int.azure-int.net/keys/{key}")
///                 .sourceVault(SourceVaultArgs.builder()
///                     .id("/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.KeyVault/vaults/myVMVault")
///                     .build())
///                 .build())
///             .diskEncryptionSetName("myDiskEncryptionSet")
///             .encryptionType("EncryptionAtRestWithCustomerKey")
///             .identity(EncryptionSetIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .location("West US")
///             .resourceGroupName("myResourceGroup")
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
/// const diskEncryptionSet = new azure_native.compute.DiskEncryptionSet("diskEncryptionSet", {
///     activeKey: {
///         keyUrl: "https://myvmvault.vault-int.azure-int.net/keys/{key}",
///         sourceVault: {
///             id: "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.KeyVault/vaults/myVMVault",
///         },
///     },
///     diskEncryptionSetName: "myDiskEncryptionSet",
///     encryptionType: azure_native.compute.DiskEncryptionSetType.EncryptionAtRestWithCustomerKey,
///     identity: {
///         type: azure_native.compute.DiskEncryptionSetIdentityType.SystemAssigned,
///     },
///     location: "West US",
///     resourceGroupName: "myResourceGroup",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// disk_encryption_set = azure_native.compute.DiskEncryptionSet("diskEncryptionSet",
///     active_key={
///         "key_url": "https://myvmvault.vault-int.azure-int.net/keys/{key}",
///         "source_vault": {
///             "id": "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.KeyVault/vaults/myVMVault",
///         },
///     },
///     disk_encryption_set_name="myDiskEncryptionSet",
///     encryption_type=azure_native.compute.DiskEncryptionSetType.ENCRYPTION_AT_REST_WITH_CUSTOMER_KEY,
///     identity={
///         "type": azure_native.compute.DiskEncryptionSetIdentityType.SYSTEM_ASSIGNED,
///     },
///     location="West US",
///     resource_group_name="myResourceGroup")
///
/// ```
///
/// ```yaml
/// resources:
///   diskEncryptionSet:
///     type: azure-native:compute:DiskEncryptionSet
///     properties:
///       activeKey:
///         keyUrl: https://myvmvault.vault-int.azure-int.net/keys/{key}
///         sourceVault:
///           id: /subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.KeyVault/vaults/myVMVault
///       diskEncryptionSetName: myDiskEncryptionSet
///       encryptionType: EncryptionAtRestWithCustomerKey
///       identity:
///         type: SystemAssigned
///       location: West US
///       resourceGroupName: myResourceGroup
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
/// $ pulumi import azure-native:compute:DiskEncryptionSet myDiskEncryptionSet /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/diskEncryptionSets/{diskEncryptionSetName}
/// ```
class DiskEncryptionSet extends pulumi.CustomResource {
  /// The key vault key which is currently used by this disk encryption set.
  late final pulumi.Output<KeyForDiskEncryptionSetResponse?> activeKey;

  /// The error that was encountered during auto-key rotation. If an error is present, then auto-key rotation will not be attempted until the error on this disk encryption set is fixed.
  late final pulumi.Output<ApiErrorResponse> autoKeyRotationError;

  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The type of key used to encrypt the data of the disk.
  late final pulumi.Output<String?> encryptionType;

  /// Multi-tenant application client id to access key vault in a different tenant. Setting the value to 'None' will clear the property.
  late final pulumi.Output<String?> federatedClientId;

  /// The managed identity for the disk encryption set. It should be given permission on the key vault before it can be used to encrypt disks.
  late final pulumi.Output<EncryptionSetIdentityResponse?> identity;

  /// The time when the active key of this disk encryption set was updated.
  late final pulumi.Output<String> lastKeyRotationTimestamp;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// A readonly collection of key vault keys previously used by this disk encryption set while a key rotation is in progress. It will be empty if there is no ongoing key rotation.
  late final pulumi.Output<List<Map<String, dynamic>>> previousKeys;

  /// The disk encryption set provisioning state.
  late final pulumi.Output<String> provisioningState;

  /// Set this flag to true to enable auto-updating of this disk encryption set to the latest key version.
  late final pulumi.Output<bool?> rotationToLatestKeyVersionEnabled;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [DiskEncryptionSet].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DiskEncryptionSet]. {@macro pulumi_compute_disk_encryption_set_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DiskEncryptionSet(
    String name, {
    DiskEncryptionSetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:compute:DiskEncryptionSet',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    activeKey = registerOutput<KeyForDiskEncryptionSetResponse?>(
      'activeKey',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return KeyForDiskEncryptionSetResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    autoKeyRotationError = registerOutput<ApiErrorResponse>(
      'autoKeyRotationError',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ApiErrorResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    azureApiVersion = registerOutput<String>('azureApiVersion');
    encryptionType = registerOutput<String?>('encryptionType');
    federatedClientId = registerOutput<String?>('federatedClientId');
    identity = registerOutput<EncryptionSetIdentityResponse?>(
      'identity',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return EncryptionSetIdentityResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    lastKeyRotationTimestamp = registerOutput<String>(
      'lastKeyRotationTimestamp',
    );
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    previousKeys = registerOutput<List<Map<String, dynamic>>>('previousKeys');
    provisioningState = registerOutput<String>('provisioningState');
    rotationToLatestKeyVersionEnabled = registerOutput<bool?>(
      'rotationToLatestKeyVersionEnabled',
    );
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
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
