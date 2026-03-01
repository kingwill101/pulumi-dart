import 'package:pulumi/pulumi.dart' as pulumi;
import 'blob_container_args.dart';
import 'immutability_policy_properties_response.dart';
import 'immutable_storage_with_versioning_response.dart';
import 'legal_hold_properties_response.dart';

/// Properties of the blob container, including Id, resource name, resource type, Etag.
///
/// Uses Azure REST API version 2024-01-01. In version 2.x of the Azure Native provider, it used API version 2022-09-01.
///
/// Other available API versions: 2022-09-01, 2023-01-01, 2023-04-01, 2023-05-01, 2025-01-01, 2025-06-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native storage [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### PutContainerWithDefaultEncryptionScope
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var blobContainer = new AzureNative.Storage.BlobContainer("blobContainer", new()
///     {
///         AccountName = "sto328",
///         ContainerName = "container6185",
///         DefaultEncryptionScope = "encryptionscope185",
///         DenyEncryptionScopeOverride = true,
///         ResourceGroupName = "res3376",
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
/// 	storage "github.com/pulumi/pulumi-azure-native-sdk/storage/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := storage.NewBlobContainer(ctx, "blobContainer", &storage.BlobContainerArgs{
/// 			AccountName:                 pulumi.String("sto328"),
/// 			ContainerName:               pulumi.String("container6185"),
/// 			DefaultEncryptionScope:      pulumi.String("encryptionscope185"),
/// 			DenyEncryptionScopeOverride: pulumi.Bool(true),
/// 			ResourceGroupName:           pulumi.String("res3376"),
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
/// import com.pulumi.azurenative.storage.BlobContainer;
/// import com.pulumi.azurenative.storage.BlobContainerArgs;
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
///         var blobContainer = new BlobContainer("blobContainer", BlobContainerArgs.builder()
///             .accountName("sto328")
///             .containerName("container6185")
///             .defaultEncryptionScope("encryptionscope185")
///             .denyEncryptionScopeOverride(true)
///             .resourceGroupName("res3376")
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
/// const blobContainer = new azure_native.storage.BlobContainer("blobContainer", {
///     accountName: "sto328",
///     containerName: "container6185",
///     defaultEncryptionScope: "encryptionscope185",
///     denyEncryptionScopeOverride: true,
///     resourceGroupName: "res3376",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// blob_container = azure_native.storage.BlobContainer("blobContainer",
///     account_name="sto328",
///     container_name="container6185",
///     default_encryption_scope="encryptionscope185",
///     deny_encryption_scope_override=True,
///     resource_group_name="res3376")
///
/// ```
///
/// ```yaml
/// resources:
///   blobContainer:
///     type: azure-native:storage:BlobContainer
///     properties:
///       accountName: sto328
///       containerName: container6185
///       defaultEncryptionScope: encryptionscope185
///       denyEncryptionScopeOverride: true
///       resourceGroupName: res3376
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### PutContainerWithObjectLevelWorm
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var blobContainer = new AzureNative.Storage.BlobContainer("blobContainer", new()
///     {
///         AccountName = "sto328",
///         ContainerName = "container6185",
///         ImmutableStorageWithVersioning = new AzureNative.Storage.Inputs.ImmutableStorageWithVersioningArgs
///         {
///             Enabled = true,
///         },
///         ResourceGroupName = "res3376",
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
/// 	storage "github.com/pulumi/pulumi-azure-native-sdk/storage/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := storage.NewBlobContainer(ctx, "blobContainer", &storage.BlobContainerArgs{
/// 			AccountName:   pulumi.String("sto328"),
/// 			ContainerName: pulumi.String("container6185"),
/// 			ImmutableStorageWithVersioning: &storage.ImmutableStorageWithVersioningArgs{
/// 				Enabled: pulumi.Bool(true),
/// 			},
/// 			ResourceGroupName: pulumi.String("res3376"),
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
/// import com.pulumi.azurenative.storage.BlobContainer;
/// import com.pulumi.azurenative.storage.BlobContainerArgs;
/// import com.pulumi.azurenative.storage.inputs.ImmutableStorageWithVersioningArgs;
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
///         var blobContainer = new BlobContainer("blobContainer", BlobContainerArgs.builder()
///             .accountName("sto328")
///             .containerName("container6185")
///             .immutableStorageWithVersioning(ImmutableStorageWithVersioningArgs.builder()
///                 .enabled(true)
///                 .build())
///             .resourceGroupName("res3376")
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
/// const blobContainer = new azure_native.storage.BlobContainer("blobContainer", {
///     accountName: "sto328",
///     containerName: "container6185",
///     immutableStorageWithVersioning: {
///         enabled: true,
///     },
///     resourceGroupName: "res3376",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// blob_container = azure_native.storage.BlobContainer("blobContainer",
///     account_name="sto328",
///     container_name="container6185",
///     immutable_storage_with_versioning={
///         "enabled": True,
///     },
///     resource_group_name="res3376")
///
/// ```
///
/// ```yaml
/// resources:
///   blobContainer:
///     type: azure-native:storage:BlobContainer
///     properties:
///       accountName: sto328
///       containerName: container6185
///       immutableStorageWithVersioning:
///         enabled: true
///       resourceGroupName: res3376
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### PutContainers
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var blobContainer = new AzureNative.Storage.BlobContainer("blobContainer", new()
///     {
///         AccountName = "sto328",
///         ContainerName = "container6185",
///         ResourceGroupName = "res3376",
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
/// 	storage "github.com/pulumi/pulumi-azure-native-sdk/storage/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := storage.NewBlobContainer(ctx, "blobContainer", &storage.BlobContainerArgs{
/// 			AccountName:       pulumi.String("sto328"),
/// 			ContainerName:     pulumi.String("container6185"),
/// 			ResourceGroupName: pulumi.String("res3376"),
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
/// import com.pulumi.azurenative.storage.BlobContainer;
/// import com.pulumi.azurenative.storage.BlobContainerArgs;
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
///         var blobContainer = new BlobContainer("blobContainer", BlobContainerArgs.builder()
///             .accountName("sto328")
///             .containerName("container6185")
///             .resourceGroupName("res3376")
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
/// const blobContainer = new azure_native.storage.BlobContainer("blobContainer", {
///     accountName: "sto328",
///     containerName: "container6185",
///     resourceGroupName: "res3376",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// blob_container = azure_native.storage.BlobContainer("blobContainer",
///     account_name="sto328",
///     container_name="container6185",
///     resource_group_name="res3376")
///
/// ```
///
/// ```yaml
/// resources:
///   blobContainer:
///     type: azure-native:storage:BlobContainer
///     properties:
///       accountName: sto328
///       containerName: container6185
///       resourceGroupName: res3376
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
/// $ pulumi import azure-native:storage:BlobContainer container6185 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}/blobServices/default/containers/{containerName}
/// ```
class BlobContainer extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Default the container to use specified encryption scope for all writes.
  late final pulumi.Output<String?> defaultEncryptionScope;
  /// Indicates whether the blob container was deleted.
  late final pulumi.Output<bool> deleted;
  /// Blob container deletion time.
  late final pulumi.Output<String> deletedTime;
  /// Block override of encryption scope from the container default.
  late final pulumi.Output<bool?> denyEncryptionScopeOverride;
  /// Enable NFSv3 all squash on blob container.
  late final pulumi.Output<bool?> enableNfsV3AllSquash;
  /// Enable NFSv3 root squash on blob container.
  late final pulumi.Output<bool?> enableNfsV3RootSquash;
  /// Resource Etag.
  late final pulumi.Output<String> etag;
  /// The hasImmutabilityPolicy public property is set to true by SRP if ImmutabilityPolicy has been created for this container. The hasImmutabilityPolicy public property is set to false by SRP if ImmutabilityPolicy has not been created for this container.
  late final pulumi.Output<bool> hasImmutabilityPolicy;
  /// The hasLegalHold public property is set to true by SRP if there are at least one existing tag. The hasLegalHold public property is set to false by SRP if all existing legal hold tags are cleared out. There can be a maximum of 1000 blob containers with hasLegalHold=true for a given account.
  late final pulumi.Output<bool> hasLegalHold;
  /// The ImmutabilityPolicy property of the container.
  late final pulumi.Output<ImmutabilityPolicyPropertiesResponse> immutabilityPolicy;
  /// The object level immutability property of the container. The property is immutable and can only be set to true at the container creation time. Existing containers must undergo a migration process.
  late final pulumi.Output<ImmutableStorageWithVersioningResponse?> immutableStorageWithVersioning;
  /// Returns the date and time the container was last modified.
  late final pulumi.Output<String> lastModifiedTime;
  /// Specifies whether the lease on a container is of infinite or fixed duration, only when the container is leased.
  late final pulumi.Output<String> leaseDuration;
  /// Lease state of the container.
  late final pulumi.Output<String> leaseState;
  /// The lease status of the container.
  late final pulumi.Output<String> leaseStatus;
  /// The LegalHold property of the container.
  late final pulumi.Output<LegalHoldPropertiesResponse> legalHold;
  /// A name-value pair to associate with the container as metadata.
  late final pulumi.Output<Map<String, String>?> metadata;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Specifies whether data in the container may be accessed publicly and the level of access.
  late final pulumi.Output<String?> publicAccess;
  /// Remaining retention days for soft deleted blob container.
  late final pulumi.Output<int> remainingRetentionDays;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// The version of the deleted blob container.
  late final pulumi.Output<String> version;

  /// Creates a new [BlobContainer].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BlobContainer]. {@macro pulumi_storage_blob_container_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BlobContainer(
    String name, {
    BlobContainerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:storage:BlobContainer',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.defaultEncryptionScope = registerOutput<String?>('defaultEncryptionScope');
    this.deleted = registerOutput<bool>('deleted');
    this.deletedTime = registerOutput<String>('deletedTime');
    this.denyEncryptionScopeOverride = registerOutput<bool?>('denyEncryptionScopeOverride');
    this.enableNfsV3AllSquash = registerOutput<bool?>('enableNfsV3AllSquash');
    this.enableNfsV3RootSquash = registerOutput<bool?>('enableNfsV3RootSquash');
    this.etag = registerOutput<String>('etag');
    this.hasImmutabilityPolicy = registerOutput<bool>('hasImmutabilityPolicy');
    this.hasLegalHold = registerOutput<bool>('hasLegalHold');
    this.immutabilityPolicy = registerOutput<ImmutabilityPolicyPropertiesResponse>('immutabilityPolicy');
    this.immutableStorageWithVersioning = registerOutput<ImmutableStorageWithVersioningResponse?>('immutableStorageWithVersioning');
    this.lastModifiedTime = registerOutput<String>('lastModifiedTime');
    this.leaseDuration = registerOutput<String>('leaseDuration');
    this.leaseState = registerOutput<String>('leaseState');
    this.leaseStatus = registerOutput<String>('leaseStatus');
    this.legalHold = registerOutput<LegalHoldPropertiesResponse>('legalHold');
    this.metadata = registerOutput<Map<String, String>?>('metadata');
    this.name = registerOutput<String>('name');
    this.publicAccess = registerOutput<String?>('publicAccess');
    this.remainingRetentionDays = registerOutput<int>('remainingRetentionDays');
    this.type = registerOutput<String>('type');
    this.version = registerOutput<String>('version');
  }
}
