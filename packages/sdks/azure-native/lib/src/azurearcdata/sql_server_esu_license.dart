import 'package:pulumi/pulumi.dart' as pulumi;
import 'sql_server_esu_license_args.dart';
import 'sql_server_esu_license_properties_response.dart';
import 'system_data_response.dart';

/// Describe SQL Server ESU license resource.
///
/// Uses Azure REST API version 2025-03-01-preview. In version 2.x of the Azure Native provider, it used API version 2024-05-01-preview.
///
/// Other available API versions: 2024-05-01-preview, 2026-01-01, 2026-03-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native azurearcdata [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Updates a SQL Server ESU license.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sqlServerEsuLicense = new AzureNative.AzureArcData.SqlServerEsuLicense("sqlServerEsuLicense", new()
///     {
///         Location = "northeurope",
///         Properties = new AzureNative.AzureArcData.Inputs.SqlServerEsuLicensePropertiesArgs
///         {
///             ActivationState = AzureNative.AzureArcData.State.Inactive,
///             BillingPlan = AzureNative.AzureArcData.BillingPlan.PAYG,
///             PhysicalCores = 24,
///             ScopeType = AzureNative.AzureArcData.ScopeType.Subscription,
///             Version = AzureNative.AzureArcData.Version.SQL_Server_2012,
///         },
///         ResourceGroupName = "testrg",
///         SqlServerEsuLicenseName = "testsqlServerEsuLicense",
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
/// 	azurearcdata "github.com/pulumi/pulumi-azure-native-sdk/azurearcdata/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := azurearcdata.NewSqlServerEsuLicense(ctx, "sqlServerEsuLicense", &azurearcdata.SqlServerEsuLicenseArgs{
/// 			Location: pulumi.String("northeurope"),
/// 			Properties: &azurearcdata.SqlServerEsuLicensePropertiesArgs{
/// 				ActivationState: pulumi.String(azurearcdata.StateInactive),
/// 				BillingPlan:     pulumi.String(azurearcdata.BillingPlanPAYG),
/// 				PhysicalCores:   pulumi.Int(24),
/// 				ScopeType:       pulumi.String(azurearcdata.ScopeTypeSubscription),
/// 				Version:         pulumi.String(azurearcdata.Version_SQL_Server_2012),
/// 			},
/// 			ResourceGroupName:       pulumi.String("testrg"),
/// 			SqlServerEsuLicenseName: pulumi.String("testsqlServerEsuLicense"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_azurearcdata_sqlserveresulicense" "sqlServerEsuLicense" {
///   location = "northeurope"
///   properties = {
///     activation_state = "Inactive"
///     billing_plan     = "PAYG"
///     physical_cores   = 24
///     scope_type       = "Subscription"
///     version          = "SQL Server 2012"
///   }
///   resource_group_name         = "testrg"
///   sql_server_esu_license_name = "testsqlServerEsuLicense"
///   tags = {
///     "mytag" = "myval"
///   }
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
/// import com.pulumi.azurenative.azurearcdata.SqlServerEsuLicense;
/// import com.pulumi.azurenative.azurearcdata.SqlServerEsuLicenseArgs;
/// import com.pulumi.azurenative.azurearcdata.inputs.SqlServerEsuLicensePropertiesArgs;
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
///         var sqlServerEsuLicense = new SqlServerEsuLicense("sqlServerEsuLicense", SqlServerEsuLicenseArgs.builder()
///             .location("northeurope")
///             .properties(SqlServerEsuLicensePropertiesArgs.builder()
///                 .activationState("Inactive")
///                 .billingPlan("PAYG")
///                 .physicalCores(24)
///                 .scopeType("Subscription")
///                 .version("SQL Server 2012")
///                 .build())
///             .resourceGroupName("testrg")
///             .sqlServerEsuLicenseName("testsqlServerEsuLicense")
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
/// const sqlServerEsuLicense = new azure_native.azurearcdata.SqlServerEsuLicense("sqlServerEsuLicense", {
///     location: "northeurope",
///     properties: {
///         activationState: azure_native.azurearcdata.State.Inactive,
///         billingPlan: azure_native.azurearcdata.BillingPlan.PAYG,
///         physicalCores: 24,
///         scopeType: azure_native.azurearcdata.ScopeType.Subscription,
///         version: azure_native.azurearcdata.Version.SQL_Server_2012,
///     },
///     resourceGroupName: "testrg",
///     sqlServerEsuLicenseName: "testsqlServerEsuLicense",
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
/// sql_server_esu_license = azure_native.azurearcdata.SqlServerEsuLicense("sqlServerEsuLicense",
///     location="northeurope",
///     properties={
///         "activation_state": azure_native.azurearcdata.State.INACTIVE,
///         "billing_plan": azure_native.azurearcdata.BillingPlan.PAYG,
///         "physical_cores": 24,
///         "scope_type": azure_native.azurearcdata.ScopeType.SUBSCRIPTION,
///         "version": azure_native.azurearcdata.Version.SQ_L_SERVER_2012,
///     },
///     resource_group_name="testrg",
///     sql_server_esu_license_name="testsqlServerEsuLicense",
///     tags={
///         "mytag": "myval",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   sqlServerEsuLicense:
///     type: azure-native:azurearcdata:SqlServerEsuLicense
///     properties:
///       location: northeurope
///       properties:
///         activationState: Inactive
///         billingPlan: PAYG
///         physicalCores: 24
///         scopeType: Subscription
///         version: SQL Server 2012
///       resourceGroupName: testrg
///       sqlServerEsuLicenseName: testsqlServerEsuLicense
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
/// $ pulumi import azure-native:azurearcdata:SqlServerEsuLicense sqlServerEsuLicense /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AzureArcData/sqlServerEsuLicenses/{sqlServerEsuLicenseName}
/// ```
class SqlServerEsuLicense extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// SQL Server ESU license properties
  late final pulumi.Output<SqlServerEsuLicensePropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [SqlServerEsuLicense].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SqlServerEsuLicense]. {@macro pulumi_azurearcdata_sql_server_esu_license_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SqlServerEsuLicense(
    String name, {
    SqlServerEsuLicenseArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:azurearcdata:SqlServerEsuLicense',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<SqlServerEsuLicensePropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SqlServerEsuLicensePropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [SqlServerEsuLicense] resource.
  SqlServerEsuLicense.reference(String urn)
    : super(
        'azure-native:azurearcdata:SqlServerEsuLicense',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<SqlServerEsuLicensePropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SqlServerEsuLicensePropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }
}
