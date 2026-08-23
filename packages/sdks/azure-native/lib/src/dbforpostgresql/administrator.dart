import 'package:pulumi/pulumi.dart' as pulumi;
import 'administrator_args.dart';
import 'system_data_response.dart';

/// Server administrator associated to a Microsoft Entra principal.
///
/// Uses Azure REST API version 2025-01-01-preview. In version 2.x of the Azure Native provider, it used API version 2022-12-01.
///
/// Other available API versions: 2022-12-01, 2023-03-01-preview, 2023-06-01-preview, 2023-12-01-preview, 2024-03-01-preview, 2024-08-01, 2024-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native dbforpostgresql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Add a server administrator associated to a Microsoft Entra principal.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var administrator = new AzureNative.DBforPostgreSQL.Administrator("administrator", new()
///     {
///         ObjectId = "oooooooo-oooo-oooo-oooo-oooooooooooo",
///         PrincipalName = "exampleuser@contoso.com",
///         PrincipalType = "User",
///         ResourceGroupName = "exampleresourcegroup",
///         ServerName = "exampleserver",
///         TenantId = "tttttttt-tttt-tttt-tttt-tttttttttttt",
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
/// 	dbforpostgresql "github.com/pulumi/pulumi-azure-native-sdk/dbforpostgresql/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dbforpostgresql.NewAdministrator(ctx, "administrator", &dbforpostgresql.AdministratorArgs{
/// 			ObjectId:          pulumi.String("oooooooo-oooo-oooo-oooo-oooooooooooo"),
/// 			PrincipalName:     pulumi.String("exampleuser@contoso.com"),
/// 			PrincipalType:     pulumi.String("User"),
/// 			ResourceGroupName: pulumi.String("exampleresourcegroup"),
/// 			ServerName:        pulumi.String("exampleserver"),
/// 			TenantId:          pulumi.String("tttttttt-tttt-tttt-tttt-tttttttttttt"),
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
/// resource "azure-native_dbforpostgresql_administrator" "administrator" {
///   object_id           = "oooooooo-oooo-oooo-oooo-oooooooooooo"
///   principal_name      = "exampleuser@contoso.com"
///   principal_type      = "User"
///   resource_group_name = "exampleresourcegroup"
///   server_name         = "exampleserver"
///   tenant_id           = "tttttttt-tttt-tttt-tttt-tttttttttttt"
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
/// import com.pulumi.azurenative.dbforpostgresql.Administrator;
/// import com.pulumi.azurenative.dbforpostgresql.AdministratorArgs;
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
///         var administrator = new Administrator("administrator", AdministratorArgs.builder()
///             .objectId("oooooooo-oooo-oooo-oooo-oooooooooooo")
///             .principalName("exampleuser@contoso.com")
///             .principalType("User")
///             .resourceGroupName("exampleresourcegroup")
///             .serverName("exampleserver")
///             .tenantId("tttttttt-tttt-tttt-tttt-tttttttttttt")
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
/// const administrator = new azure_native.dbforpostgresql.Administrator("administrator", {
///     objectId: "oooooooo-oooo-oooo-oooo-oooooooooooo",
///     principalName: "exampleuser@contoso.com",
///     principalType: "User",
///     resourceGroupName: "exampleresourcegroup",
///     serverName: "exampleserver",
///     tenantId: "tttttttt-tttt-tttt-tttt-tttttttttttt",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// administrator = azure_native.dbforpostgresql.Administrator("administrator",
///     object_id="oooooooo-oooo-oooo-oooo-oooooooooooo",
///     principal_name="exampleuser@contoso.com",
///     principal_type="User",
///     resource_group_name="exampleresourcegroup",
///     server_name="exampleserver",
///     tenant_id="tttttttt-tttt-tttt-tttt-tttttttttttt")
///
/// ```
///
/// ```yaml
/// resources:
///   administrator:
///     type: azure-native:dbforpostgresql:Administrator
///     properties:
///       objectId: oooooooo-oooo-oooo-oooo-oooooooooooo
///       principalName: exampleuser@contoso.com
///       principalType: User
///       resourceGroupName: exampleresourcegroup
///       serverName: exampleserver
///       tenantId: tttttttt-tttt-tttt-tttt-tttttttttttt
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
/// $ pulumi import azure-native:dbforpostgresql:Administrator exampleuser@contoso.com /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DBforPostgreSQL/flexibleServers/{serverName}/administrators/{objectId}
/// ```
class Administrator extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Object identifier of the Microsoft Entra principal.
  late final pulumi.Output<String?> objectId;
  /// Name of the Microsoft Entra principal.
  late final pulumi.Output<String?> principalName;
  /// Type of Microsoft Entra principal to which the server administrator is associated.
  late final pulumi.Output<String?> principalType;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Identifier of the tenant in which the Microsoft Entra principal exists.
  late final pulumi.Output<String?> tenantId;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Administrator].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Administrator]. {@macro pulumi_dbforpostgresql_administrator_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Administrator(
    String name, {
    AdministratorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:dbforpostgresql:Administrator',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    objectId = registerOutput<String?>('objectId');
    principalName = registerOutput<String?>('principalName');
    principalType = registerOutput<String?>('principalType');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tenantId = registerOutput<String?>('tenantId');
    type = registerOutput<String>('type');
  }
}
