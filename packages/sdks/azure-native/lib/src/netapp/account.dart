import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_args.dart';
import 'account_encryption_response.dart';
import 'active_directory_response.dart';
import 'managed_service_identity_response.dart';
import 'system_data_response.dart';

/// NetApp account resource
///
/// Uses Azure REST API version 2024-09-01. In version 2.x of the Azure Native provider, it used API version 2022-11-01.
///
/// Other available API versions: 2022-11-01, 2022-11-01-preview, 2023-05-01, 2023-05-01-preview, 2023-07-01, 2023-07-01-preview, 2023-11-01, 2023-11-01-preview, 2024-01-01, 2024-03-01, 2024-03-01-preview, 2024-05-01, 2024-05-01-preview, 2024-07-01, 2024-07-01-preview, 2024-09-01-preview, 2025-01-01, 2025-01-01-preview, 2025-03-01, 2025-03-01-preview, 2025-06-01, 2025-07-01-preview, 2025-08-01, 2025-08-01-preview, 2025-09-01, 2025-09-01-preview, 2025-12-01, 2025-12-15-preview, 2026-01-01, 2026-01-15-preview, 2026-03-01, 2026-03-15-preview, 2026-04-01, 2026-04-15-preview, 2026-05-01, 2026-05-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native netapp [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Accounts_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var account = new AzureNative.NetApp.Account("account", new()
///     {
///         AccountName = "account1",
///         Location = "eastus",
///         ResourceGroupName = "myRG",
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
/// 	netapp "github.com/pulumi/pulumi-azure-native-sdk/netapp/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := netapp.NewAccount(ctx, "account", &netapp.AccountArgs{
/// 			AccountName:       pulumi.String("account1"),
/// 			Location:          pulumi.String("eastus"),
/// 			ResourceGroupName: pulumi.String("myRG"),
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
/// resource "azure-native_netapp_account" "account" {
///   account_name        = "account1"
///   location            = "eastus"
///   resource_group_name = "myRG"
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
/// import com.pulumi.azurenative.netapp.Account;
/// import com.pulumi.azurenative.netapp.AccountArgs;
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
///         var account = new Account("account", AccountArgs.builder()
///             .accountName("account1")
///             .location("eastus")
///             .resourceGroupName("myRG")
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
/// const account = new azure_native.netapp.Account("account", {
///     accountName: "account1",
///     location: "eastus",
///     resourceGroupName: "myRG",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// account = azure_native.netapp.Account("account",
///     account_name="account1",
///     location="eastus",
///     resource_group_name="myRG")
///
/// ```
///
/// ```yaml
/// resources:
///   account:
///     type: azure-native:netapp:Account
///     properties:
///       accountName: account1
///       location: eastus
///       resourceGroupName: myRG
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Accounts_CreateOrUpdateWithActiveDirectory
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var account = new AzureNative.NetApp.Account("account", new()
///     {
///         AccountName = "account1",
///         ActiveDirectories = new[]
///         {
///             new AzureNative.NetApp.Inputs.ActiveDirectoryArgs
///             {
///                 AesEncryption = true,
///                 Dns = "10.10.10.3",
///                 Domain = "10.10.10.3",
///                 LdapOverTLS = false,
///                 LdapSigning = false,
///                 OrganizationalUnit = "OU=Engineering",
///                 Password = "ad_password",
///                 Site = "SiteName",
///                 SmbServerName = "SMBServer",
///                 Username = "ad_user_name",
///             },
///         },
///         Location = "eastus",
///         ResourceGroupName = "myRG",
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
/// 	netapp "github.com/pulumi/pulumi-azure-native-sdk/netapp/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := netapp.NewAccount(ctx, "account", &netapp.AccountArgs{
/// 			AccountName: pulumi.String("account1"),
/// 			ActiveDirectories: netapp.ActiveDirectoryArray{
/// 				&netapp.ActiveDirectoryArgs{
/// 					AesEncryption:      pulumi.Bool(true),
/// 					Dns:                pulumi.String("10.10.10.3"),
/// 					Domain:             pulumi.String("10.10.10.3"),
/// 					LdapOverTLS:        pulumi.Bool(false),
/// 					LdapSigning:        pulumi.Bool(false),
/// 					OrganizationalUnit: pulumi.String("OU=Engineering"),
/// 					Password:           pulumi.String("ad_password"),
/// 					Site:               pulumi.String("SiteName"),
/// 					SmbServerName:      pulumi.String("SMBServer"),
/// 					Username:           pulumi.String("ad_user_name"),
/// 				},
/// 			},
/// 			Location:          pulumi.String("eastus"),
/// 			ResourceGroupName: pulumi.String("myRG"),
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
/// resource "azure-native_netapp_account" "account" {
///   account_name = "account1"
///   active_directories {
///     aes_encryption      = true
///     dns                 = "10.10.10.3"
///     domain              = "10.10.10.3"
///     ldap_over_tls       = false
///     ldap_signing        = false
///     organizational_unit = "OU=Engineering"
///     password            = "ad_password"
///     site                = "SiteName"
///     smb_server_name     = "SMBServer"
///     username            = "ad_user_name"
///   }
///   location            = "eastus"
///   resource_group_name = "myRG"
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
/// import com.pulumi.azurenative.netapp.Account;
/// import com.pulumi.azurenative.netapp.AccountArgs;
/// import com.pulumi.azurenative.netapp.inputs.ActiveDirectoryArgs;
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
///         var account = new Account("account", AccountArgs.builder()
///             .accountName("account1")
///             .activeDirectories(ActiveDirectoryArgs.builder()
///                 .aesEncryption(true)
///                 .dns("10.10.10.3")
///                 .domain("10.10.10.3")
///                 .ldapOverTLS(false)
///                 .ldapSigning(false)
///                 .organizationalUnit("OU=Engineering")
///                 .password("ad_password")
///                 .site("SiteName")
///                 .smbServerName("SMBServer")
///                 .username("ad_user_name")
///                 .build())
///             .location("eastus")
///             .resourceGroupName("myRG")
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
/// const account = new azure_native.netapp.Account("account", {
///     accountName: "account1",
///     activeDirectories: [{
///         aesEncryption: true,
///         dns: "10.10.10.3",
///         domain: "10.10.10.3",
///         ldapOverTLS: false,
///         ldapSigning: false,
///         organizationalUnit: "OU=Engineering",
///         password: "ad_password",
///         site: "SiteName",
///         smbServerName: "SMBServer",
///         username: "ad_user_name",
///     }],
///     location: "eastus",
///     resourceGroupName: "myRG",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// account = azure_native.netapp.Account("account",
///     account_name="account1",
///     active_directories=[{
///         "aes_encryption": True,
///         "dns": "10.10.10.3",
///         "domain": "10.10.10.3",
///         "ldap_over_tls": False,
///         "ldap_signing": False,
///         "organizational_unit": "OU=Engineering",
///         "password": "ad_password",
///         "site": "SiteName",
///         "smb_server_name": "SMBServer",
///         "username": "ad_user_name",
///     }],
///     location="eastus",
///     resource_group_name="myRG")
///
/// ```
///
/// ```yaml
/// resources:
///   account:
///     type: azure-native:netapp:Account
///     properties:
///       accountName: account1
///       activeDirectories:
///         - aesEncryption: true
///           dns: 10.10.10.3
///           domain: 10.10.10.3
///           ldapOverTLS: false
///           ldapSigning: false
///           organizationalUnit: OU=Engineering
///           password: ad_password
///           site: SiteName
///           smbServerName: SMBServer
///           username: ad_user_name
///       location: eastus
///       resourceGroupName: myRG
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
/// $ pulumi import azure-native:netapp:Account account1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.NetApp/netAppAccounts/{accountName}
/// ```
class Account extends pulumi.CustomResource {
  /// Active Directories
  late final pulumi.Output<List<ActiveDirectoryResponse>?> activeDirectories;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Shows the status of disableShowmount for all volumes under the subscription, null equals false
  late final pulumi.Output<bool> disableShowmount;
  /// Encryption settings
  late final pulumi.Output<AccountEncryptionResponse?> encryption;
  /// A unique read-only string that changes whenever the resource is updated.
  late final pulumi.Output<String> etag;
  /// The identity used for the resource.
  late final pulumi.Output<ManagedServiceIdentityResponse?> identity;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Azure lifecycle management
  late final pulumi.Output<String> provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Account].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Account]. {@macro pulumi_netapp_account_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Account(
    String name, {
    AccountArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:netapp:Account',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    activeDirectories = registerOutput<List<ActiveDirectoryResponse>?>('activeDirectories', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ActiveDirectoryResponse>(guardedValue, (value) => ActiveDirectoryResponse.fromMap((value as Map).cast<String, dynamic>())); });
    azureApiVersion = registerOutput<String>('azureApiVersion');
    disableShowmount = registerOutput<bool>('disableShowmount');
    encryption = registerOutput<AccountEncryptionResponse?>('encryption', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccountEncryptionResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String>('etag');
    identity = registerOutput<ManagedServiceIdentityResponse?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedServiceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [Account] resource.
  Account.reference(String urn)
    : super(
        'azure-native:netapp:Account',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    activeDirectories = registerOutput<List<ActiveDirectoryResponse>?>('activeDirectories', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ActiveDirectoryResponse>(guardedValue, (value) => ActiveDirectoryResponse.fromMap((value as Map).cast<String, dynamic>())); });
    azureApiVersion = registerOutput<String>('azureApiVersion');
    disableShowmount = registerOutput<bool>('disableShowmount');
    encryption = registerOutput<AccountEncryptionResponse?>('encryption', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccountEncryptionResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String>('etag');
    identity = registerOutput<ManagedServiceIdentityResponse?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedServiceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }
}
