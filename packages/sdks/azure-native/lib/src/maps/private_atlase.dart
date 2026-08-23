import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_atlas_properties_response.dart';
import 'private_atlase_args.dart';

/// An Azure resource which represents which will provision the ability to create private location data.
///
/// Uses Azure REST API version 2020-02-01-preview. In version 2.x of the Azure Native provider, it used API version 2020-02-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CreatePrivateAtlas
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var privateAtlase = new AzureNative.Maps.PrivateAtlase("privateAtlase", new()
///     {
///         AccountName = "myMapsAccount",
///         Location = "unitedstates",
///         PrivateAtlasName = "myPrivateAtlas",
///         ResourceGroupName = "myResourceGroup",
///         Tags =
///         {
///             { "test", "true" },
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
/// 	maps "github.com/pulumi/pulumi-azure-native-sdk/maps/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := maps.NewPrivateAtlase(ctx, "privateAtlase", &maps.PrivateAtlaseArgs{
/// 			AccountName:       pulumi.String("myMapsAccount"),
/// 			Location:          pulumi.String("unitedstates"),
/// 			PrivateAtlasName:  pulumi.String("myPrivateAtlas"),
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			Tags: pulumi.StringMap{
/// 				"test": pulumi.String("true"),
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
/// resource "azure-native_maps_privateatlase" "privateAtlase" {
///   account_name        = "myMapsAccount"
///   location            = "unitedstates"
///   private_atlas_name  = "myPrivateAtlas"
///   resource_group_name = "myResourceGroup"
///   tags = {
///     "test" = "true"
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
/// import com.pulumi.azurenative.maps.PrivateAtlase;
/// import com.pulumi.azurenative.maps.PrivateAtlaseArgs;
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
///         var privateAtlase = new PrivateAtlase("privateAtlase", PrivateAtlaseArgs.builder()
///             .accountName("myMapsAccount")
///             .location("unitedstates")
///             .privateAtlasName("myPrivateAtlas")
///             .resourceGroupName("myResourceGroup")
///             .tags(Map.of("test", "true"))
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
/// const privateAtlase = new azure_native.maps.PrivateAtlase("privateAtlase", {
///     accountName: "myMapsAccount",
///     location: "unitedstates",
///     privateAtlasName: "myPrivateAtlas",
///     resourceGroupName: "myResourceGroup",
///     tags: {
///         test: "true",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// private_atlase = azure_native.maps.PrivateAtlase("privateAtlase",
///     account_name="myMapsAccount",
///     location="unitedstates",
///     private_atlas_name="myPrivateAtlas",
///     resource_group_name="myResourceGroup",
///     tags={
///         "test": "true",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   privateAtlase:
///     type: azure-native:maps:PrivateAtlase
///     properties:
///       accountName: myMapsAccount
///       location: unitedstates
///       privateAtlasName: myPrivateAtlas
///       resourceGroupName: myResourceGroup
///       tags:
///         test: 'true'
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
/// $ pulumi import azure-native:maps:PrivateAtlase myPrivateAtlas /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Maps/accounts/{accountName}/privateAtlases/{privateAtlasName}
/// ```
class PrivateAtlase extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The Private Atlas resource properties.
  late final pulumi.Output<PrivateAtlasPropertiesResponse> properties;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [PrivateAtlase].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PrivateAtlase]. {@macro pulumi_maps_private_atlase_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PrivateAtlase(
    String name, {
    PrivateAtlaseArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:maps:PrivateAtlase',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<PrivateAtlasPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PrivateAtlasPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
