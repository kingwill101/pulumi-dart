import 'package:pulumi/pulumi.dart' as pulumi;
import 'solution_args.dart';
import 'solution_properties_response.dart';
import 'system_data_response.dart';

/// Solution resource.
///
/// Uses Azure REST API version 2023-06-01-preview. In version 2.x of the Azure Native provider, it used API version 2023-06-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Solutions_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var solution = new AzureNative.AgFoodPlatform.Solution("solution", new()
///     {
///         DataManagerForAgricultureResourceName = "examples-farmbeatsResourceName",
///         ResourceGroupName = "examples-rg",
///         SolutionId = "abc.partner",
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
/// 	agfoodplatform "github.com/pulumi/pulumi-azure-native-sdk/agfoodplatform/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := agfoodplatform.NewSolution(ctx, "solution", &agfoodplatform.SolutionArgs{
/// 			DataManagerForAgricultureResourceName: pulumi.String("examples-farmbeatsResourceName"),
/// 			ResourceGroupName:                     pulumi.String("examples-rg"),
/// 			SolutionId:                            pulumi.String("abc.partner"),
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
/// resource "azure-native_agfoodplatform_solution" "solution" {
///   data_manager_for_agriculture_resource_name = "examples-farmbeatsResourceName"
///   resource_group_name                        = "examples-rg"
///   solution_id                                = "abc.partner"
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
/// import com.pulumi.azurenative.agfoodplatform.Solution;
/// import com.pulumi.azurenative.agfoodplatform.SolutionArgs;
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
///         var solution = new Solution("solution", SolutionArgs.builder()
///             .dataManagerForAgricultureResourceName("examples-farmbeatsResourceName")
///             .resourceGroupName("examples-rg")
///             .solutionId("abc.partner")
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
/// const solution = new azure_native.agfoodplatform.Solution("solution", {
///     dataManagerForAgricultureResourceName: "examples-farmbeatsResourceName",
///     resourceGroupName: "examples-rg",
///     solutionId: "abc.partner",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// solution = azure_native.agfoodplatform.Solution("solution",
///     data_manager_for_agriculture_resource_name="examples-farmbeatsResourceName",
///     resource_group_name="examples-rg",
///     solution_id="abc.partner")
///
/// ```
///
/// ```yaml
/// resources:
///   solution:
///     type: azure-native:agfoodplatform:Solution
///     properties:
///       dataManagerForAgricultureResourceName: examples-farmbeatsResourceName
///       resourceGroupName: examples-rg
///       solutionId: abc.partner
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
/// $ pulumi import azure-native:agfoodplatform:Solution string /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AgFoodPlatform/farmBeats/{dataManagerForAgricultureResourceName}/solutions/{solutionId}
/// ```
class Solution extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The ETag value to implement optimistic concurrency.
  late final pulumi.Output<String> eTag;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Solution resource properties.
  late final pulumi.Output<SolutionPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Solution].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Solution]. {@macro pulumi_agfoodplatform_solution_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Solution(
    String name, {
    SolutionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:agfoodplatform:Solution',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    eTag = registerOutput<String>('eTag');
    this.name = registerOutput<String>('name');
    properties = registerOutput<SolutionPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SolutionPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [Solution] resource.
  Solution.reference(String urn)
    : super(
        'azure-native:agfoodplatform:Solution',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    eTag = registerOutput<String>('eTag');
    this.name = registerOutput<String>('name');
    properties = registerOutput<SolutionPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SolutionPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
