import 'package:pulumi/pulumi.dart' as pulumi;
import 'sku_resource_properties_response.dart';
import 'skus_nested_resource_type_second_args.dart';
import 'system_data_response.dart';

/// Concrete proxy resource types can be created by aliasing this type using a specific property type.
///
/// Uses Azure REST API version 2024-09-01. In version 2.x of the Azure Native provider, it used API version 2021-09-01-preview.
///
/// Other available API versions: 2021-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native providerhub [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Skus_CreateOrUpdateNestedResourceTypeSecond
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var skusNestedResourceTypeSecond = new AzureNative.ProviderHub.SkusNestedResourceTypeSecond("skusNestedResourceTypeSecond", new()
///     {
///         NestedResourceTypeFirst = "nestedResourceTypeFirst",
///         NestedResourceTypeSecond = "nestedResourceTypeSecond",
///         Properties = new AzureNative.ProviderHub.Inputs.SkuResourcePropertiesArgs
///         {
///             SkuSettings = new[]
///             {
///                 new AzureNative.ProviderHub.Inputs.SkuSettingArgs
///                 {
///                     Kind = "Standard",
///                     Name = "freeSku",
///                     Tier = "Tier1",
///                 },
///                 new AzureNative.ProviderHub.Inputs.SkuSettingArgs
///                 {
///                     Costs = new[]
///                     {
///                         new AzureNative.ProviderHub.Inputs.SkuCostArgs
///                         {
///                             MeterId = "xxx",
///                         },
///                     },
///                     Kind = "Premium",
///                     Name = "premiumSku",
///                     Tier = "Tier2",
///                 },
///             },
///         },
///         ProviderNamespace = "Microsoft.Contoso",
///         ResourceType = "testResourceType",
///         Sku = "testSku",
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
/// 	providerhub "github.com/pulumi/pulumi-azure-native-sdk/providerhub/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := providerhub.NewSkusNestedResourceTypeSecond(ctx, "skusNestedResourceTypeSecond", &providerhub.SkusNestedResourceTypeSecondArgs{
/// 			NestedResourceTypeFirst:  pulumi.String("nestedResourceTypeFirst"),
/// 			NestedResourceTypeSecond: pulumi.String("nestedResourceTypeSecond"),
/// 			Properties: &providerhub.SkuResourcePropertiesArgs{
/// 				SkuSettings: providerhub.SkuSettingArray{
/// 					&providerhub.SkuSettingArgs{
/// 						Kind: pulumi.String("Standard"),
/// 						Name: pulumi.String("freeSku"),
/// 						Tier: pulumi.String("Tier1"),
/// 					},
/// 					&providerhub.SkuSettingArgs{
/// 						Costs: providerhub.SkuCostArray{
/// 							&providerhub.SkuCostArgs{
/// 								MeterId: pulumi.String("xxx"),
/// 							},
/// 						},
/// 						Kind: pulumi.String("Premium"),
/// 						Name: pulumi.String("premiumSku"),
/// 						Tier: pulumi.String("Tier2"),
/// 					},
/// 				},
/// 			},
/// 			ProviderNamespace: pulumi.String("Microsoft.Contoso"),
/// 			ResourceType:      pulumi.String("testResourceType"),
/// 			Sku:               pulumi.String("testSku"),
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
/// import com.pulumi.azurenative.providerhub.SkusNestedResourceTypeSecond;
/// import com.pulumi.azurenative.providerhub.SkusNestedResourceTypeSecondArgs;
/// import com.pulumi.azurenative.providerhub.inputs.SkuResourcePropertiesArgs;
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
///         var skusNestedResourceTypeSecond = new SkusNestedResourceTypeSecond("skusNestedResourceTypeSecond", SkusNestedResourceTypeSecondArgs.builder()
///             .nestedResourceTypeFirst("nestedResourceTypeFirst")
///             .nestedResourceTypeSecond("nestedResourceTypeSecond")
///             .properties(SkuResourcePropertiesArgs.builder()
///                 .skuSettings(
///                     SkuSettingArgs.builder()
///                         .kind("Standard")
///                         .name("freeSku")
///                         .tier("Tier1")
///                         .build(),
///                     SkuSettingArgs.builder()
///                         .costs(SkuCostArgs.builder()
///                             .meterId("xxx")
///                             .build())
///                         .kind("Premium")
///                         .name("premiumSku")
///                         .tier("Tier2")
///                         .build())
///                 .build())
///             .providerNamespace("Microsoft.Contoso")
///             .resourceType("testResourceType")
///             .sku("testSku")
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
/// const skusNestedResourceTypeSecond = new azure_native.providerhub.SkusNestedResourceTypeSecond("skusNestedResourceTypeSecond", {
///     nestedResourceTypeFirst: "nestedResourceTypeFirst",
///     nestedResourceTypeSecond: "nestedResourceTypeSecond",
///     properties: {
///         skuSettings: [
///             {
///                 kind: "Standard",
///                 name: "freeSku",
///                 tier: "Tier1",
///             },
///             {
///                 costs: [{
///                     meterId: "xxx",
///                 }],
///                 kind: "Premium",
///                 name: "premiumSku",
///                 tier: "Tier2",
///             },
///         ],
///     },
///     providerNamespace: "Microsoft.Contoso",
///     resourceType: "testResourceType",
///     sku: "testSku",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// skus_nested_resource_type_second = azure_native.providerhub.SkusNestedResourceTypeSecond("skusNestedResourceTypeSecond",
///     nested_resource_type_first="nestedResourceTypeFirst",
///     nested_resource_type_second="nestedResourceTypeSecond",
///     properties={
///         "sku_settings": [
///             {
///                 "kind": "Standard",
///                 "name": "freeSku",
///                 "tier": "Tier1",
///             },
///             {
///                 "costs": [{
///                     "meter_id": "xxx",
///                 }],
///                 "kind": "Premium",
///                 "name": "premiumSku",
///                 "tier": "Tier2",
///             },
///         ],
///     },
///     provider_namespace="Microsoft.Contoso",
///     resource_type="testResourceType",
///     sku="testSku")
///
/// ```
///
/// ```yaml
/// resources:
///   skusNestedResourceTypeSecond:
///     type: azure-native:providerhub:SkusNestedResourceTypeSecond
///     properties:
///       nestedResourceTypeFirst: nestedResourceTypeFirst
///       nestedResourceTypeSecond: nestedResourceTypeSecond
///       properties:
///         skuSettings:
///           - kind: Standard
///             name: freeSku
///             tier: Tier1
///           - costs:
///               - meterId: xxx
///             kind: Premium
///             name: premiumSku
///             tier: Tier2
///       providerNamespace: Microsoft.Contoso
///       resourceType: testResourceType
///       sku: testSku
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
/// $ pulumi import azure-native:providerhub:SkusNestedResourceTypeSecond Microsoft.Contoso/employees/nestedEmployee/nestedEmployee2/sku1 /subscriptions/{subscriptionId}/providers/Microsoft.ProviderHub/providerRegistrations/{providerNamespace}/resourcetypeRegistrations/{resourceType}/resourcetypeRegistrations/{nestedResourceTypeFirst}/resourcetypeRegistrations/{nestedResourceTypeSecond}/skus/{sku}
/// ```
class SkusNestedResourceTypeSecond extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  late final pulumi.Output<SkuResourcePropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [SkusNestedResourceTypeSecond].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SkusNestedResourceTypeSecond]. {@macro pulumi_providerhub_skus_nested_resource_type_second_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SkusNestedResourceTypeSecond(
    String name, {
    SkusNestedResourceTypeSecondArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:providerhub:SkusNestedResourceTypeSecond',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    this.properties = registerOutput<SkuResourcePropertiesResponse>('properties');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.type = registerOutput<String>('type');
  }
}
