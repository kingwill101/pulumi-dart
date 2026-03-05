import 'package:pulumi/pulumi.dart' as pulumi;
import 'messaging_response.dart';
import 'namespace_args.dart';
import 'system_assigned_service_identity_response.dart';
import 'system_data_response.dart';

/// Namespace definition.
///
/// Uses Azure REST API version 2025-07-01-preview.
///
/// Other available API versions: 2025-10-01, 2025-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native deviceregistry [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CreateOrReplace_Namespace_With_Endpoints
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @namespace = new AzureNative.DeviceRegistry.Namespace("namespace", new()
///     {
///         Identity = new AzureNative.DeviceRegistry.Inputs.SystemAssignedServiceIdentityArgs
///         {
///             Type = AzureNative.DeviceRegistry.SystemAssignedServiceIdentityType.SystemAssigned,
///         },
///         Location = "North Europe",
///         Messaging = new AzureNative.DeviceRegistry.Inputs.MessagingArgs
///         {
///             Endpoints =
///             {
///                 { "anotherEventGridEndpoint", new AzureNative.DeviceRegistry.Inputs.MessagingEndpointArgs
///                 {
///                     Address = "https://myeventgridtopic2.westeurope-1.eventgrid.azure.net/api/events",
///                     EndpointType = "Microsoft.EventGrid",
///                 } },
///                 { "eventGridEndpoint", new AzureNative.DeviceRegistry.Inputs.MessagingEndpointArgs
///                 {
///                     Address = "https://myeventgridtopic.westeurope-1.eventgrid.azure.net/api/events",
///                     EndpointType = "Microsoft.EventGrid",
///                 } },
///             },
///         },
///         NamespaceName = "adr-namespace-gbk0925-n01",
///         ResourceGroupName = "myResourceGroup",
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
/// 	deviceregistry "github.com/pulumi/pulumi-azure-native-sdk/deviceregistry/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := deviceregistry.NewNamespace(ctx, "namespace", &deviceregistry.NamespaceArgs{
/// 			Identity: &deviceregistry.SystemAssignedServiceIdentityArgs{
/// 				Type: pulumi.String(deviceregistry.SystemAssignedServiceIdentityTypeSystemAssigned),
/// 			},
/// 			Location: pulumi.String("North Europe"),
/// 			Messaging: &deviceregistry.MessagingArgs{
/// 				Endpoints: deviceregistry.MessagingEndpointMap{
/// 					"anotherEventGridEndpoint": &deviceregistry.MessagingEndpointArgs{
/// 						Address:      pulumi.String("https://myeventgridtopic2.westeurope-1.eventgrid.azure.net/api/events"),
/// 						EndpointType: pulumi.String("Microsoft.EventGrid"),
/// 					},
/// 					"eventGridEndpoint": &deviceregistry.MessagingEndpointArgs{
/// 						Address:      pulumi.String("https://myeventgridtopic.westeurope-1.eventgrid.azure.net/api/events"),
/// 						EndpointType: pulumi.String("Microsoft.EventGrid"),
/// 					},
/// 				},
/// 			},
/// 			NamespaceName:     pulumi.String("adr-namespace-gbk0925-n01"),
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
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
/// import com.pulumi.azurenative.deviceregistry.Namespace;
/// import com.pulumi.azurenative.deviceregistry.NamespaceArgs;
/// import com.pulumi.azurenative.deviceregistry.inputs.SystemAssignedServiceIdentityArgs;
/// import com.pulumi.azurenative.deviceregistry.inputs.MessagingArgs;
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
///         var namespace = new Namespace("namespace", NamespaceArgs.builder()
///             .identity(SystemAssignedServiceIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .location("North Europe")
///             .messaging(MessagingArgs.builder()
///                 .endpoints(Map.ofEntries(
///                     Map.entry("anotherEventGridEndpoint", MessagingEndpointArgs.builder()
///                         .address("https://myeventgridtopic2.westeurope-1.eventgrid.azure.net/api/events")
///                         .endpointType("Microsoft.EventGrid")
///                         .build()),
///                     Map.entry("eventGridEndpoint", MessagingEndpointArgs.builder()
///                         .address("https://myeventgridtopic.westeurope-1.eventgrid.azure.net/api/events")
///                         .endpointType("Microsoft.EventGrid")
///                         .build())
///                 ))
///                 .build())
///             .namespaceName("adr-namespace-gbk0925-n01")
///             .resourceGroupName("myResourceGroup")
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
/// const namespace = new azure_native.deviceregistry.Namespace("namespace", {
///     identity: {
///         type: azure_native.deviceregistry.SystemAssignedServiceIdentityType.SystemAssigned,
///     },
///     location: "North Europe",
///     messaging: {
///         endpoints: {
///             anotherEventGridEndpoint: {
///                 address: "https://myeventgridtopic2.westeurope-1.eventgrid.azure.net/api/events",
///                 endpointType: "Microsoft.EventGrid",
///             },
///             eventGridEndpoint: {
///                 address: "https://myeventgridtopic.westeurope-1.eventgrid.azure.net/api/events",
///                 endpointType: "Microsoft.EventGrid",
///             },
///         },
///     },
///     namespaceName: "adr-namespace-gbk0925-n01",
///     resourceGroupName: "myResourceGroup",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// namespace = azure_native.deviceregistry.Namespace("namespace",
///     identity={
///         "type": azure_native.deviceregistry.SystemAssignedServiceIdentityType.SYSTEM_ASSIGNED,
///     },
///     location="North Europe",
///     messaging={
///         "endpoints": {
///             "anotherEventGridEndpoint": {
///                 "address": "https://myeventgridtopic2.westeurope-1.eventgrid.azure.net/api/events",
///                 "endpoint_type": "Microsoft.EventGrid",
///             },
///             "eventGridEndpoint": {
///                 "address": "https://myeventgridtopic.westeurope-1.eventgrid.azure.net/api/events",
///                 "endpoint_type": "Microsoft.EventGrid",
///             },
///         },
///     },
///     namespace_name="adr-namespace-gbk0925-n01",
///     resource_group_name="myResourceGroup")
///
/// ```
///
/// ```yaml
/// resources:
///   namespace:
///     type: azure-native:deviceregistry:Namespace
///     properties:
///       identity:
///         type: SystemAssigned
///       location: North Europe
///       messaging:
///         endpoints:
///           anotherEventGridEndpoint:
///             address: https://myeventgridtopic2.westeurope-1.eventgrid.azure.net/api/events
///             endpointType: Microsoft.EventGrid
///           eventGridEndpoint:
///             address: https://myeventgridtopic.westeurope-1.eventgrid.azure.net/api/events
///             endpointType: Microsoft.EventGrid
///       namespaceName: adr-namespace-gbk0925-n01
///       resourceGroupName: myResourceGroup
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
/// $ pulumi import azure-native:deviceregistry:Namespace adr-namespace-gbk0925-n01 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DeviceRegistry/namespaces/{namespaceName}
/// ```
class Namespace extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The managed service identities assigned to this resource.
  late final pulumi.Output<SystemAssignedServiceIdentityResponse?> identity;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// Assigned and unassigned messaging endpoints.
  late final pulumi.Output<MessagingResponse?> messaging;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Provisioning state of the resource.
  late final pulumi.Output<String> provisioningState;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Globally unique, immutable, non-reusable ID.
  late final pulumi.Output<String> uuid;

  /// Creates a new [Namespace].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Namespace]. {@macro pulumi_deviceregistry_namespace_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Namespace(
    String name, {
    NamespaceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:deviceregistry:Namespace',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    identity = registerOutput<SystemAssignedServiceIdentityResponse?>(
      'identity',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SystemAssignedServiceIdentityResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    location = registerOutput<String>('location');
    messaging = registerOutput<MessagingResponse?>(
      'messaging',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return MessagingResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
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
    uuid = registerOutput<String>('uuid');
  }
}
