import 'package:pulumi/pulumi.dart' as pulumi;
import 'system_data_response.dart';
import 'usage_plan_args.dart';
import 'usage_plan_properties_response.dart';

/// A usage plan resource for Resiliency feature billing.
///
/// Uses Azure REST API version 2026-03-01-preview.
///
/// Other available API versions: 2026-04-01-preview, 2026-06-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native azureresiliencemanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### UsagePlans_CreateOrUpdate_MaximumSet
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var usagePlan = new AzureNative.AzureResilienceManagement.UsagePlan("usagePlan", new()
///     {
///         Location = "global",
///         Properties = new AzureNative.AzureResilienceManagement.Inputs.UsagePlanPropertiesArgs
///         {
///             PlanType = AzureNative.AzureResilienceManagement.UsagePlanType.Standard,
///         },
///         ResourceGroupName = "MyResourceGroup",
///         Tags =
///         {
///             { "environment", "production" },
///         },
///         UsagePlanName = "myUsagePlan",
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
/// 	azureresiliencemanagement "github.com/pulumi/pulumi-azure-native-sdk/azureresiliencemanagement/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := azureresiliencemanagement.NewUsagePlan(ctx, "usagePlan", &azureresiliencemanagement.UsagePlanArgs{
/// 			Location: pulumi.String("global"),
/// 			Properties: &azureresiliencemanagement.UsagePlanPropertiesArgs{
/// 				PlanType: pulumi.String(azureresiliencemanagement.UsagePlanTypeStandard),
/// 			},
/// 			ResourceGroupName: pulumi.String("MyResourceGroup"),
/// 			Tags: pulumi.StringMap{
/// 				"environment": pulumi.String("production"),
/// 			},
/// 			UsagePlanName: pulumi.String("myUsagePlan"),
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
/// resource "azure-native_azureresiliencemanagement_usageplan" "usagePlan" {
///   location = "global"
///   properties = {
///     plan_type = "Standard"
///   }
///   resource_group_name = "MyResourceGroup"
///   tags = {
///     "environment" = "production"
///   }
///   usage_plan_name = "myUsagePlan"
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
/// import com.pulumi.azurenative.azureresiliencemanagement.UsagePlan;
/// import com.pulumi.azurenative.azureresiliencemanagement.UsagePlanArgs;
/// import com.pulumi.azurenative.azureresiliencemanagement.inputs.UsagePlanPropertiesArgs;
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
///         var usagePlan = new UsagePlan("usagePlan", UsagePlanArgs.builder()
///             .location("global")
///             .properties(UsagePlanPropertiesArgs.builder()
///                 .planType("Standard")
///                 .build())
///             .resourceGroupName("MyResourceGroup")
///             .tags(Map.of("environment", "production"))
///             .usagePlanName("myUsagePlan")
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
/// const usagePlan = new azure_native.azureresiliencemanagement.UsagePlan("usagePlan", {
///     location: "global",
///     properties: {
///         planType: azure_native.azureresiliencemanagement.UsagePlanType.Standard,
///     },
///     resourceGroupName: "MyResourceGroup",
///     tags: {
///         environment: "production",
///     },
///     usagePlanName: "myUsagePlan",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// usage_plan = azure_native.azureresiliencemanagement.UsagePlan("usagePlan",
///     location="global",
///     properties={
///         "plan_type": azure_native.azureresiliencemanagement.UsagePlanType.STANDARD,
///     },
///     resource_group_name="MyResourceGroup",
///     tags={
///         "environment": "production",
///     },
///     usage_plan_name="myUsagePlan")
///
/// ```
///
/// ```yaml
/// resources:
///   usagePlan:
///     type: azure-native:azureresiliencemanagement:UsagePlan
///     properties:
///       location: global
///       properties:
///         planType: Standard
///       resourceGroupName: MyResourceGroup
///       tags:
///         environment: production
///       usagePlanName: myUsagePlan
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
/// $ pulumi import azure-native:azureresiliencemanagement:UsagePlan myUsagePlan /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AzureResilienceManagement/usagePlans/{usagePlanName}
/// ```
class UsagePlan extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<UsagePlanPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [UsagePlan].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [UsagePlan]. {@macro pulumi_azureresiliencemanagement_usage_plan_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  UsagePlan(
    String name, {
    UsagePlanArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:azureresiliencemanagement:UsagePlan',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<UsagePlanPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return UsagePlanPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [UsagePlan] resource.
  UsagePlan.reference(String urn)
    : super(
        'azure-native:azureresiliencemanagement:UsagePlan',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<UsagePlanPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return UsagePlanPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }
}
