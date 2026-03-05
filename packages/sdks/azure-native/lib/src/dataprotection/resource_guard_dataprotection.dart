import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_guard_args.dart';
import 'resource_guard_response.dart';
import 'system_data_response.dart';

/// Uses Azure REST API version 2025-01-01. In version 2.x of the Azure Native provider, it used API version 2023-01-01.
///
/// Other available API versions: 2023-01-01, 2023-04-01-preview, 2023-05-01, 2023-06-01-preview, 2023-08-01-preview, 2023-11-01, 2023-12-01, 2024-02-01-preview, 2024-03-01, 2024-04-01, 2025-02-01, 2025-07-01, 2025-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native dataprotection [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create ResourceGuard
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var resourceGuard = new AzureNative.DataProtection.ResourceGuard("resourceGuard", new()
///     {
///         Location = "WestUS",
///         ResourceGroupName = "SampleResourceGroup",
///         ResourceGuardsName = "swaggerExample",
///         Tags =
///         {
///             { "key1", "val1" },
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
/// 	dataprotection "github.com/pulumi/pulumi-azure-native-sdk/dataprotection/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dataprotection.NewResourceGuard(ctx, "resourceGuard", &dataprotection.ResourceGuardArgs{
/// 			Location:           pulumi.String("WestUS"),
/// 			ResourceGroupName:  pulumi.String("SampleResourceGroup"),
/// 			ResourceGuardsName: pulumi.String("swaggerExample"),
/// 			Tags: pulumi.StringMap{
/// 				"key1": pulumi.String("val1"),
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
/// import com.pulumi.azurenative.dataprotection.ResourceGuard;
/// import com.pulumi.azurenative.dataprotection.ResourceGuardArgs;
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
///         var resourceGuard = new ResourceGuard("resourceGuard", ResourceGuardArgs.builder()
///             .location("WestUS")
///             .resourceGroupName("SampleResourceGroup")
///             .resourceGuardsName("swaggerExample")
///             .tags(Map.of("key1", "val1"))
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
/// const resourceGuard = new azure_native.dataprotection.ResourceGuard("resourceGuard", {
///     location: "WestUS",
///     resourceGroupName: "SampleResourceGroup",
///     resourceGuardsName: "swaggerExample",
///     tags: {
///         key1: "val1",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// resource_guard = azure_native.dataprotection.ResourceGuard("resourceGuard",
///     location="WestUS",
///     resource_group_name="SampleResourceGroup",
///     resource_guards_name="swaggerExample",
///     tags={
///         "key1": "val1",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   resourceGuard:
///     type: azure-native:dataprotection:ResourceGuard
///     properties:
///       location: WestUS
///       resourceGroupName: SampleResourceGroup
///       resourceGuardsName: swaggerExample
///       tags:
///         key1: val1
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
/// $ pulumi import azure-native:dataprotection:ResourceGuard VaultGuardTestNew /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DataProtection/resourceGuards/{resourceGuardsName}
/// ```
class ResourceGuardDataprotection extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Optional ETag.
  late final pulumi.Output<String?> eTag;

  /// Resource location.
  late final pulumi.Output<String?> location;

  /// Resource name associated with the resource.
  late final pulumi.Output<String> name;

  /// ResourceGuardResource properties
  late final pulumi.Output<ResourceGuardResponse> properties;

  /// Metadata pertaining to creation and last modification of the resource.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Resource type represents the complete path of the form Namespace/ResourceType/ResourceType/...
  late final pulumi.Output<String> type;

  /// Creates a new [ResourceGuardDataprotection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ResourceGuardDataprotection]. {@macro pulumi_dataprotection_resource_guard_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ResourceGuardDataprotection(
    String name, {
    ResourceGuardArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:dataprotection:ResourceGuard',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    eTag = registerOutput<String?>('eTag');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<ResourceGuardResponse>(
      'properties',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ResourceGuardResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    systemData = registerOutput<SystemDataResponse>(
      'systemData',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SystemDataResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
