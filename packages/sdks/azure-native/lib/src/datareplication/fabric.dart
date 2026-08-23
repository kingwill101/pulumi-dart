import 'package:pulumi/pulumi.dart' as pulumi;
import 'fabric_args.dart';
import 'fabric_model_properties_response.dart';
import 'fabric_model_response_system_data.dart';

/// Fabric model.
///
/// Uses Azure REST API version 2021-02-16-preview. In version 2.x of the Azure Native provider, it used API version 2021-02-16-preview.
///
/// Other available API versions: 2024-09-01, 2026-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native datareplication [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Fabric_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var fabric = new AzureNative.DataReplication.Fabric("fabric", new()
///     {
///         FabricName = "wPR",
///         Location = "tqygutlpob",
///         Properties = new AzureNative.DataReplication.Inputs.FabricModelPropertiesArgs
///         {
///             CustomProperties =
///             {
///                 { "instanceType", "FabricModelCustomProperties" },
///             },
///         },
///         ResourceGroupName = "rgrecoveryservicesdatareplication",
///         Tags =
///         {
///             { "key3917", "vgralu" },
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
/// 	datareplication "github.com/pulumi/pulumi-azure-native-sdk/datareplication/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := datareplication.NewFabric(ctx, "fabric", &datareplication.FabricArgs{
/// 			FabricName: pulumi.String("wPR"),
/// 			Location:   pulumi.String("tqygutlpob"),
/// 			Properties: &datareplication.FabricModelPropertiesArgs{
/// 				CustomProperties: pulumi.Any{
/// 					InstanceType: pulumi.String("FabricModelCustomProperties"),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("rgrecoveryservicesdatareplication"),
/// 			Tags: pulumi.StringMap{
/// 				"key3917": pulumi.String("vgralu"),
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
/// resource "azure-native_datareplication_fabric" "fabric" {
///   fabric_name = "wPR"
///   location    = "tqygutlpob"
///   properties = {
///     custom_properties = {
///       "instanceType" = "FabricModelCustomProperties"
///     }
///   }
///   resource_group_name = "rgrecoveryservicesdatareplication"
///   tags = {
///     "key3917" = "vgralu"
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
/// import com.pulumi.azurenative.datareplication.Fabric;
/// import com.pulumi.azurenative.datareplication.FabricArgs;
/// import com.pulumi.azurenative.datareplication.inputs.FabricModelPropertiesArgs;
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
///         var fabric = new Fabric("fabric", FabricArgs.builder()
///             .fabricName("wPR")
///             .location("tqygutlpob")
///             .properties(FabricModelPropertiesArgs.builder()
///                 .customProperties(Map.of("instanceType", "FabricModelCustomProperties"))
///                 .build())
///             .resourceGroupName("rgrecoveryservicesdatareplication")
///             .tags(Map.of("key3917", "vgralu"))
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
/// const fabric = new azure_native.datareplication.Fabric("fabric", {
///     fabricName: "wPR",
///     location: "tqygutlpob",
///     properties: {
///         customProperties: {
///             instanceType: "FabricModelCustomProperties",
///         },
///     },
///     resourceGroupName: "rgrecoveryservicesdatareplication",
///     tags: {
///         key3917: "vgralu",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// fabric = azure_native.datareplication.Fabric("fabric",
///     fabric_name="wPR",
///     location="tqygutlpob",
///     properties={
///         "custom_properties": {
///             "instance_type": "FabricModelCustomProperties",
///         },
///     },
///     resource_group_name="rgrecoveryservicesdatareplication",
///     tags={
///         "key3917": "vgralu",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   fabric:
///     type: azure-native:datareplication:Fabric
///     properties:
///       fabricName: wPR
///       location: tqygutlpob
///       properties:
///         customProperties:
///           instanceType: FabricModelCustomProperties
///       resourceGroupName: rgrecoveryservicesdatareplication
///       tags:
///         key3917: vgralu
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
/// $ pulumi import azure-native:datareplication:Fabric rhojydcwjgvgexpdwswjib /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DataReplication/replicationFabrics/{fabricName}
/// ```
class Fabric extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Gets or sets the location of the fabric.
  late final pulumi.Output<String> location;
  /// Gets or sets the name of the resource.
  late final pulumi.Output<String> name;
  /// Fabric model properties.
  late final pulumi.Output<FabricModelPropertiesResponse> properties;
  late final pulumi.Output<FabricModelResponseSystemData> systemData;
  /// Gets or sets the resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Gets or sets the type of the resource.
  late final pulumi.Output<String> type;

  /// Creates a new [Fabric].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Fabric]. {@macro pulumi_datareplication_fabric_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Fabric(
    String name, {
    FabricArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:datareplication:Fabric',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<FabricModelPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FabricModelPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<FabricModelResponseSystemData>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FabricModelResponseSystemData.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
