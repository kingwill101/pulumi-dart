import 'package:pulumi/pulumi.dart' as pulumi;
import 'kubernetes_configuration_private_link_scope_properties_response.dart';
import 'private_link_scope_args.dart';
import 'system_data_response.dart';

/// An Azure Arc PrivateLinkScope definition.
///
/// Uses Azure REST API version 2022-04-02-preview. In version 2.x of the Azure Native provider, it used API version 2022-04-02-preview.
///
/// Other available API versions: 2024-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native kubernetesconfiguration [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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
///     var privateLinkScope = new AzureNative.KubernetesConfiguration.PrivateLinkScope("privateLinkScope", new()
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
/// 	kubernetesconfiguration "github.com/pulumi/pulumi-azure-native-sdk/kubernetesconfiguration/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := kubernetesconfiguration.NewPrivateLinkScope(ctx, "privateLinkScope", &kubernetesconfiguration.PrivateLinkScopeArgs{
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
/// resource "azure-native_kubernetesconfiguration_privatelinkscope" "privateLinkScope" {
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
/// import com.pulumi.azurenative.kubernetesconfiguration.PrivateLinkScope;
/// import com.pulumi.azurenative.kubernetesconfiguration.PrivateLinkScopeArgs;
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
/// const privateLinkScope = new azure_native.kubernetesconfiguration.PrivateLinkScope("privateLinkScope", {
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
/// private_link_scope = azure_native.kubernetesconfiguration.PrivateLinkScope("privateLinkScope",
///     location="westus",
///     resource_group_name="my-resource-group",
///     scope_name="my-privatelinkscope")
///
/// ```
///
/// ```yaml
/// resources:
///   privateLinkScope:
///     type: azure-native:kubernetesconfiguration:PrivateLinkScope
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
///     var privateLinkScope = new AzureNative.KubernetesConfiguration.PrivateLinkScope("privateLinkScope", new()
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
/// 	kubernetesconfiguration "github.com/pulumi/pulumi-azure-native-sdk/kubernetesconfiguration/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := kubernetesconfiguration.NewPrivateLinkScope(ctx, "privateLinkScope", &kubernetesconfiguration.PrivateLinkScopeArgs{
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
/// resource "azure-native_kubernetesconfiguration_privatelinkscope" "privateLinkScope" {
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
/// import com.pulumi.azurenative.kubernetesconfiguration.PrivateLinkScope;
/// import com.pulumi.azurenative.kubernetesconfiguration.PrivateLinkScopeArgs;
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
/// const privateLinkScope = new azure_native.kubernetesconfiguration.PrivateLinkScope("privateLinkScope", {
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
/// private_link_scope = azure_native.kubernetesconfiguration.PrivateLinkScope("privateLinkScope",
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
///     type: azure-native:kubernetesconfiguration:PrivateLinkScope
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
/// $ pulumi import azure-native:kubernetesconfiguration:PrivateLinkScope my-privatelinkscope /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.KubernetesConfiguration/privateLinkScopes/{scopeName}
/// ```
class PrivateLinkScope extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Properties that define a Azure Arc PrivateLinkScope resource.
  late final pulumi.Output<KubernetesConfigurationPrivateLinkScopePropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [PrivateLinkScope].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PrivateLinkScope]. {@macro pulumi_kubernetesconfiguration_private_link_scope_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PrivateLinkScope(
    String name, {
    PrivateLinkScopeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:kubernetesconfiguration:PrivateLinkScope',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<KubernetesConfigurationPrivateLinkScopePropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return KubernetesConfigurationPrivateLinkScopePropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [PrivateLinkScope] resource.
  PrivateLinkScope.reference(String urn)
    : super(
        'azure-native:kubernetesconfiguration:PrivateLinkScope',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<KubernetesConfigurationPrivateLinkScopePropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return KubernetesConfigurationPrivateLinkScopePropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }
}
