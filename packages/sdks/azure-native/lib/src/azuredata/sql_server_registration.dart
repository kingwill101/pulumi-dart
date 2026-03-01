import 'package:pulumi/pulumi.dart' as pulumi;
import 'sql_server_registration_args.dart';
import 'system_data_response.dart';

/// A SQL server registration.
///
/// Uses Azure REST API version 2019-07-24-preview. In version 2.x of the Azure Native provider, it used API version 2019-07-24-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Creates or updates a SQL Server registration.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sqlServerRegistration = new AzureNative.AzureData.SqlServerRegistration("sqlServerRegistration", new()
///     {
///         Location = "northeurope",
///         ResourceGroupName = "testrg",
///         SqlServerRegistrationName = "testsqlregistration",
///         Tags =
///         {
///             { "mytag", "myval" },
///         },
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
/// 	azuredata "github.com/pulumi/pulumi-azure-native-sdk/azuredata/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := azuredata.NewSqlServerRegistration(ctx, "sqlServerRegistration", &azuredata.SqlServerRegistrationArgs{
/// 			Location:                  pulumi.String("northeurope"),
/// 			ResourceGroupName:         pulumi.String("testrg"),
/// 			SqlServerRegistrationName: pulumi.String("testsqlregistration"),
/// 			Tags: pulumi.StringMap{
/// 				"mytag": pulumi.String("myval"),
/// 			},
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
/// import com.pulumi.azurenative.azuredata.SqlServerRegistration;
/// import com.pulumi.azurenative.azuredata.SqlServerRegistrationArgs;
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
///         var sqlServerRegistration = new SqlServerRegistration("sqlServerRegistration", SqlServerRegistrationArgs.builder()
///             .location("northeurope")
///             .resourceGroupName("testrg")
///             .sqlServerRegistrationName("testsqlregistration")
///             .tags(Map.of("mytag", "myval"))
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
/// const sqlServerRegistration = new azure_native.azuredata.SqlServerRegistration("sqlServerRegistration", {
///     location: "northeurope",
///     resourceGroupName: "testrg",
///     sqlServerRegistrationName: "testsqlregistration",
///     tags: {
///         mytag: "myval",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// sql_server_registration = azure_native.azuredata.SqlServerRegistration("sqlServerRegistration",
///     location="northeurope",
///     resource_group_name="testrg",
///     sql_server_registration_name="testsqlregistration",
///     tags={
///         "mytag": "myval",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   sqlServerRegistration:
///     type: azure-native:azuredata:SqlServerRegistration
///     properties:
///       location: northeurope
///       resourceGroupName: testrg
///       sqlServerRegistrationName: testsqlregistration
///       tags:
///         mytag: myval
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
/// $ pulumi import azure-native:azuredata:SqlServerRegistration testsqlregistration /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AzureData/sqlServerRegistrations/{sqlServerRegistrationName}
/// ```
class SqlServerRegistration extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Optional Properties as JSON string
  late final pulumi.Output<String?> propertyBag;
  /// Resource Group Name
  late final pulumi.Output<String?> resourceGroup;
  /// Subscription Id
  late final pulumi.Output<String?> subscriptionId;
  /// Read only system data
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. Ex- Microsoft.Compute/virtualMachines or Microsoft.Storage/storageAccounts.
  late final pulumi.Output<String> type;

  /// Creates a new [SqlServerRegistration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SqlServerRegistration]. {@macro pulumi_azuredata_sql_server_registration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SqlServerRegistration(
    String name, {
    SqlServerRegistrationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:azuredata:SqlServerRegistration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.propertyBag = registerOutput<String?>('propertyBag');
    this.resourceGroup = registerOutput<String?>('resourceGroup');
    this.subscriptionId = registerOutput<String?>('subscriptionId');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.type = registerOutput<String>('type');
  }
}
