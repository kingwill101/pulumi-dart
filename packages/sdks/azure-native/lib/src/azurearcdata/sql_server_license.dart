import 'package:pulumi/pulumi.dart' as pulumi;
import 'sql_server_license_args.dart';
import 'sql_server_license_properties_response.dart';
import 'system_data_response.dart';

/// Describe SQL Server license resource.
///
/// Uses Azure REST API version 2025-03-01-preview. In version 2.x of the Azure Native provider, it used API version 2024-05-01-preview.
///
/// Other available API versions: 2024-05-01-preview, 2026-01-01, 2026-03-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native azurearcdata [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Updates a SQL Server license tags.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sqlServerLicense = new AzureNative.AzureArcData.SqlServerLicense("sqlServerLicense", new()
///     {
///         Location = "northeurope",
///         Properties = new AzureNative.AzureArcData.Inputs.SqlServerLicensePropertiesArgs
///         {
///             ActivationState = AzureNative.AzureArcData.ActivationState.Deactivated,
///             BillingPlan = AzureNative.AzureArcData.BillingPlan.PAYG,
///             LicenseCategory = AzureNative.AzureArcData.LicenseCategory.Core,
///             PhysicalCores = 24,
///             ScopeType = AzureNative.AzureArcData.ScopeType.Subscription,
///         },
///         ResourceGroupName = "testrg",
///         SqlServerLicenseName = "testsqlServerLicense",
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
/// 		_, err := azurearcdata.NewSqlServerLicense(ctx, "sqlServerLicense", &azurearcdata.SqlServerLicenseArgs{
/// 			Location: pulumi.String("northeurope"),
/// 			Properties: &azurearcdata.SqlServerLicensePropertiesArgs{
/// 				ActivationState: pulumi.String(azurearcdata.ActivationStateDeactivated),
/// 				BillingPlan:     pulumi.String(azurearcdata.BillingPlanPAYG),
/// 				LicenseCategory: pulumi.String(azurearcdata.LicenseCategoryCore),
/// 				PhysicalCores:   pulumi.Int(24),
/// 				ScopeType:       pulumi.String(azurearcdata.ScopeTypeSubscription),
/// 			},
/// 			ResourceGroupName:    pulumi.String("testrg"),
/// 			SqlServerLicenseName: pulumi.String("testsqlServerLicense"),
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
/// resource "azure-native_azurearcdata_sqlserverlicense" "sqlServerLicense" {
///   location = "northeurope"
///   properties = {
///     activation_state = "Deactivated"
///     billing_plan     = "PAYG"
///     license_category = "Core"
///     physical_cores   = 24
///     scope_type       = "Subscription"
///   }
///   resource_group_name     = "testrg"
///   sql_server_license_name = "testsqlServerLicense"
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
/// import com.pulumi.azurenative.azurearcdata.SqlServerLicense;
/// import com.pulumi.azurenative.azurearcdata.SqlServerLicenseArgs;
/// import com.pulumi.azurenative.azurearcdata.inputs.SqlServerLicensePropertiesArgs;
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
///         var sqlServerLicense = new SqlServerLicense("sqlServerLicense", SqlServerLicenseArgs.builder()
///             .location("northeurope")
///             .properties(SqlServerLicensePropertiesArgs.builder()
///                 .activationState("Deactivated")
///                 .billingPlan("PAYG")
///                 .licenseCategory("Core")
///                 .physicalCores(24)
///                 .scopeType("Subscription")
///                 .build())
///             .resourceGroupName("testrg")
///             .sqlServerLicenseName("testsqlServerLicense")
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
/// const sqlServerLicense = new azure_native.azurearcdata.SqlServerLicense("sqlServerLicense", {
///     location: "northeurope",
///     properties: {
///         activationState: azure_native.azurearcdata.ActivationState.Deactivated,
///         billingPlan: azure_native.azurearcdata.BillingPlan.PAYG,
///         licenseCategory: azure_native.azurearcdata.LicenseCategory.Core,
///         physicalCores: 24,
///         scopeType: azure_native.azurearcdata.ScopeType.Subscription,
///     },
///     resourceGroupName: "testrg",
///     sqlServerLicenseName: "testsqlServerLicense",
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
/// sql_server_license = azure_native.azurearcdata.SqlServerLicense("sqlServerLicense",
///     location="northeurope",
///     properties={
///         "activation_state": azure_native.azurearcdata.ActivationState.DEACTIVATED,
///         "billing_plan": azure_native.azurearcdata.BillingPlan.PAYG,
///         "license_category": azure_native.azurearcdata.LicenseCategory.CORE,
///         "physical_cores": 24,
///         "scope_type": azure_native.azurearcdata.ScopeType.SUBSCRIPTION,
///     },
///     resource_group_name="testrg",
///     sql_server_license_name="testsqlServerLicense",
///     tags={
///         "mytag": "myval",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   sqlServerLicense:
///     type: azure-native:azurearcdata:SqlServerLicense
///     properties:
///       location: northeurope
///       properties:
///         activationState: Deactivated
///         billingPlan: PAYG
///         licenseCategory: Core
///         physicalCores: 24
///         scopeType: Subscription
///       resourceGroupName: testrg
///       sqlServerLicenseName: testsqlServerLicense
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
/// $ pulumi import azure-native:azurearcdata:SqlServerLicense sqlServerLicense /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AzureArcData/sqlServerLicenses/{sqlServerLicenseName}
/// ```
class SqlServerLicense extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// SQL Server license properties
  late final pulumi.Output<SqlServerLicensePropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [SqlServerLicense].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SqlServerLicense]. {@macro pulumi_azurearcdata_sql_server_license_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SqlServerLicense(
    String name, {
    SqlServerLicenseArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:azurearcdata:SqlServerLicense',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<SqlServerLicensePropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SqlServerLicensePropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [SqlServerLicense] resource.
  SqlServerLicense.reference(String urn)
    : super(
        'azure-native:azurearcdata:SqlServerLicense',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<SqlServerLicensePropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SqlServerLicensePropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }
}
