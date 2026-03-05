import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_adadministrator_args.dart';
import 'system_data_response.dart';

/// Represents a Administrator.
///
/// Uses Azure REST API version 2023-12-30. In version 2.x of the Azure Native provider, it used API version 2022-01-01.
///
/// Other available API versions: 2022-01-01, 2023-06-01-preview, 2023-06-30, 2024-12-01-preview, 2024-12-30, 2025-06-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native dbformysql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create an azure ad administrator
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var azureADAdministrator = new AzureNative.DBforMySQL.AzureADAdministrator("azureADAdministrator", new()
///     {
///         AdministratorName = "ActiveDirectory",
///         AdministratorType = AzureNative.DBforMySQL.AdministratorType.ActiveDirectory,
///         IdentityResourceId = "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/test-group/providers/Microsoft.ManagedIdentity/userAssignedIdentities/test-umi",
///         Login = "bob@contoso.com",
///         ResourceGroupName = "testrg",
///         ServerName = "mysqltestsvc4",
///         Sid = "c6b82b90-a647-49cb-8a62-0d2d3cb7ac7c",
///         TenantId = "c12b7025-bfe2-46c1-b463-993b5e4cd467",
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
/// 	dbformysql "github.com/pulumi/pulumi-azure-native-sdk/dbformysql/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dbformysql.NewAzureADAdministrator(ctx, "azureADAdministrator", &dbformysql.AzureADAdministratorArgs{
/// 			AdministratorName:  pulumi.String("ActiveDirectory"),
/// 			AdministratorType:  pulumi.String(dbformysql.AdministratorTypeActiveDirectory),
/// 			IdentityResourceId: pulumi.String("/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/test-group/providers/Microsoft.ManagedIdentity/userAssignedIdentities/test-umi"),
/// 			Login:              pulumi.String("bob@contoso.com"),
/// 			ResourceGroupName:  pulumi.String("testrg"),
/// 			ServerName:         pulumi.String("mysqltestsvc4"),
/// 			Sid:                pulumi.String("c6b82b90-a647-49cb-8a62-0d2d3cb7ac7c"),
/// 			TenantId:           pulumi.String("c12b7025-bfe2-46c1-b463-993b5e4cd467"),
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
/// import com.pulumi.azurenative.dbformysql.AzureADAdministrator;
/// import com.pulumi.azurenative.dbformysql.AzureADAdministratorArgs;
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
///         var azureADAdministrator = new AzureADAdministrator("azureADAdministrator", AzureADAdministratorArgs.builder()
///             .administratorName("ActiveDirectory")
///             .administratorType("ActiveDirectory")
///             .identityResourceId("/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/test-group/providers/Microsoft.ManagedIdentity/userAssignedIdentities/test-umi")
///             .login("bob@contoso.com")
///             .resourceGroupName("testrg")
///             .serverName("mysqltestsvc4")
///             .sid("c6b82b90-a647-49cb-8a62-0d2d3cb7ac7c")
///             .tenantId("c12b7025-bfe2-46c1-b463-993b5e4cd467")
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
/// const azureADAdministrator = new azure_native.dbformysql.AzureADAdministrator("azureADAdministrator", {
///     administratorName: "ActiveDirectory",
///     administratorType: azure_native.dbformysql.AdministratorType.ActiveDirectory,
///     identityResourceId: "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/test-group/providers/Microsoft.ManagedIdentity/userAssignedIdentities/test-umi",
///     login: "bob@contoso.com",
///     resourceGroupName: "testrg",
///     serverName: "mysqltestsvc4",
///     sid: "c6b82b90-a647-49cb-8a62-0d2d3cb7ac7c",
///     tenantId: "c12b7025-bfe2-46c1-b463-993b5e4cd467",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// azure_ad_administrator = azure_native.dbformysql.AzureADAdministrator("azureADAdministrator",
///     administrator_name="ActiveDirectory",
///     administrator_type=azure_native.dbformysql.AdministratorType.ACTIVE_DIRECTORY,
///     identity_resource_id="/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/test-group/providers/Microsoft.ManagedIdentity/userAssignedIdentities/test-umi",
///     login="bob@contoso.com",
///     resource_group_name="testrg",
///     server_name="mysqltestsvc4",
///     sid="c6b82b90-a647-49cb-8a62-0d2d3cb7ac7c",
///     tenant_id="c12b7025-bfe2-46c1-b463-993b5e4cd467")
///
/// ```
///
/// ```yaml
/// resources:
///   azureADAdministrator:
///     type: azure-native:dbformysql:AzureADAdministrator
///     properties:
///       administratorName: ActiveDirectory
///       administratorType: ActiveDirectory
///       identityResourceId: /subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/test-group/providers/Microsoft.ManagedIdentity/userAssignedIdentities/test-umi
///       login: bob@contoso.com
///       resourceGroupName: testrg
///       serverName: mysqltestsvc4
///       sid: c6b82b90-a647-49cb-8a62-0d2d3cb7ac7c
///       tenantId: c12b7025-bfe2-46c1-b463-993b5e4cd467
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
/// $ pulumi import azure-native:dbformysql:AzureADAdministrator ActiveDirectory /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DBforMySQL/flexibleServers/{serverName}/administrators/{administratorName}
/// ```
class AzureADAdministrator extends pulumi.CustomResource {
  /// Type of the sever administrator.
  late final pulumi.Output<String?> administratorType;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The resource id of the identity used for AAD Authentication.
  late final pulumi.Output<String?> identityResourceId;
  /// Login name of the server administrator.
  late final pulumi.Output<String?> login;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// SID (object ID) of the server administrator.
  late final pulumi.Output<String?> sid;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Tenant ID of the administrator.
  late final pulumi.Output<String?> tenantId;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [AzureADAdministrator].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AzureADAdministrator]. {@macro pulumi_dbformysql_azure_adadministrator_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AzureADAdministrator(
    String name, {
    AzureADAdministratorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:dbformysql:AzureADAdministrator',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    administratorType = registerOutput<String?>('administratorType');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    identityResourceId = registerOutput<String?>('identityResourceId');
    login = registerOutput<String?>('login');
    this.name = registerOutput<String>('name');
    sid = registerOutput<String?>('sid');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tenantId = registerOutput<String?>('tenantId');
    type = registerOutput<String>('type');
  }
}
