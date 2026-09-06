import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_connection_args.dart';
import 'resource_reference_response.dart';
import 'system_data_response.dart';

/// Resource which represents the managed network connection between Azure Gateways and remote cloud gateways.
///
/// Uses Azure REST API version 2023-01-01-preview. In version 2.x of the Azure Native provider, it used API version 2023-01-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create a Cloud Connection
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var cloudConnection = new AzureNative.HybridCloud.CloudConnection("cloudConnection", new()
///     {
///         CloudConnectionName = "cloudconnection1",
///         CloudConnector = new AzureNative.HybridCloud.Inputs.ResourceReferenceArgs
///         {
///             Id = "/subscriptions/subid/resourceGroups/demo-rg/providers/Microsoft.HybridCloud/cloudConnectors/123456789012",
///         },
///         Location = "West US",
///         RemoteResourceId = "arn:aws:ec2:us-east-1:123456789012:VPNGateway/vgw-043da592550819c8a",
///         ResourceGroupName = "demo-rg",
///         SharedKey = "password123",
///         VirtualHub = new AzureNative.HybridCloud.Inputs.ResourceReferenceArgs
///         {
///             Id = "/subscriptions/subid/resourceGroups/demo-rg/providers/Microsoft.Network/VirtualHubs/testHub",
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
/// 	hybridcloud "github.com/pulumi/pulumi-azure-native-sdk/hybridcloud/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := hybridcloud.NewCloudConnection(ctx, "cloudConnection", &hybridcloud.CloudConnectionArgs{
/// 			CloudConnectionName: pulumi.String("cloudconnection1"),
/// 			CloudConnector: &hybridcloud.ResourceReferenceArgs{
/// 				Id: pulumi.String("/subscriptions/subid/resourceGroups/demo-rg/providers/Microsoft.HybridCloud/cloudConnectors/123456789012"),
/// 			},
/// 			Location:          pulumi.String("West US"),
/// 			RemoteResourceId:  pulumi.String("arn:aws:ec2:us-east-1:123456789012:VPNGateway/vgw-043da592550819c8a"),
/// 			ResourceGroupName: pulumi.String("demo-rg"),
/// 			SharedKey:         pulumi.String("password123"),
/// 			VirtualHub: &hybridcloud.ResourceReferenceArgs{
/// 				Id: pulumi.String("/subscriptions/subid/resourceGroups/demo-rg/providers/Microsoft.Network/VirtualHubs/testHub"),
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
/// resource "azure-native_hybridcloud_cloudconnection" "cloudConnection" {
///   cloud_connection_name = "cloudconnection1"
///   cloud_connector = {
///     id = "/subscriptions/subid/resourceGroups/demo-rg/providers/Microsoft.HybridCloud/cloudConnectors/123456789012"
///   }
///   location            = "West US"
///   remote_resource_id  = "arn:aws:ec2:us-east-1:123456789012:VPNGateway/vgw-043da592550819c8a"
///   resource_group_name = "demo-rg"
///   shared_key          = "password123"
///   virtual_hub = {
///     id = "/subscriptions/subid/resourceGroups/demo-rg/providers/Microsoft.Network/VirtualHubs/testHub"
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
/// import com.pulumi.azurenative.hybridcloud.CloudConnection;
/// import com.pulumi.azurenative.hybridcloud.CloudConnectionArgs;
/// import com.pulumi.azurenative.hybridcloud.inputs.ResourceReferenceArgs;
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
///         var cloudConnection = new CloudConnection("cloudConnection", CloudConnectionArgs.builder()
///             .cloudConnectionName("cloudconnection1")
///             .cloudConnector(ResourceReferenceArgs.builder()
///                 .id("/subscriptions/subid/resourceGroups/demo-rg/providers/Microsoft.HybridCloud/cloudConnectors/123456789012")
///                 .build())
///             .location("West US")
///             .remoteResourceId("arn:aws:ec2:us-east-1:123456789012:VPNGateway/vgw-043da592550819c8a")
///             .resourceGroupName("demo-rg")
///             .sharedKey("password123")
///             .virtualHub(ResourceReferenceArgs.builder()
///                 .id("/subscriptions/subid/resourceGroups/demo-rg/providers/Microsoft.Network/VirtualHubs/testHub")
///                 .build())
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
/// const cloudConnection = new azure_native.hybridcloud.CloudConnection("cloudConnection", {
///     cloudConnectionName: "cloudconnection1",
///     cloudConnector: {
///         id: "/subscriptions/subid/resourceGroups/demo-rg/providers/Microsoft.HybridCloud/cloudConnectors/123456789012",
///     },
///     location: "West US",
///     remoteResourceId: "arn:aws:ec2:us-east-1:123456789012:VPNGateway/vgw-043da592550819c8a",
///     resourceGroupName: "demo-rg",
///     sharedKey: "password123",
///     virtualHub: {
///         id: "/subscriptions/subid/resourceGroups/demo-rg/providers/Microsoft.Network/VirtualHubs/testHub",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// cloud_connection = azure_native.hybridcloud.CloudConnection("cloudConnection",
///     cloud_connection_name="cloudconnection1",
///     cloud_connector={
///         "id": "/subscriptions/subid/resourceGroups/demo-rg/providers/Microsoft.HybridCloud/cloudConnectors/123456789012",
///     },
///     location="West US",
///     remote_resource_id="arn:aws:ec2:us-east-1:123456789012:VPNGateway/vgw-043da592550819c8a",
///     resource_group_name="demo-rg",
///     shared_key="password123",
///     virtual_hub={
///         "id": "/subscriptions/subid/resourceGroups/demo-rg/providers/Microsoft.Network/VirtualHubs/testHub",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   cloudConnection:
///     type: azure-native:hybridcloud:CloudConnection
///     properties:
///       cloudConnectionName: cloudconnection1
///       cloudConnector:
///         id: /subscriptions/subid/resourceGroups/demo-rg/providers/Microsoft.HybridCloud/cloudConnectors/123456789012
///       location: West US
///       remoteResourceId: arn:aws:ec2:us-east-1:123456789012:VPNGateway/vgw-043da592550819c8a
///       resourceGroupName: demo-rg
///       sharedKey: password123
///       virtualHub:
///         id: /subscriptions/subid/resourceGroups/demo-rg/providers/Microsoft.Network/VirtualHubs/testHub
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
/// $ pulumi import azure-native:hybridcloud:CloudConnection cloudconnection1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.HybridCloud/cloudConnections/{cloudConnectionName}
/// ```
class CloudConnection extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The cloud connector which discovered the remote resource.
  late final pulumi.Output<ResourceReferenceResponse?> cloudConnector;
  /// A unique read-only string that changes whenever the resource is updated.
  late final pulumi.Output<String> etag;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The provisioning state of the cloud collection resource.
  late final pulumi.Output<String> provisioningState;
  /// Identifier for the remote cloud resource
  late final pulumi.Output<String?> remoteResourceId;
  /// Shared key of the cloud connection.
  late final pulumi.Output<String?> sharedKey;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// The virtualHub to which the cloud connection belongs.
  late final pulumi.Output<ResourceReferenceResponse?> virtualHub;

  /// Creates a new [CloudConnection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CloudConnection]. {@macro pulumi_hybridcloud_cloud_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CloudConnection(
    String name, {
    CloudConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:hybridcloud:CloudConnection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    cloudConnector = registerOutput<ResourceReferenceResponse?>('cloudConnector', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResourceReferenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    remoteResourceId = registerOutput<String?>('remoteResourceId');
    sharedKey = registerOutput<String?>('sharedKey');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
    virtualHub = registerOutput<ResourceReferenceResponse?>('virtualHub', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResourceReferenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [CloudConnection] resource.
  CloudConnection.reference(String urn)
    : super(
        'azure-native:hybridcloud:CloudConnection',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    cloudConnector = registerOutput<ResourceReferenceResponse?>('cloudConnector', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResourceReferenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    remoteResourceId = registerOutput<String?>('remoteResourceId');
    sharedKey = registerOutput<String?>('sharedKey');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
    virtualHub = registerOutput<ResourceReferenceResponse?>('virtualHub', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResourceReferenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
