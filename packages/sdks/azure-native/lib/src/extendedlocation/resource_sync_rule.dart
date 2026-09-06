import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_sync_rule_args.dart';
import 'resource_sync_rule_properties_selector_response.dart';
import 'system_data_response.dart';

/// Resource Sync Rules definition.
///
/// Uses Azure REST API version 2021-08-31-preview. In version 2.x of the Azure Native provider, it used API version 2021-08-31-preview.
///
/// Other available API versions: 2024-09-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native extendedlocation [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create/Update Resource Sync Rule
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var resourceSyncRule = new AzureNative.ExtendedLocation.ResourceSyncRule("resourceSyncRule", new()
///     {
///         ChildResourceName = "resourceSyncRule01",
///         Location = "West US",
///         Priority = 999,
///         ResourceGroupName = "testresourcegroup",
///         ResourceName = "customLocation01",
///         Selector = new AzureNative.ExtendedLocation.Inputs.ResourceSyncRulePropertiesSelectorArgs
///         {
///             MatchLabels =
///             {
///                 { "key1", "value1" },
///             },
///         },
///         TargetResourceGroup = "/subscriptions/11111111-2222-3333-4444-555555555555/resourceGroups/testresourcegroup",
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
/// 	extendedlocation "github.com/pulumi/pulumi-azure-native-sdk/extendedlocation/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := extendedlocation.NewResourceSyncRule(ctx, "resourceSyncRule", &extendedlocation.ResourceSyncRuleArgs{
/// 			ChildResourceName: pulumi.String("resourceSyncRule01"),
/// 			Location:          pulumi.String("West US"),
/// 			Priority:          pulumi.Int(999),
/// 			ResourceGroupName: pulumi.String("testresourcegroup"),
/// 			ResourceName:      pulumi.String("customLocation01"),
/// 			Selector: &extendedlocation.ResourceSyncRulePropertiesSelectorArgs{
/// 				MatchLabels: pulumi.StringMap{
/// 					"key1": pulumi.String("value1"),
/// 				},
/// 			},
/// 			TargetResourceGroup: pulumi.String("/subscriptions/11111111-2222-3333-4444-555555555555/resourceGroups/testresourcegroup"),
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
/// resource "azure-native_extendedlocation_resourcesyncrule" "resourceSyncRule" {
///   child_resource_name = "resourceSyncRule01"
///   location            = "West US"
///   priority            = 999
///   resource_group_name = "testresourcegroup"
///   resource_name       = "customLocation01"
///   selector = {
///     match_labels = {
///       "key1" = "value1"
///     }
///   }
///   target_resource_group = "/subscriptions/11111111-2222-3333-4444-555555555555/resourceGroups/testresourcegroup"
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
/// import com.pulumi.azurenative.extendedlocation.ResourceSyncRule;
/// import com.pulumi.azurenative.extendedlocation.ResourceSyncRuleArgs;
/// import com.pulumi.azurenative.extendedlocation.inputs.ResourceSyncRulePropertiesSelectorArgs;
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
///         var resourceSyncRule = new ResourceSyncRule("resourceSyncRule", ResourceSyncRuleArgs.builder()
///             .childResourceName("resourceSyncRule01")
///             .location("West US")
///             .priority(999)
///             .resourceGroupName("testresourcegroup")
///             .resourceName("customLocation01")
///             .selector(ResourceSyncRulePropertiesSelectorArgs.builder()
///                 .matchLabels(Map.of("key1", "value1"))
///                 .build())
///             .targetResourceGroup("/subscriptions/11111111-2222-3333-4444-555555555555/resourceGroups/testresourcegroup")
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
/// const resourceSyncRule = new azure_native.extendedlocation.ResourceSyncRule("resourceSyncRule", {
///     childResourceName: "resourceSyncRule01",
///     location: "West US",
///     priority: 999,
///     resourceGroupName: "testresourcegroup",
///     resourceName: "customLocation01",
///     selector: {
///         matchLabels: {
///             key1: "value1",
///         },
///     },
///     targetResourceGroup: "/subscriptions/11111111-2222-3333-4444-555555555555/resourceGroups/testresourcegroup",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// resource_sync_rule = azure_native.extendedlocation.ResourceSyncRule("resourceSyncRule",
///     child_resource_name="resourceSyncRule01",
///     location="West US",
///     priority=999,
///     resource_group_name="testresourcegroup",
///     resource_name_="customLocation01",
///     selector={
///         "match_labels": {
///             "key1": "value1",
///         },
///     },
///     target_resource_group="/subscriptions/11111111-2222-3333-4444-555555555555/resourceGroups/testresourcegroup")
///
/// ```
///
/// ```yaml
/// resources:
///   resourceSyncRule:
///     type: azure-native:extendedlocation:ResourceSyncRule
///     properties:
///       childResourceName: resourceSyncRule01
///       location: West US
///       priority: 999
///       resourceGroupName: testresourcegroup
///       resourceName: customLocation01
///       selector:
///         matchLabels:
///           key1: value1
///       targetResourceGroup: /subscriptions/11111111-2222-3333-4444-555555555555/resourceGroups/testresourcegroup
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
/// $ pulumi import azure-native:extendedlocation:ResourceSyncRule resourceSyncRule01 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ExtendedLocation/customLocations/{resourceName}/resourceSyncRules/{childResourceName}
/// ```
class ResourceSyncRule extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Priority represents a priority of the Resource Sync Rule
  late final pulumi.Output<int?> priority;
  /// Provisioning State for the Resource Sync Rule.
  late final pulumi.Output<String> provisioningState;
  /// A label selector is composed of two parts, matchLabels and matchExpressions. The first part, matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is 'key', the operator is 'In', and the values array contains only 'value'. The second part, matchExpressions is a list of resource selector requirements. Valid operators include In, NotIn, Exists, and DoesNotExist. The values set must be non-empty in the case of In and NotIn. The values set must be empty in the case of Exists and DoesNotExist. All of the requirements, from both matchLabels and matchExpressions must all be satisfied in order to match.
  late final pulumi.Output<ResourceSyncRulePropertiesSelectorResponse?> selector;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// For an unmapped custom resource, its labels will be used to find matching resource sync rules. If this resource sync rule is one of the matching rules with highest priority, then the unmapped custom resource will be projected to the target resource group associated with this resource sync rule. The user creating this resource sync rule should have write permissions on the target resource group and this write permission will be validated when creating the resource sync rule.
  late final pulumi.Output<String?> targetResourceGroup;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [ResourceSyncRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ResourceSyncRule]. {@macro pulumi_extendedlocation_resource_sync_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ResourceSyncRule(
    String name, {
    ResourceSyncRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:extendedlocation:ResourceSyncRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    priority = registerOutput<int?>('priority');
    provisioningState = registerOutput<String>('provisioningState');
    selector = registerOutput<ResourceSyncRulePropertiesSelectorResponse?>('selector', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResourceSyncRulePropertiesSelectorResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    targetResourceGroup = registerOutput<String?>('targetResourceGroup');
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [ResourceSyncRule] resource.
  ResourceSyncRule.reference(String urn)
    : super(
        'azure-native:extendedlocation:ResourceSyncRule',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    priority = registerOutput<int?>('priority');
    provisioningState = registerOutput<String>('provisioningState');
    selector = registerOutput<ResourceSyncRulePropertiesSelectorResponse?>('selector', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResourceSyncRulePropertiesSelectorResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    targetResourceGroup = registerOutput<String?>('targetResourceGroup');
    type = registerOutput<String>('type');
  }
}
