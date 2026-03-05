import 'package:pulumi/pulumi.dart' as pulumi;
import 'single_server_server_administrator_args.dart';

/// Represents a and external administrator to be created.
///
/// Uses Azure REST API version 2017-12-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ServerAdministratorCreate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var singleServerServerAdministrator = new AzureNative.DBforMySQL.SingleServerServerAdministrator("singleServerServerAdministrator", new()
///     {
///         AdministratorType = AzureNative.DBforMySQL.AdministratorType.ActiveDirectory,
///         Login = "bob@contoso.com",
///         ResourceGroupName = "testrg",
///         ServerName = "mysqltestsvc4",
///         Sid = "c6b82b90-a647-49cb-8a62-0d2d3cb7ac7c",
///         TenantId = "c6b82b90-a647-49cb-8a62-0d2d3cb7ac7c",
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
/// 		_, err := dbformysql.NewSingleServerServerAdministrator(ctx, "singleServerServerAdministrator", &dbformysql.SingleServerServerAdministratorArgs{
/// 			AdministratorType: pulumi.String(dbformysql.AdministratorTypeActiveDirectory),
/// 			Login:             pulumi.String("bob@contoso.com"),
/// 			ResourceGroupName: pulumi.String("testrg"),
/// 			ServerName:        pulumi.String("mysqltestsvc4"),
/// 			Sid:               pulumi.String("c6b82b90-a647-49cb-8a62-0d2d3cb7ac7c"),
/// 			TenantId:          pulumi.String("c6b82b90-a647-49cb-8a62-0d2d3cb7ac7c"),
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
/// import com.pulumi.azurenative.dbformysql.SingleServerServerAdministrator;
/// import com.pulumi.azurenative.dbformysql.SingleServerServerAdministratorArgs;
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
///         var singleServerServerAdministrator = new SingleServerServerAdministrator("singleServerServerAdministrator", SingleServerServerAdministratorArgs.builder()
///             .administratorType("ActiveDirectory")
///             .login("bob@contoso.com")
///             .resourceGroupName("testrg")
///             .serverName("mysqltestsvc4")
///             .sid("c6b82b90-a647-49cb-8a62-0d2d3cb7ac7c")
///             .tenantId("c6b82b90-a647-49cb-8a62-0d2d3cb7ac7c")
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
/// const singleServerServerAdministrator = new azure_native.dbformysql.SingleServerServerAdministrator("singleServerServerAdministrator", {
///     administratorType: azure_native.dbformysql.AdministratorType.ActiveDirectory,
///     login: "bob@contoso.com",
///     resourceGroupName: "testrg",
///     serverName: "mysqltestsvc4",
///     sid: "c6b82b90-a647-49cb-8a62-0d2d3cb7ac7c",
///     tenantId: "c6b82b90-a647-49cb-8a62-0d2d3cb7ac7c",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// single_server_server_administrator = azure_native.dbformysql.SingleServerServerAdministrator("singleServerServerAdministrator",
///     administrator_type=azure_native.dbformysql.AdministratorType.ACTIVE_DIRECTORY,
///     login="bob@contoso.com",
///     resource_group_name="testrg",
///     server_name="mysqltestsvc4",
///     sid="c6b82b90-a647-49cb-8a62-0d2d3cb7ac7c",
///     tenant_id="c6b82b90-a647-49cb-8a62-0d2d3cb7ac7c")
///
/// ```
///
/// ```yaml
/// resources:
///   singleServerServerAdministrator:
///     type: azure-native:dbformysql:SingleServerServerAdministrator
///     properties:
///       administratorType: ActiveDirectory
///       login: bob@contoso.com
///       resourceGroupName: testrg
///       serverName: mysqltestsvc4
///       sid: c6b82b90-a647-49cb-8a62-0d2d3cb7ac7c
///       tenantId: c6b82b90-a647-49cb-8a62-0d2d3cb7ac7c
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
/// $ pulumi import azure-native:dbformysql:SingleServerServerAdministrator activeDirectory /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DBforMySQL/servers/{serverName}/administrators/activeDirectory
/// ```
class SingleServerServerAdministrator extends pulumi.CustomResource {
  /// The type of administrator.
  late final pulumi.Output<String> administratorType;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The server administrator login account name.
  late final pulumi.Output<String> login;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The server administrator Sid (Secure ID).
  late final pulumi.Output<String> sid;
  /// The server Active Directory Administrator tenant id.
  late final pulumi.Output<String> tenantId;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [SingleServerServerAdministrator].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SingleServerServerAdministrator]. {@macro pulumi_dbformysql_single_server_server_administrator_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SingleServerServerAdministrator(
    String name, {
    SingleServerServerAdministratorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:dbformysql:SingleServerServerAdministrator',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    administratorType = registerOutput<String>('administratorType');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    login = registerOutput<String>('login');
    this.name = registerOutput<String>('name');
    sid = registerOutput<String>('sid');
    tenantId = registerOutput<String>('tenantId');
    type = registerOutput<String>('type');
  }
}
