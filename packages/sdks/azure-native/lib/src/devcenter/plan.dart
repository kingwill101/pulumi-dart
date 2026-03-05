import 'package:pulumi/pulumi.dart' as pulumi;
import 'plan_args.dart';
import 'sku_response.dart';
import 'system_data_response.dart';

/// Represents a devcenter plan resource.
///
/// Uses Azure REST API version 2024-10-01-preview. In version 2.x of the Azure Native provider, it used API version 2024-05-01-preview.
///
/// Other available API versions: 2024-05-01-preview, 2024-06-01-preview, 2024-07-01-preview, 2024-08-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native devcenter [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Plans_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var plan = new AzureNative.DevCenter.Plan("plan", new()
///     {
///         Location = "centralus",
///         PlanName = "ContosoPlan",
///         ResourceGroupName = "rg1",
///         Sku = new AzureNative.DevCenter.Inputs.SkuArgs
///         {
///             Name = "Preview",
///         },
///         Tags =
///         {
///             { "CostCode", "12345" },
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
/// 	devcenter "github.com/pulumi/pulumi-azure-native-sdk/devcenter/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := devcenter.NewPlan(ctx, "plan", &devcenter.PlanArgs{
/// 			Location:          pulumi.String("centralus"),
/// 			PlanName:          pulumi.String("ContosoPlan"),
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			Sku: &devcenter.SkuArgs{
/// 				Name: pulumi.String("Preview"),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"CostCode": pulumi.String("12345"),
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
/// import com.pulumi.azurenative.devcenter.Plan;
/// import com.pulumi.azurenative.devcenter.PlanArgs;
/// import com.pulumi.azurenative.devcenter.inputs.SkuArgs;
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
///         var plan = new Plan("plan", PlanArgs.builder()
///             .location("centralus")
///             .planName("ContosoPlan")
///             .resourceGroupName("rg1")
///             .sku(SkuArgs.builder()
///                 .name("Preview")
///                 .build())
///             .tags(Map.of("CostCode", "12345"))
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
/// const plan = new azure_native.devcenter.Plan("plan", {
///     location: "centralus",
///     planName: "ContosoPlan",
///     resourceGroupName: "rg1",
///     sku: {
///         name: "Preview",
///     },
///     tags: {
///         CostCode: "12345",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// plan = azure_native.devcenter.Plan("plan",
///     location="centralus",
///     plan_name="ContosoPlan",
///     resource_group_name="rg1",
///     sku={
///         "name": "Preview",
///     },
///     tags={
///         "CostCode": "12345",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   plan:
///     type: azure-native:devcenter:Plan
///     properties:
///       location: centralus
///       planName: ContosoPlan
///       resourceGroupName: rg1
///       sku:
///         name: Preview
///       tags:
///         CostCode: '12345'
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
/// $ pulumi import azure-native:devcenter:Plan ContosoPlan /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DevCenter/plans/{planName}
/// ```
class Plan extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The provisioning state of the resource.
  late final pulumi.Output<String> provisioningState;
  /// The SKU for DevCenters created using this definition.
  late final pulumi.Output<SkuResponse?> sku;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Plan].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Plan]. {@macro pulumi_devcenter_plan_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Plan(
    String name, {
    PlanArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:devcenter:Plan',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    sku = registerOutput<SkuResponse?>('sku', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
