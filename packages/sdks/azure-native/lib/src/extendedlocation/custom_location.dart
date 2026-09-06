import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_location_args.dart';
import 'custom_location_properties_authentication_response.dart';
import 'identity_response.dart';
import 'system_data_response.dart';

/// Custom Locations definition.
///
/// Uses Azure REST API version 2021-08-31-preview. In version 2.x of the Azure Native provider, it used API version 2021-08-15.
///
/// Other available API versions: 2021-08-15, 2024-09-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native extendedlocation [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create/Update Custom Location
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var customLocation = new AzureNative.ExtendedLocation.CustomLocation("customLocation", new()
///     {
///         Authentication = new AzureNative.ExtendedLocation.Inputs.CustomLocationPropertiesAuthenticationArgs
///         {
///             Type = "KubeConfig",
///             Value = "<base64 KubeConfig>",
///         },
///         ClusterExtensionIds = new[]
///         {
///             "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Kubernetes/connectedCluster/someCluster/Microsoft.KubernetesConfiguration/clusterExtensions/fooExtension",
///         },
///         DisplayName = "customLocationLocation01",
///         HostResourceId = "/subscriptions/11111111-2222-3333-4444-555555555555/resourceGroups/testresourcegroup/providers/Microsoft.ContainerService/managedClusters/cluster01",
///         Identity = new AzureNative.ExtendedLocation.Inputs.IdentityArgs
///         {
///             Type = AzureNative.ExtendedLocation.ResourceIdentityType.SystemAssigned,
///         },
///         Location = "West US",
///         Namespace = "namespace01",
///         ResourceGroupName = "testresourcegroup",
///         ResourceName = "customLocation01",
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
/// 		_, err := extendedlocation.NewCustomLocation(ctx, "customLocation", &extendedlocation.CustomLocationArgs{
/// 			Authentication: &extendedlocation.CustomLocationPropertiesAuthenticationArgs{
/// 				Type:  pulumi.String("KubeConfig"),
/// 				Value: pulumi.String("<base64 KubeConfig>"),
/// 			},
/// 			ClusterExtensionIds: pulumi.StringArray{
/// 				pulumi.String("/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Kubernetes/connectedCluster/someCluster/Microsoft.KubernetesConfiguration/clusterExtensions/fooExtension"),
/// 			},
/// 			DisplayName:    pulumi.String("customLocationLocation01"),
/// 			HostResourceId: pulumi.String("/subscriptions/11111111-2222-3333-4444-555555555555/resourceGroups/testresourcegroup/providers/Microsoft.ContainerService/managedClusters/cluster01"),
/// 			Identity: &extendedlocation.IdentityArgs{
/// 				Type: pulumi.String(extendedlocation.ResourceIdentityTypeSystemAssigned),
/// 			},
/// 			Location:          pulumi.String("West US"),
/// 			Namespace:         pulumi.String("namespace01"),
/// 			ResourceGroupName: pulumi.String("testresourcegroup"),
/// 			ResourceName:      pulumi.String("customLocation01"),
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
/// resource "azure-native_extendedlocation_customlocation" "customLocation" {
///   authentication = {
///     type  = "KubeConfig"
///     value = "<base64 KubeConfig>"
///   }
///   cluster_extension_ids = ["/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Kubernetes/connectedCluster/someCluster/Microsoft.KubernetesConfiguration/clusterExtensions/fooExtension"]
///   display_name          = "customLocationLocation01"
///   host_resource_id      = "/subscriptions/11111111-2222-3333-4444-555555555555/resourceGroups/testresourcegroup/providers/Microsoft.ContainerService/managedClusters/cluster01"
///   identity = {
///     type = "SystemAssigned"
///   }
///   location            = "West US"
///   namespace           = "namespace01"
///   resource_group_name = "testresourcegroup"
///   resource_name       = "customLocation01"
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
/// import com.pulumi.azurenative.extendedlocation.CustomLocation;
/// import com.pulumi.azurenative.extendedlocation.CustomLocationArgs;
/// import com.pulumi.azurenative.extendedlocation.inputs.CustomLocationPropertiesAuthenticationArgs;
/// import com.pulumi.azurenative.extendedlocation.inputs.IdentityArgs;
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
///         var customLocation = new CustomLocation("customLocation", CustomLocationArgs.builder()
///             .authentication(CustomLocationPropertiesAuthenticationArgs.builder()
///                 .type("KubeConfig")
///                 .value("<base64 KubeConfig>")
///                 .build())
///             .clusterExtensionIds("/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Kubernetes/connectedCluster/someCluster/Microsoft.KubernetesConfiguration/clusterExtensions/fooExtension")
///             .displayName("customLocationLocation01")
///             .hostResourceId("/subscriptions/11111111-2222-3333-4444-555555555555/resourceGroups/testresourcegroup/providers/Microsoft.ContainerService/managedClusters/cluster01")
///             .identity(IdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .location("West US")
///             .namespace("namespace01")
///             .resourceGroupName("testresourcegroup")
///             .resourceName("customLocation01")
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
/// const customLocation = new azure_native.extendedlocation.CustomLocation("customLocation", {
///     authentication: {
///         type: "KubeConfig",
///         value: "<base64 KubeConfig>",
///     },
///     clusterExtensionIds: ["/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Kubernetes/connectedCluster/someCluster/Microsoft.KubernetesConfiguration/clusterExtensions/fooExtension"],
///     displayName: "customLocationLocation01",
///     hostResourceId: "/subscriptions/11111111-2222-3333-4444-555555555555/resourceGroups/testresourcegroup/providers/Microsoft.ContainerService/managedClusters/cluster01",
///     identity: {
///         type: azure_native.extendedlocation.ResourceIdentityType.SystemAssigned,
///     },
///     location: "West US",
///     namespace: "namespace01",
///     resourceGroupName: "testresourcegroup",
///     resourceName: "customLocation01",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// custom_location = azure_native.extendedlocation.CustomLocation("customLocation",
///     authentication={
///         "type": "KubeConfig",
///         "value": "<base64 KubeConfig>",
///     },
///     cluster_extension_ids=["/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Kubernetes/connectedCluster/someCluster/Microsoft.KubernetesConfiguration/clusterExtensions/fooExtension"],
///     display_name="customLocationLocation01",
///     host_resource_id="/subscriptions/11111111-2222-3333-4444-555555555555/resourceGroups/testresourcegroup/providers/Microsoft.ContainerService/managedClusters/cluster01",
///     identity={
///         "type": azure_native.extendedlocation.ResourceIdentityType.SYSTEM_ASSIGNED,
///     },
///     location="West US",
///     namespace="namespace01",
///     resource_group_name="testresourcegroup",
///     resource_name_="customLocation01")
///
/// ```
///
/// ```yaml
/// resources:
///   customLocation:
///     type: azure-native:extendedlocation:CustomLocation
///     properties:
///       authentication:
///         type: KubeConfig
///         value: <base64 KubeConfig>
///       clusterExtensionIds:
///         - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Kubernetes/connectedCluster/someCluster/Microsoft.KubernetesConfiguration/clusterExtensions/fooExtension
///       displayName: customLocationLocation01
///       hostResourceId: /subscriptions/11111111-2222-3333-4444-555555555555/resourceGroups/testresourcegroup/providers/Microsoft.ContainerService/managedClusters/cluster01
///       identity:
///         type: SystemAssigned
///       location: West US
///       namespace: namespace01
///       resourceGroupName: testresourcegroup
///       resourceName: customLocation01
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
/// $ pulumi import azure-native:extendedlocation:CustomLocation customLocation01 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ExtendedLocation/customLocations/{resourceName}
/// ```
class CustomLocation extends pulumi.CustomResource {
  /// This is optional input that contains the authentication that should be used to generate the namespace.
  late final pulumi.Output<CustomLocationPropertiesAuthenticationResponse?> authentication;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Contains the reference to the add-on that contains charts to deploy CRDs and operators.
  late final pulumi.Output<List<String>?> clusterExtensionIds;
  /// Display name for the Custom Locations location.
  late final pulumi.Output<String?> displayName;
  /// Connected Cluster or AKS Cluster. The Custom Locations RP will perform a checkAccess API for listAdminCredentials permissions.
  late final pulumi.Output<String?> hostResourceId;
  /// Type of host the Custom Locations is referencing (Kubernetes, etc...).
  late final pulumi.Output<String?> hostType;
  /// Identity for the resource.
  late final pulumi.Output<IdentityResponse?> identity;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Kubernetes namespace that will be created on the specified cluster.
  late final pulumi.Output<String?> namespace;
  /// Provisioning State for the Custom Location.
  late final pulumi.Output<String?> provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [CustomLocation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CustomLocation]. {@macro pulumi_extendedlocation_custom_location_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CustomLocation(
    String name, {
    CustomLocationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:extendedlocation:CustomLocation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    authentication = registerOutput<CustomLocationPropertiesAuthenticationResponse?>('authentication', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CustomLocationPropertiesAuthenticationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    azureApiVersion = registerOutput<String>('azureApiVersion');
    clusterExtensionIds = registerOutput<List<String>?>('clusterExtensionIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    displayName = registerOutput<String?>('displayName');
    hostResourceId = registerOutput<String?>('hostResourceId');
    hostType = registerOutput<String?>('hostType');
    identity = registerOutput<IdentityResponse?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    namespace = registerOutput<String?>('namespace');
    provisioningState = registerOutput<String?>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [CustomLocation] resource.
  CustomLocation.reference(String urn)
    : super(
        'azure-native:extendedlocation:CustomLocation',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    authentication = registerOutput<CustomLocationPropertiesAuthenticationResponse?>('authentication', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CustomLocationPropertiesAuthenticationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    azureApiVersion = registerOutput<String>('azureApiVersion');
    clusterExtensionIds = registerOutput<List<String>?>('clusterExtensionIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    displayName = registerOutput<String?>('displayName');
    hostResourceId = registerOutput<String?>('hostResourceId');
    hostType = registerOutput<String?>('hostType');
    identity = registerOutput<IdentityResponse?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    namespace = registerOutput<String?>('namespace');
    provisioningState = registerOutput<String?>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }
}
