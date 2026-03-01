import 'package:pulumi/pulumi.dart' as pulumi;
import 'local_user_args.dart';
import 'local_user_permission_scope.dart';
import 'local_user_ssh_authorized_key.dart';

/// Manages a Storage Account Local User.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-rg",
///     location: "WestEurope",
/// });
/// const exampleAccount = new azure.storage.Account("example", {
///     name: "example-account",
///     resourceGroupName: example.name,
///     location: example.location,
///     accountKind: "StorageV2",
///     accountTier: "Standard",
///     accountReplicationType: "LRS",
///     isHnsEnabled: true,
/// });
/// const exampleContainer = new azure.storage.Container("example", {
///     name: "example-container",
///     storageAccountName: exampleAccount.name,
/// });
/// const exampleLocalUser = new azure.storage.LocalUser("example", {
///     name: "user1",
///     storageAccountId: exampleAccount.id,
///     sshKeyEnabled: true,
///     sshPasswordEnabled: true,
///     homeDirectory: "example_path",
///     sshAuthorizedKeys: [
///         {
///             description: "key1",
///             key: firstPublicKey,
///         },
///         {
///             description: "key2",
///             key: secondPublicKey,
///         },
///     ],
///     permissionScopes: [{
///         permissions: {
///             read: true,
///             create: true,
///         },
///         service: "blob",
///         resourceName: exampleContainer.name,
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-rg",
///     location="WestEurope")
/// example_account = azure.storage.Account("example",
///     name="example-account",
///     resource_group_name=example.name,
///     location=example.location,
///     account_kind="StorageV2",
///     account_tier="Standard",
///     account_replication_type="LRS",
///     is_hns_enabled=True)
/// example_container = azure.storage.Container("example",
///     name="example-container",
///     storage_account_name=example_account.name)
/// example_local_user = azure.storage.LocalUser("example",
///     name="user1",
///     storage_account_id=example_account.id,
///     ssh_key_enabled=True,
///     ssh_password_enabled=True,
///     home_directory="example_path",
///     ssh_authorized_keys=[
///         {
///             "description": "key1",
///             "key": first_public_key,
///         },
///         {
///             "description": "key2",
///             "key": second_public_key,
///         },
///     ],
///     permission_scopes=[{
///         "permissions": {
///             "read": True,
///             "create": True,
///         },
///         "service": "blob",
///         "resource_name": example_container.name,
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-rg",
///         Location = "WestEurope",
///     });
///
///     var exampleAccount = new Azure.Storage.Account("example", new()
///     {
///         Name = "example-account",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         AccountKind = "StorageV2",
///         AccountTier = "Standard",
///         AccountReplicationType = "LRS",
///         IsHnsEnabled = true,
///     });
///
///     var exampleContainer = new Azure.Storage.Container("example", new()
///     {
///         Name = "example-container",
///         StorageAccountName = exampleAccount.Name,
///     });
///
///     var exampleLocalUser = new Azure.Storage.LocalUser("example", new()
///     {
///         Name = "user1",
///         StorageAccountId = exampleAccount.Id,
///         SshKeyEnabled = true,
///         SshPasswordEnabled = true,
///         HomeDirectory = "example_path",
///         SshAuthorizedKeys = new[]
///         {
///             new Azure.Storage.Inputs.LocalUserSshAuthorizedKeyArgs
///             {
///                 Description = "key1",
///                 Key = firstPublicKey,
///             },
///             new Azure.Storage.Inputs.LocalUserSshAuthorizedKeyArgs
///             {
///                 Description = "key2",
///                 Key = secondPublicKey,
///             },
///         },
///         PermissionScopes = new[]
///         {
///             new Azure.Storage.Inputs.LocalUserPermissionScopeArgs
///             {
///                 Permissions = new Azure.Storage.Inputs.LocalUserPermissionScopePermissionsArgs
///                 {
///                     Read = true,
///                     Create = true,
///                 },
///                 Service = "blob",
///                 ResourceName = exampleContainer.Name,
///             },
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
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-rg"),
/// 			Location: pulumi.String("WestEurope"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAccount, err := storage.NewAccount(ctx, "example", &storage.AccountArgs{
/// 			Name:                   pulumi.String("example-account"),
/// 			ResourceGroupName:      example.Name,
/// 			Location:               example.Location,
/// 			AccountKind:            pulumi.String("StorageV2"),
/// 			AccountTier:            pulumi.String("Standard"),
/// 			AccountReplicationType: pulumi.String("LRS"),
/// 			IsHnsEnabled:           pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleContainer, err := storage.NewContainer(ctx, "example", &storage.ContainerArgs{
/// 			Name:               pulumi.String("example-container"),
/// 			StorageAccountName: exampleAccount.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = storage.NewLocalUser(ctx, "example", &storage.LocalUserArgs{
/// 			Name:               pulumi.String("user1"),
/// 			StorageAccountId:   exampleAccount.ID(),
/// 			SshKeyEnabled:      pulumi.Bool(true),
/// 			SshPasswordEnabled: pulumi.Bool(true),
/// 			HomeDirectory:      pulumi.String("example_path"),
/// 			SshAuthorizedKeys: storage.LocalUserSshAuthorizedKeyArray{
/// 				&storage.LocalUserSshAuthorizedKeyArgs{
/// 					Description: pulumi.String("key1"),
/// 					Key:         pulumi.Any(firstPublicKey),
/// 				},
/// 				&storage.LocalUserSshAuthorizedKeyArgs{
/// 					Description: pulumi.String("key2"),
/// 					Key:         pulumi.Any(secondPublicKey),
/// 				},
/// 			},
/// 			PermissionScopes: storage.LocalUserPermissionScopeArray{
/// 				&storage.LocalUserPermissionScopeArgs{
/// 					Permissions: &storage.LocalUserPermissionScopePermissionsArgs{
/// 						Read:   pulumi.Bool(true),
/// 						Create: pulumi.Bool(true),
/// 					},
/// 					Service:      pulumi.String("blob"),
/// 					ResourceName: exampleContainer.Name,
/// 				},
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
/// import com.pulumi.azure.storage.Account;
/// import com.pulumi.azure.storage.AccountArgs;
/// import com.pulumi.azure.storage.Container;
/// import com.pulumi.azure.storage.ContainerArgs;
/// import com.pulumi.azure.storage.LocalUser;
/// import com.pulumi.azure.storage.LocalUserArgs;
/// import com.pulumi.azure.storage.inputs.LocalUserSshAuthorizedKeyArgs;
/// import com.pulumi.azure.storage.inputs.LocalUserPermissionScopeArgs;
/// import com.pulumi.azure.storage.inputs.LocalUserPermissionScopePermissionsArgs;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-rg")
///             .location("WestEurope")
///             .build());
///
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("example-account")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .accountKind("StorageV2")
///             .accountTier("Standard")
///             .accountReplicationType("LRS")
///             .isHnsEnabled(true)
///             .build());
///
///         var exampleContainer = new Container("exampleContainer", ContainerArgs.builder()
///             .name("example-container")
///             .storageAccountName(exampleAccount.name())
///             .build());
///
///         var exampleLocalUser = new LocalUser("exampleLocalUser", LocalUserArgs.builder()
///             .name("user1")
///             .storageAccountId(exampleAccount.id())
///             .sshKeyEnabled(true)
///             .sshPasswordEnabled(true)
///             .homeDirectory("example_path")
///             .sshAuthorizedKeys(
///                 LocalUserSshAuthorizedKeyArgs.builder()
///                     .description("key1")
///                     .key(firstPublicKey)
///                     .build(),
///                 LocalUserSshAuthorizedKeyArgs.builder()
///                     .description("key2")
///                     .key(secondPublicKey)
///                     .build())
///             .permissionScopes(LocalUserPermissionScopeArgs.builder()
///                 .permissions(LocalUserPermissionScopePermissionsArgs.builder()
///                     .read(true)
///                     .create(true)
///                     .build())
///                 .service("blob")
///                 .resourceName(exampleContainer.name())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: example-rg
///       location: WestEurope
///   exampleAccount:
///     type: azure:storage:Account
///     name: example
///     properties:
///       name: example-account
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       accountKind: StorageV2
///       accountTier: Standard
///       accountReplicationType: LRS
///       isHnsEnabled: true
///   exampleContainer:
///     type: azure:storage:Container
///     name: example
///     properties:
///       name: example-container
///       storageAccountName: ${exampleAccount.name}
///   exampleLocalUser:
///     type: azure:storage:LocalUser
///     name: example
///     properties:
///       name: user1
///       storageAccountId: ${exampleAccount.id}
///       sshKeyEnabled: true
///       sshPasswordEnabled: true
///       homeDirectory: example_path
///       sshAuthorizedKeys:
///         - description: key1
///           key: ${firstPublicKey}
///         - description: key2
///           key: ${secondPublicKey}
///       permissionScopes:
///         - permissions:
///             read: true
///             create: true
///           service: blob
///           resourceName: ${exampleContainer.name}
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Storage` - 2023-05-01
///
/// ## Import
///
/// Storage Account Local Users can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:storage/localUser:LocalUser example /subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/resGroup1/providers/Microsoft.Storage/storageAccounts/storageAccount1/localUsers/user1
/// ```
class LocalUser extends pulumi.CustomResource {
  /// The home directory of the Storage Account Local User.
  late final pulumi.Output<String?> homeDirectory;
  /// The name which should be used for this Storage Account Local User. Changing this forces a new Storage Account Local User to be created.
  late final pulumi.Output<String> name;
  /// The value of the password, which is only available when `ssh_password_enabled` is set to `true`.
  late final pulumi.Output<String> password;
  /// One or more `permission_scope` blocks as defined below.
  late final pulumi.Output<List<LocalUserPermissionScope>?> permissionScopes;
  /// The unique Security Identifier of this Storage Account Local User.
  late final pulumi.Output<String> sid;
  /// One or more `ssh_authorized_key` blocks as defined below.
  late final pulumi.Output<List<LocalUserSshAuthorizedKey>?> sshAuthorizedKeys;
  /// Specifies whether SSH Key Authentication is enabled. Defaults to `false`.
  late final pulumi.Output<bool?> sshKeyEnabled;
  /// Specifies whether SSH Password Authentication is enabled. Defaults to `false`.
  late final pulumi.Output<bool?> sshPasswordEnabled;
  /// The ID of the Storage Account that this Storage Account Local User resides in. Changing this forces a new Storage Account Local User to be created.
  late final pulumi.Output<String> storageAccountId;

  /// Creates a new [LocalUser].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LocalUser]. {@macro pulumi_storage_local_user_local_user_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LocalUser(
    String name, {
    LocalUserArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:storage/localUser:LocalUser',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.homeDirectory = registerOutput<String?>('homeDirectory');
    this.name = registerOutput<String>('name');
    this.password = registerOutput<String>('password');
    this.permissionScopes = registerOutput<List<LocalUserPermissionScope>?>('permissionScopes');
    this.sid = registerOutput<String>('sid');
    this.sshAuthorizedKeys = registerOutput<List<LocalUserSshAuthorizedKey>?>('sshAuthorizedKeys');
    this.sshKeyEnabled = registerOutput<bool?>('sshKeyEnabled');
    this.sshPasswordEnabled = registerOutput<bool?>('sshPasswordEnabled');
    this.storageAccountId = registerOutput<String>('storageAccountId');
  }
}
