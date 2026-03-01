import 'package:pulumi/pulumi.dart' as pulumi;
import 'server_key_args.dart';

/// Manages a Customer Managed Key for a PostgreSQL Server.
///
/// > **Note:** The `azure.postgresql.ServerKey` resource is deprecated and will be removed in v5.0 of the AzureRM Provider. Azure Database for PostgreSQL Single Server and its sub resources have been retired as of 2025-03-28. For more information, see https://techcommunity.microsoft.com/blog/adforpostgresql/retiring-azure-database-for-postgresql-single-server-in-2025/3783783.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const current = azure.core.getClientConfig({});
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleKeyVault = new azure.keyvault.KeyVault("example", {
///     name: "examplekv",
///     location: example.location,
///     resourceGroupName: example.name,
///     tenantId: current.then(current => current.tenantId),
///     skuName: "premium",
///     purgeProtectionEnabled: true,
/// });
/// const exampleServer = new azure.postgresql.Server("example", {
///     name: "example-postgre-server",
///     location: example.location,
///     resourceGroupName: example.name,
///     administratorLogin: "psqladmin",
///     administratorLoginPassword: "H@Sh1CoR3!",
///     skuName: "GP_Gen5_2",
///     version: "11",
///     storageMb: 51200,
///     sslEnforcementEnabled: true,
///     identity: {
///         type: "SystemAssigned",
///     },
/// });
/// const server = new azure.keyvault.AccessPolicy("server", {
///     keyVaultId: exampleKeyVault.id,
///     tenantId: current.then(current => current.tenantId),
///     objectId: exampleServer.identity.apply(identity => identity?.principalId),
///     keyPermissions: [
///         "Get",
///         "UnwrapKey",
///         "WrapKey",
///     ],
///     secretPermissions: ["Get"],
/// });
/// const client = new azure.keyvault.AccessPolicy("client", {
///     keyVaultId: exampleKeyVault.id,
///     tenantId: current.then(current => current.tenantId),
///     objectId: current.then(current => current.objectId),
///     keyPermissions: [
///         "Get",
///         "Create",
///         "Delete",
///         "List",
///         "Restore",
///         "Recover",
///         "UnwrapKey",
///         "WrapKey",
///         "Purge",
///         "Encrypt",
///         "Decrypt",
///         "Sign",
///         "Verify",
///         "GetRotationPolicy",
///     ],
///     secretPermissions: ["Get"],
/// });
/// const exampleKey = new azure.keyvault.Key("example", {
///     name: "tfex-key",
///     keyVaultId: exampleKeyVault.id,
///     keyType: "RSA",
///     keySize: 2048,
///     keyOpts: [
///         "decrypt",
///         "encrypt",
///         "sign",
///         "unwrapKey",
///         "verify",
///         "wrapKey",
///     ],
/// }, {
///     dependsOn: [
///         client,
///         server,
///     ],
/// });
/// const exampleServerKey = new azure.postgresql.ServerKey("example", {
///     serverId: exampleServer.id,
///     keyVaultKeyId: exampleKey.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// current = azure.core.get_client_config()
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_key_vault = azure.keyvault.KeyVault("example",
///     name="examplekv",
///     location=example.location,
///     resource_group_name=example.name,
///     tenant_id=current.tenant_id,
///     sku_name="premium",
///     purge_protection_enabled=True)
/// example_server = azure.postgresql.Server("example",
///     name="example-postgre-server",
///     location=example.location,
///     resource_group_name=example.name,
///     administrator_login="psqladmin",
///     administrator_login_password="H@Sh1CoR3!",
///     sku_name="GP_Gen5_2",
///     version="11",
///     storage_mb=51200,
///     ssl_enforcement_enabled=True,
///     identity={
///         "type": "SystemAssigned",
///     })
/// server = azure.keyvault.AccessPolicy("server",
///     key_vault_id=example_key_vault.id,
///     tenant_id=current.tenant_id,
///     object_id=example_server.identity.principal_id,
///     key_permissions=[
///         "Get",
///         "UnwrapKey",
///         "WrapKey",
///     ],
///     secret_permissions=["Get"])
/// client = azure.keyvault.AccessPolicy("client",
///     key_vault_id=example_key_vault.id,
///     tenant_id=current.tenant_id,
///     object_id=current.object_id,
///     key_permissions=[
///         "Get",
///         "Create",
///         "Delete",
///         "List",
///         "Restore",
///         "Recover",
///         "UnwrapKey",
///         "WrapKey",
///         "Purge",
///         "Encrypt",
///         "Decrypt",
///         "Sign",
///         "Verify",
///         "GetRotationPolicy",
///     ],
///     secret_permissions=["Get"])
/// example_key = azure.keyvault.Key("example",
///     name="tfex-key",
///     key_vault_id=example_key_vault.id,
///     key_type="RSA",
///     key_size=2048,
///     key_opts=[
///         "decrypt",
///         "encrypt",
///         "sign",
///         "unwrapKey",
///         "verify",
///         "wrapKey",
///     ],
///     opts = pulumi.ResourceOptions(depends_on=[
///             client,
///             server,
///         ]))
/// example_server_key = azure.postgresql.ServerKey("example",
///     server_id=example_server.id,
///     key_vault_key_id=example_key.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var current = Azure.Core.GetClientConfig.Invoke();
///
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleKeyVault = new Azure.KeyVault.KeyVault("example", new()
///     {
///         Name = "examplekv",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         TenantId = current.Apply(getClientConfigResult => getClientConfigResult.TenantId),
///         SkuName = "premium",
///         PurgeProtectionEnabled = true,
///     });
///
///     var exampleServer = new Azure.PostgreSql.Server("example", new()
///     {
///         Name = "example-postgre-server",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         AdministratorLogin = "psqladmin",
///         AdministratorLoginPassword = "H@Sh1CoR3!",
///         SkuName = "GP_Gen5_2",
///         Version = "11",
///         StorageMb = 51200,
///         SslEnforcementEnabled = true,
///         Identity = new Azure.PostgreSql.Inputs.ServerIdentityArgs
///         {
///             Type = "SystemAssigned",
///         },
///     });
///
///     var server = new Azure.KeyVault.AccessPolicy("server", new()
///     {
///         KeyVaultId = exampleKeyVault.Id,
///         TenantId = current.Apply(getClientConfigResult => getClientConfigResult.TenantId),
///         ObjectId = exampleServer.Identity.Apply(identity => identity?.PrincipalId),
///         KeyPermissions = new[]
///         {
///             "Get",
///             "UnwrapKey",
///             "WrapKey",
///         },
///         SecretPermissions = new[]
///         {
///             "Get",
///         },
///     });
///
///     var client = new Azure.KeyVault.AccessPolicy("client", new()
///     {
///         KeyVaultId = exampleKeyVault.Id,
///         TenantId = current.Apply(getClientConfigResult => getClientConfigResult.TenantId),
///         ObjectId = current.Apply(getClientConfigResult => getClientConfigResult.ObjectId),
///         KeyPermissions = new[]
///         {
///             "Get",
///             "Create",
///             "Delete",
///             "List",
///             "Restore",
///             "Recover",
///             "UnwrapKey",
///             "WrapKey",
///             "Purge",
///             "Encrypt",
///             "Decrypt",
///             "Sign",
///             "Verify",
///             "GetRotationPolicy",
///         },
///         SecretPermissions = new[]
///         {
///             "Get",
///         },
///     });
///
///     var exampleKey = new Azure.KeyVault.Key("example", new()
///     {
///         Name = "tfex-key",
///         KeyVaultId = exampleKeyVault.Id,
///         KeyType = "RSA",
///         KeySize = 2048,
///         KeyOpts = new[]
///         {
///             "decrypt",
///             "encrypt",
///             "sign",
///             "unwrapKey",
///             "verify",
///             "wrapKey",
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             client,
///             server,
///         },
///     });
///
///     var exampleServerKey = new Azure.PostgreSql.ServerKey("example", new()
///     {
///         ServerId = exampleServer.Id,
///         KeyVaultKeyId = exampleKey.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/keyvault"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/postgresql"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		current, err := core.GetClientConfig(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleKeyVault, err := keyvault.NewKeyVault(ctx, "example", &keyvault.KeyVaultArgs{
/// 			Name:                   pulumi.String("examplekv"),
/// 			Location:               example.Location,
/// 			ResourceGroupName:      example.Name,
/// 			TenantId:               pulumi.String(current.TenantId),
/// 			SkuName:                pulumi.String("premium"),
/// 			PurgeProtectionEnabled: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleServer, err := postgresql.NewServer(ctx, "example", &postgresql.ServerArgs{
/// 			Name:                       pulumi.String("example-postgre-server"),
/// 			Location:                   example.Location,
/// 			ResourceGroupName:          example.Name,
/// 			AdministratorLogin:         pulumi.String("psqladmin"),
/// 			AdministratorLoginPassword: pulumi.String("H@Sh1CoR3!"),
/// 			SkuName:                    pulumi.String("GP_Gen5_2"),
/// 			Version:                    pulumi.String("11"),
/// 			StorageMb:                  pulumi.Int(51200),
/// 			SslEnforcementEnabled:      pulumi.Bool(true),
/// 			Identity: &postgresql.ServerIdentityArgs{
/// 				Type: pulumi.String("SystemAssigned"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		server, err := keyvault.NewAccessPolicy(ctx, "server", &keyvault.AccessPolicyArgs{
/// 			KeyVaultId: exampleKeyVault.ID(),
/// 			TenantId:   pulumi.String(current.TenantId),
/// 			ObjectId: pulumi.String(exampleServer.Identity.ApplyT(func(identity postgresql.ServerIdentity) (*string, error) {
/// 				return &identity.PrincipalId, nil
/// 			}).(pulumi.StringPtrOutput)),
/// 			KeyPermissions: pulumi.StringArray{
/// 				pulumi.String("Get"),
/// 				pulumi.String("UnwrapKey"),
/// 				pulumi.String("WrapKey"),
/// 			},
/// 			SecretPermissions: pulumi.StringArray{
/// 				pulumi.String("Get"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		client, err := keyvault.NewAccessPolicy(ctx, "client", &keyvault.AccessPolicyArgs{
/// 			KeyVaultId: exampleKeyVault.ID(),
/// 			TenantId:   pulumi.String(current.TenantId),
/// 			ObjectId:   pulumi.String(current.ObjectId),
/// 			KeyPermissions: pulumi.StringArray{
/// 				pulumi.String("Get"),
/// 				pulumi.String("Create"),
/// 				pulumi.String("Delete"),
/// 				pulumi.String("List"),
/// 				pulumi.String("Restore"),
/// 				pulumi.String("Recover"),
/// 				pulumi.String("UnwrapKey"),
/// 				pulumi.String("WrapKey"),
/// 				pulumi.String("Purge"),
/// 				pulumi.String("Encrypt"),
/// 				pulumi.String("Decrypt"),
/// 				pulumi.String("Sign"),
/// 				pulumi.String("Verify"),
/// 				pulumi.String("GetRotationPolicy"),
/// 			},
/// 			SecretPermissions: pulumi.StringArray{
/// 				pulumi.String("Get"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleKey, err := keyvault.NewKey(ctx, "example", &keyvault.KeyArgs{
/// 			Name:       pulumi.String("tfex-key"),
/// 			KeyVaultId: exampleKeyVault.ID(),
/// 			KeyType:    pulumi.String("RSA"),
/// 			KeySize:    pulumi.Int(2048),
/// 			KeyOpts: pulumi.StringArray{
/// 				pulumi.String("decrypt"),
/// 				pulumi.String("encrypt"),
/// 				pulumi.String("sign"),
/// 				pulumi.String("unwrapKey"),
/// 				pulumi.String("verify"),
/// 				pulumi.String("wrapKey"),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			client,
/// 			server,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = postgresql.NewServerKey(ctx, "example", &postgresql.ServerKeyArgs{
/// 			ServerId:      exampleServer.ID(),
/// 			KeyVaultKeyId: exampleKey.ID(),
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
/// import com.pulumi.azure.core.CoreFunctions;
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.keyvault.KeyVault;
/// import com.pulumi.azure.keyvault.KeyVaultArgs;
/// import com.pulumi.azure.postgresql.Server;
/// import com.pulumi.azure.postgresql.ServerArgs;
/// import com.pulumi.azure.postgresql.inputs.ServerIdentityArgs;
/// import com.pulumi.azure.keyvault.AccessPolicy;
/// import com.pulumi.azure.keyvault.AccessPolicyArgs;
/// import com.pulumi.azure.keyvault.Key;
/// import com.pulumi.azure.keyvault.KeyArgs;
/// import com.pulumi.azure.postgresql.ServerKey;
/// import com.pulumi.azure.postgresql.ServerKeyArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         final var current = CoreFunctions.getClientConfig(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleKeyVault = new KeyVault("exampleKeyVault", KeyVaultArgs.builder()
///             .name("examplekv")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .tenantId(current.tenantId())
///             .skuName("premium")
///             .purgeProtectionEnabled(true)
///             .build());
///
///         var exampleServer = new Server("exampleServer", ServerArgs.builder()
///             .name("example-postgre-server")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .administratorLogin("psqladmin")
///             .administratorLoginPassword("H@Sh1CoR3!")
///             .skuName("GP_Gen5_2")
///             .version("11")
///             .storageMb(51200)
///             .sslEnforcementEnabled(true)
///             .identity(ServerIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .build());
///
///         var server = new AccessPolicy("server", AccessPolicyArgs.builder()
///             .keyVaultId(exampleKeyVault.id())
///             .tenantId(current.tenantId())
///             .objectId(exampleServer.identity().applyValue(_identity -> _identity.principalId()))
///             .keyPermissions(
///                 "Get",
///                 "UnwrapKey",
///                 "WrapKey")
///             .secretPermissions("Get")
///             .build());
///
///         var client = new AccessPolicy("client", AccessPolicyArgs.builder()
///             .keyVaultId(exampleKeyVault.id())
///             .tenantId(current.tenantId())
///             .objectId(current.objectId())
///             .keyPermissions(
///                 "Get",
///                 "Create",
///                 "Delete",
///                 "List",
///                 "Restore",
///                 "Recover",
///                 "UnwrapKey",
///                 "WrapKey",
///                 "Purge",
///                 "Encrypt",
///                 "Decrypt",
///                 "Sign",
///                 "Verify",
///                 "GetRotationPolicy")
///             .secretPermissions("Get")
///             .build());
///
///         var exampleKey = new Key("exampleKey", KeyArgs.builder()
///             .name("tfex-key")
///             .keyVaultId(exampleKeyVault.id())
///             .keyType("RSA")
///             .keySize(2048)
///             .keyOpts(
///                 "decrypt",
///                 "encrypt",
///                 "sign",
///                 "unwrapKey",
///                 "verify",
///                 "wrapKey")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(
///                     client,
///                     server)
///                 .build());
///
///         var exampleServerKey = new ServerKey("exampleServerKey", ServerKeyArgs.builder()
///             .serverId(exampleServer.id())
///             .keyVaultKeyId(exampleKey.id())
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
///       name: example-resources
///       location: West Europe
///   exampleKeyVault:
///     type: azure:keyvault:KeyVault
///     name: example
///     properties:
///       name: examplekv
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       tenantId: ${current.tenantId}
///       skuName: premium
///       purgeProtectionEnabled: true
///   server:
///     type: azure:keyvault:AccessPolicy
///     properties:
///       keyVaultId: ${exampleKeyVault.id}
///       tenantId: ${current.tenantId}
///       objectId: ${exampleServer.identity.principalId}
///       keyPermissions:
///         - Get
///         - UnwrapKey
///         - WrapKey
///       secretPermissions:
///         - Get
///   client:
///     type: azure:keyvault:AccessPolicy
///     properties:
///       keyVaultId: ${exampleKeyVault.id}
///       tenantId: ${current.tenantId}
///       objectId: ${current.objectId}
///       keyPermissions:
///         - Get
///         - Create
///         - Delete
///         - List
///         - Restore
///         - Recover
///         - UnwrapKey
///         - WrapKey
///         - Purge
///         - Encrypt
///         - Decrypt
///         - Sign
///         - Verify
///         - GetRotationPolicy
///       secretPermissions:
///         - Get
///   exampleKey:
///     type: azure:keyvault:Key
///     name: example
///     properties:
///       name: tfex-key
///       keyVaultId: ${exampleKeyVault.id}
///       keyType: RSA
///       keySize: 2048
///       keyOpts:
///         - decrypt
///         - encrypt
///         - sign
///         - unwrapKey
///         - verify
///         - wrapKey
///     options:
///       dependsOn:
///         - ${client}
///         - ${server}
///   exampleServer:
///     type: azure:postgresql:Server
///     name: example
///     properties:
///       name: example-postgre-server
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       administratorLogin: psqladmin
///       administratorLoginPassword: H@Sh1CoR3!
///       skuName: GP_Gen5_2
///       version: '11'
///       storageMb: 51200
///       sslEnforcementEnabled: true
///       identity:
///         type: SystemAssigned
///   exampleServerKey:
///     type: azure:postgresql:ServerKey
///     name: example
///     properties:
///       serverId: ${exampleServer.id}
///       keyVaultKeyId: ${exampleKey.id}
/// variables:
///   current:
///     fn::invoke:
///       function: azure:core:getClientConfig
///       arguments: {}
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.DBforPostgreSQL` - 2020-01-01
///
/// ## Import
///
/// A PostgreSQL Server Key can be imported using the `resource id` of the PostgreSQL Server Key, e.g.
///
/// ```sh
/// $ pulumi import azure:postgresql/serverKey:ServerKey example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.DBforPostgreSQL/servers/server1/keys/keyvaultname_key-name_keyversion
/// ```
class ServerKey extends pulumi.CustomResource {
  /// The URL to a Key Vault Key.
  late final pulumi.Output<String> keyVaultKeyId;
  /// The ID of the PostgreSQL Server. Changing this forces a new resource to be created.
  late final pulumi.Output<String> serverId;

  /// Creates a new [ServerKey].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ServerKey]. {@macro pulumi_postgresql_server_key_server_key_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ServerKey(
    String name, {
    ServerKeyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:postgresql/serverKey:ServerKey',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.keyVaultKeyId = registerOutput<String>('keyVaultKeyId');
    this.serverId = registerOutput<String>('serverId');
  }
}
