import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_private_endpoint_args.dart';
import 'managed_private_endpoint_response.dart';

/// Managed private endpoint resource type.
///
/// Uses Azure REST API version 2018-06-01. In version 2.x of the Azure Native provider, it used API version 2018-06-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ManagedVirtualNetworks_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var managedPrivateEndpoint = new AzureNative.DataFactory.ManagedPrivateEndpoint("managedPrivateEndpoint", new()
///     {
///         FactoryName = "exampleFactoryName",
///         ManagedPrivateEndpointName = "exampleManagedPrivateEndpointName",
///         ManagedVirtualNetworkName = "exampleManagedVirtualNetworkName",
///         Properties = new AzureNative.DataFactory.Inputs.ManagedPrivateEndpointArgs
///         {
///             Fqdns = new() { },
///             GroupId = "blob",
///             PrivateLinkResourceId = "/subscriptions/12345678-1234-1234-1234-12345678abc/resourceGroups/exampleResourceGroup/providers/Microsoft.Storage/storageAccounts/exampleBlobStorage",
///         },
///         ResourceGroupName = "exampleResourceGroup",
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
/// 	datafactory "github.com/pulumi/pulumi-azure-native-sdk/datafactory/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := datafactory.NewManagedPrivateEndpoint(ctx, "managedPrivateEndpoint", &datafactory.ManagedPrivateEndpointArgs{
/// 			FactoryName:                pulumi.String("exampleFactoryName"),
/// 			ManagedPrivateEndpointName: pulumi.String("exampleManagedPrivateEndpointName"),
/// 			ManagedVirtualNetworkName:  pulumi.String("exampleManagedVirtualNetworkName"),
/// 			Properties: &datafactory.ManagedPrivateEndpointTypeArgs{
/// 				Fqdns:                 pulumi.StringArray{},
/// 				GroupId:               pulumi.String("blob"),
/// 				PrivateLinkResourceId: pulumi.String("/subscriptions/12345678-1234-1234-1234-12345678abc/resourceGroups/exampleResourceGroup/providers/Microsoft.Storage/storageAccounts/exampleBlobStorage"),
/// 			},
/// 			ResourceGroupName: pulumi.String("exampleResourceGroup"),
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
/// import com.pulumi.azurenative.datafactory.ManagedPrivateEndpoint;
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
///         var managedPrivateEndpoint = new ManagedPrivateEndpoint("managedPrivateEndpoint", ManagedPrivateEndpointArgs.builder()
///             .factoryName("exampleFactoryName")
///             .managedPrivateEndpointName("exampleManagedPrivateEndpointName")
///             .managedVirtualNetworkName("exampleManagedVirtualNetworkName")
///             .properties(ManagedPrivateEndpointArgs.builder()
///                 .fqdns()
///                 .groupId("blob")
///                 .privateLinkResourceId("/subscriptions/12345678-1234-1234-1234-12345678abc/resourceGroups/exampleResourceGroup/providers/Microsoft.Storage/storageAccounts/exampleBlobStorage")
///                 .build())
///             .resourceGroupName("exampleResourceGroup")
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
/// const managedPrivateEndpoint = new azure_native.datafactory.ManagedPrivateEndpoint("managedPrivateEndpoint", {
///     factoryName: "exampleFactoryName",
///     managedPrivateEndpointName: "exampleManagedPrivateEndpointName",
///     managedVirtualNetworkName: "exampleManagedVirtualNetworkName",
///     properties: {
///         fqdns: [],
///         groupId: "blob",
///         privateLinkResourceId: "/subscriptions/12345678-1234-1234-1234-12345678abc/resourceGroups/exampleResourceGroup/providers/Microsoft.Storage/storageAccounts/exampleBlobStorage",
///     },
///     resourceGroupName: "exampleResourceGroup",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// managed_private_endpoint = azure_native.datafactory.ManagedPrivateEndpoint("managedPrivateEndpoint",
///     factory_name="exampleFactoryName",
///     managed_private_endpoint_name="exampleManagedPrivateEndpointName",
///     managed_virtual_network_name="exampleManagedVirtualNetworkName",
///     properties={
///         "fqdns": [],
///         "group_id": "blob",
///         "private_link_resource_id": "/subscriptions/12345678-1234-1234-1234-12345678abc/resourceGroups/exampleResourceGroup/providers/Microsoft.Storage/storageAccounts/exampleBlobStorage",
///     },
///     resource_group_name="exampleResourceGroup")
///
/// ```
///
/// ```yaml
/// resources:
///   managedPrivateEndpoint:
///     type: azure-native:datafactory:ManagedPrivateEndpoint
///     properties:
///       factoryName: exampleFactoryName
///       managedPrivateEndpointName: exampleManagedPrivateEndpointName
///       managedVirtualNetworkName: exampleManagedVirtualNetworkName
///       properties:
///         fqdns: []
///         groupId: blob
///         privateLinkResourceId: /subscriptions/12345678-1234-1234-1234-12345678abc/resourceGroups/exampleResourceGroup/providers/Microsoft.Storage/storageAccounts/exampleBlobStorage
///       resourceGroupName: exampleResourceGroup
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
/// $ pulumi import azure-native:datafactory:ManagedPrivateEndpoint exampleManagedPrivateEndpointName /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DataFactory/factories/{factoryName}/managedVirtualNetworks/{managedVirtualNetworkName}/managedPrivateEndpoints/{managedPrivateEndpointName}
/// ```
class ManagedPrivateEndpointDatafactory extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Etag identifies change in the resource.
  late final pulumi.Output<String> etag;
  /// The resource name.
  late final pulumi.Output<String> name;
  /// Managed private endpoint properties.
  late final pulumi.Output<ManagedPrivateEndpointResponse> properties;
  /// The resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [ManagedPrivateEndpointDatafactory].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ManagedPrivateEndpointDatafactory]. {@macro pulumi_datafactory_managed_private_endpoint_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ManagedPrivateEndpointDatafactory(
    String name, {
    ManagedPrivateEndpointArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:datafactory:ManagedPrivateEndpoint',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.etag = registerOutput<String>('etag');
    this.name = registerOutput<String>('name');
    this.properties = registerOutput<ManagedPrivateEndpointResponse>('properties');
    this.type = registerOutput<String>('type');
  }
}
