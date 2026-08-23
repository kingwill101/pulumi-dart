import 'package:pulumi/pulumi.dart' as pulumi;
import 'hybrid_compute_private_link_scope_properties_response.dart';
import 'private_link_scope_args.dart';
import 'system_data_response.dart';

/// An Azure Arc PrivateLinkScope definition.
///
/// Uses Azure REST API version 2024-07-10. In version 2.x of the Azure Native provider, it used API version 2022-12-27.
///
/// Other available API versions: 2020-08-15-preview, 2021-01-28-preview, 2021-03-25-preview, 2021-04-22-preview, 2021-05-17-preview, 2021-05-20, 2021-06-10-preview, 2021-12-10-preview, 2022-03-10, 2022-05-10-preview, 2022-08-11-preview, 2022-11-10, 2022-12-27, 2022-12-27-preview, 2023-03-15-preview, 2023-06-20-preview, 2023-10-03-preview, 2024-03-31-preview, 2024-05-20-preview, 2024-07-31-preview, 2024-09-10-preview, 2024-11-10-preview, 2025-01-13, 2025-02-19-preview, 2025-06-01, 2025-08-21-preview, 2025-09-16-preview, 2026-02-12-preview, 2026-06-04-preview, 2026-06-16-preview, 2026-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native hybridcompute [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### PrivateLinkScopeCreate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var privateLinkScope = new AzureNative.HybridCompute.PrivateLinkScope("privateLinkScope", new()
///     {
///         Location = "westus",
///         ResourceGroupName = "my-resource-group",
///         ScopeName = "my-privatelinkscope",
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
/// 	hybridcompute "github.com/pulumi/pulumi-azure-native-sdk/hybridcompute/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := hybridcompute.NewPrivateLinkScope(ctx, "privateLinkScope", &hybridcompute.PrivateLinkScopeArgs{
/// 			Location:          pulumi.String("westus"),
/// 			ResourceGroupName: pulumi.String("my-resource-group"),
/// 			ScopeName:         pulumi.String("my-privatelinkscope"),
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
/// resource "azure-native_hybridcompute_privatelinkscope" "privateLinkScope" {
///   location            = "westus"
///   resource_group_name = "my-resource-group"
///   scope_name          = "my-privatelinkscope"
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
/// import com.pulumi.azurenative.hybridcompute.PrivateLinkScope;
/// import com.pulumi.azurenative.hybridcompute.PrivateLinkScopeArgs;
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
///         var privateLinkScope = new PrivateLinkScope("privateLinkScope", PrivateLinkScopeArgs.builder()
///             .location("westus")
///             .resourceGroupName("my-resource-group")
///             .scopeName("my-privatelinkscope")
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
/// const privateLinkScope = new azure_native.hybridcompute.PrivateLinkScope("privateLinkScope", {
///     location: "westus",
///     resourceGroupName: "my-resource-group",
///     scopeName: "my-privatelinkscope",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// private_link_scope = azure_native.hybridcompute.PrivateLinkScope("privateLinkScope",
///     location="westus",
///     resource_group_name="my-resource-group",
///     scope_name="my-privatelinkscope")
///
/// ```
///
/// ```yaml
/// resources:
///   privateLinkScope:
///     type: azure-native:hybridcompute:PrivateLinkScope
///     properties:
///       location: westus
///       resourceGroupName: my-resource-group
///       scopeName: my-privatelinkscope
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### PrivateLinkScopeUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var privateLinkScope = new AzureNative.HybridCompute.PrivateLinkScope("privateLinkScope", new()
///     {
///         Location = "westus",
///         ResourceGroupName = "my-resource-group",
///         ScopeName = "my-privatelinkscope",
///         Tags =
///         {
///             { "Tag1", "Value1" },
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
/// 	hybridcompute "github.com/pulumi/pulumi-azure-native-sdk/hybridcompute/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := hybridcompute.NewPrivateLinkScope(ctx, "privateLinkScope", &hybridcompute.PrivateLinkScopeArgs{
/// 			Location:          pulumi.String("westus"),
/// 			ResourceGroupName: pulumi.String("my-resource-group"),
/// 			ScopeName:         pulumi.String("my-privatelinkscope"),
/// 			Tags: pulumi.StringMap{
/// 				"Tag1": pulumi.String("Value1"),
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
/// resource "azure-native_hybridcompute_privatelinkscope" "privateLinkScope" {
///   location            = "westus"
///   resource_group_name = "my-resource-group"
///   scope_name          = "my-privatelinkscope"
///   tags = {
///     "Tag1" = "Value1"
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
/// import com.pulumi.azurenative.hybridcompute.PrivateLinkScope;
/// import com.pulumi.azurenative.hybridcompute.PrivateLinkScopeArgs;
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
///         var privateLinkScope = new PrivateLinkScope("privateLinkScope", PrivateLinkScopeArgs.builder()
///             .location("westus")
///             .resourceGroupName("my-resource-group")
///             .scopeName("my-privatelinkscope")
///             .tags(Map.of("Tag1", "Value1"))
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
/// const privateLinkScope = new azure_native.hybridcompute.PrivateLinkScope("privateLinkScope", {
///     location: "westus",
///     resourceGroupName: "my-resource-group",
///     scopeName: "my-privatelinkscope",
///     tags: {
///         Tag1: "Value1",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// private_link_scope = azure_native.hybridcompute.PrivateLinkScope("privateLinkScope",
///     location="westus",
///     resource_group_name="my-resource-group",
///     scope_name="my-privatelinkscope",
///     tags={
///         "Tag1": "Value1",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   privateLinkScope:
///     type: azure-native:hybridcompute:PrivateLinkScope
///     properties:
///       location: westus
///       resourceGroupName: my-resource-group
///       scopeName: my-privatelinkscope
///       tags:
///         Tag1: Value1
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
/// $ pulumi import azure-native:hybridcompute:PrivateLinkScope my-privatelinkscope /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.HybridCompute/privateLinkScopes/{scopeName}
/// ```
class PrivateLinkScope extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Resource location
  late final pulumi.Output<String> location;
  /// Azure resource name
  late final pulumi.Output<String> name;
  /// Properties that define a Azure Arc PrivateLinkScope resource.
  late final pulumi.Output<HybridComputePrivateLinkScopePropertiesResponse> properties;
  /// The system meta data relating to this resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags
  late final pulumi.Output<Map<String, String>?> tags;
  /// Azure resource type
  late final pulumi.Output<String> type;

  /// Creates a new [PrivateLinkScope].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PrivateLinkScope]. {@macro pulumi_hybridcompute_private_link_scope_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PrivateLinkScope(
    String name, {
    PrivateLinkScopeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:hybridcompute:PrivateLinkScope',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<HybridComputePrivateLinkScopePropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return HybridComputePrivateLinkScopePropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
