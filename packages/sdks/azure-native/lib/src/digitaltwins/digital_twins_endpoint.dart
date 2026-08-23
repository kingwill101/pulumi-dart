import 'package:pulumi/pulumi.dart' as pulumi;
import 'digital_twins_endpoint_args.dart';
import 'event_grid_response.dart';
import 'system_data_response.dart';

/// DigitalTwinsInstance endpoint resource.
///
/// Uses Azure REST API version 2023-01-31. In version 2.x of the Azure Native provider, it used API version 2023-01-31.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Put a DigitalTwinsEndpoint resource
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var digitalTwinsEndpoint = new AzureNative.DigitalTwins.DigitalTwinsEndpoint("digitalTwinsEndpoint", new()
///     {
///         EndpointName = "myServiceBus",
///         Properties = new AzureNative.DigitalTwins.Inputs.ServiceBusArgs
///         {
///             AuthenticationType = AzureNative.DigitalTwins.AuthenticationType.KeyBased,
///             EndpointType = "ServiceBus",
///             PrimaryConnectionString = "Endpoint=sb://mysb.servicebus.windows.net/;SharedAccessKeyName=RootManageSharedAccessKey;SharedAccessKey=xyzxyzoX4=;EntityPath=abcabc",
///             SecondaryConnectionString = "Endpoint=sb://mysb.servicebus.windows.net/;SharedAccessKeyName=RootManageSharedAccessKey;SharedAccessKey=xyzxyzoX4=;EntityPath=abcabc",
///         },
///         ResourceGroupName = "resRg",
///         ResourceName = "myDigitalTwinsService",
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
/// 	digitaltwins "github.com/pulumi/pulumi-azure-native-sdk/digitaltwins/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := digitaltwins.NewDigitalTwinsEndpoint(ctx, "digitalTwinsEndpoint", &digitaltwins.DigitalTwinsEndpointArgs{
/// 			EndpointName: pulumi.String("myServiceBus"),
/// 			Properties: &digitaltwins.ServiceBusArgs{
/// 				AuthenticationType:        pulumi.String(digitaltwins.AuthenticationTypeKeyBased),
/// 				EndpointType:              pulumi.String("ServiceBus"),
/// 				PrimaryConnectionString:   pulumi.String("Endpoint=sb://mysb.servicebus.windows.net/;SharedAccessKeyName=RootManageSharedAccessKey;SharedAccessKey=xyzxyzoX4=;EntityPath=abcabc"),
/// 				SecondaryConnectionString: pulumi.String("Endpoint=sb://mysb.servicebus.windows.net/;SharedAccessKeyName=RootManageSharedAccessKey;SharedAccessKey=xyzxyzoX4=;EntityPath=abcabc"),
/// 			},
/// 			ResourceGroupName: pulumi.String("resRg"),
/// 			ResourceName:      pulumi.String("myDigitalTwinsService"),
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
/// resource "azure-native_digitaltwins_digitaltwinsendpoint" "digitalTwinsEndpoint" {
///   endpoint_name = "myServiceBus"
///   properties = {
///     "authenticationType"        = "KeyBased"
///     "endpointType"              = "ServiceBus"
///     "primaryConnectionString"   = "Endpoint=sb://mysb.servicebus.windows.net/;SharedAccessKeyName=RootManageSharedAccessKey;SharedAccessKey=xyzxyzoX4=;EntityPath=abcabc"
///     "secondaryConnectionString" = "Endpoint=sb://mysb.servicebus.windows.net/;SharedAccessKeyName=RootManageSharedAccessKey;SharedAccessKey=xyzxyzoX4=;EntityPath=abcabc"
///   }
///   resource_group_name = "resRg"
///   resource_name       = "myDigitalTwinsService"
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
/// import com.pulumi.azurenative.digitaltwins.DigitalTwinsEndpoint;
/// import com.pulumi.azurenative.digitaltwins.DigitalTwinsEndpointArgs;
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
///         var digitalTwinsEndpoint = new DigitalTwinsEndpoint("digitalTwinsEndpoint", DigitalTwinsEndpointArgs.builder()
///             .endpointName("myServiceBus")
///             .properties(ServiceBusArgs.builder()
///                 .authenticationType("KeyBased")
///                 .endpointType("ServiceBus")
///                 .primaryConnectionString("Endpoint=sb://mysb.servicebus.windows.net/;SharedAccessKeyName=RootManageSharedAccessKey;SharedAccessKey=xyzxyzoX4=;EntityPath=abcabc")
///                 .secondaryConnectionString("Endpoint=sb://mysb.servicebus.windows.net/;SharedAccessKeyName=RootManageSharedAccessKey;SharedAccessKey=xyzxyzoX4=;EntityPath=abcabc")
///                 .build())
///             .resourceGroupName("resRg")
///             .resourceName("myDigitalTwinsService")
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
/// const digitalTwinsEndpoint = new azure_native.digitaltwins.DigitalTwinsEndpoint("digitalTwinsEndpoint", {
///     endpointName: "myServiceBus",
///     properties: {
///         authenticationType: azure_native.digitaltwins.AuthenticationType.KeyBased,
///         endpointType: "ServiceBus",
///         primaryConnectionString: "Endpoint=sb://mysb.servicebus.windows.net/;SharedAccessKeyName=RootManageSharedAccessKey;SharedAccessKey=xyzxyzoX4=;EntityPath=abcabc",
///         secondaryConnectionString: "Endpoint=sb://mysb.servicebus.windows.net/;SharedAccessKeyName=RootManageSharedAccessKey;SharedAccessKey=xyzxyzoX4=;EntityPath=abcabc",
///     },
///     resourceGroupName: "resRg",
///     resourceName: "myDigitalTwinsService",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// digital_twins_endpoint = azure_native.digitaltwins.DigitalTwinsEndpoint("digitalTwinsEndpoint",
///     endpoint_name="myServiceBus",
///     properties={
///         "authentication_type": azure_native.digitaltwins.AuthenticationType.KEY_BASED,
///         "endpoint_type": "ServiceBus",
///         "primary_connection_string": "Endpoint=sb://mysb.servicebus.windows.net/;SharedAccessKeyName=RootManageSharedAccessKey;SharedAccessKey=xyzxyzoX4=;EntityPath=abcabc",
///         "secondary_connection_string": "Endpoint=sb://mysb.servicebus.windows.net/;SharedAccessKeyName=RootManageSharedAccessKey;SharedAccessKey=xyzxyzoX4=;EntityPath=abcabc",
///     },
///     resource_group_name="resRg",
///     resource_name_="myDigitalTwinsService")
///
/// ```
///
/// ```yaml
/// resources:
///   digitalTwinsEndpoint:
///     type: azure-native:digitaltwins:DigitalTwinsEndpoint
///     properties:
///       endpointName: myServiceBus
///       properties:
///         authenticationType: KeyBased
///         endpointType: ServiceBus
///         primaryConnectionString: Endpoint=sb://mysb.servicebus.windows.net/;SharedAccessKeyName=RootManageSharedAccessKey;SharedAccessKey=xyzxyzoX4=;EntityPath=abcabc
///         secondaryConnectionString: Endpoint=sb://mysb.servicebus.windows.net/;SharedAccessKeyName=RootManageSharedAccessKey;SharedAccessKey=xyzxyzoX4=;EntityPath=abcabc
///       resourceGroupName: resRg
///       resourceName: myDigitalTwinsService
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Put a DigitalTwinsEndpoint resource with identity
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var digitalTwinsEndpoint = new AzureNative.DigitalTwins.DigitalTwinsEndpoint("digitalTwinsEndpoint", new()
///     {
///         EndpointName = "myServiceBus",
///         Properties = new AzureNative.DigitalTwins.Inputs.ServiceBusArgs
///         {
///             AuthenticationType = AzureNative.DigitalTwins.AuthenticationType.IdentityBased,
///             EndpointType = "ServiceBus",
///             EndpointUri = "sb://mysb.servicebus.windows.net/",
///             EntityPath = "mysbtopic",
///         },
///         ResourceGroupName = "resRg",
///         ResourceName = "myDigitalTwinsService",
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
/// 	digitaltwins "github.com/pulumi/pulumi-azure-native-sdk/digitaltwins/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := digitaltwins.NewDigitalTwinsEndpoint(ctx, "digitalTwinsEndpoint", &digitaltwins.DigitalTwinsEndpointArgs{
/// 			EndpointName: pulumi.String("myServiceBus"),
/// 			Properties: &digitaltwins.ServiceBusArgs{
/// 				AuthenticationType: pulumi.String(digitaltwins.AuthenticationTypeIdentityBased),
/// 				EndpointType:       pulumi.String("ServiceBus"),
/// 				EndpointUri:        pulumi.String("sb://mysb.servicebus.windows.net/"),
/// 				EntityPath:         pulumi.String("mysbtopic"),
/// 			},
/// 			ResourceGroupName: pulumi.String("resRg"),
/// 			ResourceName:      pulumi.String("myDigitalTwinsService"),
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
/// resource "azure-native_digitaltwins_digitaltwinsendpoint" "digitalTwinsEndpoint" {
///   endpoint_name = "myServiceBus"
///   properties = {
///     "authenticationType" = "IdentityBased"
///     "endpointType"       = "ServiceBus"
///     "endpointUri"        = "sb://mysb.servicebus.windows.net/"
///     "entityPath"         = "mysbtopic"
///   }
///   resource_group_name = "resRg"
///   resource_name       = "myDigitalTwinsService"
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
/// import com.pulumi.azurenative.digitaltwins.DigitalTwinsEndpoint;
/// import com.pulumi.azurenative.digitaltwins.DigitalTwinsEndpointArgs;
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
///         var digitalTwinsEndpoint = new DigitalTwinsEndpoint("digitalTwinsEndpoint", DigitalTwinsEndpointArgs.builder()
///             .endpointName("myServiceBus")
///             .properties(ServiceBusArgs.builder()
///                 .authenticationType("IdentityBased")
///                 .endpointType("ServiceBus")
///                 .endpointUri("sb://mysb.servicebus.windows.net/")
///                 .entityPath("mysbtopic")
///                 .build())
///             .resourceGroupName("resRg")
///             .resourceName("myDigitalTwinsService")
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
/// const digitalTwinsEndpoint = new azure_native.digitaltwins.DigitalTwinsEndpoint("digitalTwinsEndpoint", {
///     endpointName: "myServiceBus",
///     properties: {
///         authenticationType: azure_native.digitaltwins.AuthenticationType.IdentityBased,
///         endpointType: "ServiceBus",
///         endpointUri: "sb://mysb.servicebus.windows.net/",
///         entityPath: "mysbtopic",
///     },
///     resourceGroupName: "resRg",
///     resourceName: "myDigitalTwinsService",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// digital_twins_endpoint = azure_native.digitaltwins.DigitalTwinsEndpoint("digitalTwinsEndpoint",
///     endpoint_name="myServiceBus",
///     properties={
///         "authentication_type": azure_native.digitaltwins.AuthenticationType.IDENTITY_BASED,
///         "endpoint_type": "ServiceBus",
///         "endpoint_uri": "sb://mysb.servicebus.windows.net/",
///         "entity_path": "mysbtopic",
///     },
///     resource_group_name="resRg",
///     resource_name_="myDigitalTwinsService")
///
/// ```
///
/// ```yaml
/// resources:
///   digitalTwinsEndpoint:
///     type: azure-native:digitaltwins:DigitalTwinsEndpoint
///     properties:
///       endpointName: myServiceBus
///       properties:
///         authenticationType: IdentityBased
///         endpointType: ServiceBus
///         endpointUri: sb://mysb.servicebus.windows.net/
///         entityPath: mysbtopic
///       resourceGroupName: resRg
///       resourceName: myDigitalTwinsService
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Put a DigitalTwinsEndpoint resource with user assigned identity
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var digitalTwinsEndpoint = new AzureNative.DigitalTwins.DigitalTwinsEndpoint("digitalTwinsEndpoint", new()
///     {
///         EndpointName = "myServiceBus",
///         Properties = new AzureNative.DigitalTwins.Inputs.ServiceBusArgs
///         {
///             AuthenticationType = AzureNative.DigitalTwins.AuthenticationType.IdentityBased,
///             EndpointType = "ServiceBus",
///             EndpointUri = "sb://mysb.servicebus.windows.net/",
///             EntityPath = "mysbtopic",
///             Identity = new AzureNative.DigitalTwins.Inputs.ManagedIdentityReferenceArgs
///             {
///                 Type = AzureNative.DigitalTwins.IdentityType.UserAssigned,
///                 UserAssignedIdentity = "/subscriptions/50016170-c839-41ba-a724-51e9df440b9e/resourceGroups/testrg/providers/Microsoft.ManagedIdentity/userAssignedIdentities/testidentity",
///             },
///         },
///         ResourceGroupName = "resRg",
///         ResourceName = "myDigitalTwinsService",
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
/// 	digitaltwins "github.com/pulumi/pulumi-azure-native-sdk/digitaltwins/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := digitaltwins.NewDigitalTwinsEndpoint(ctx, "digitalTwinsEndpoint", &digitaltwins.DigitalTwinsEndpointArgs{
/// 			EndpointName: pulumi.String("myServiceBus"),
/// 			Properties: &digitaltwins.ServiceBusArgs{
/// 				AuthenticationType: pulumi.String(digitaltwins.AuthenticationTypeIdentityBased),
/// 				EndpointType:       pulumi.String("ServiceBus"),
/// 				EndpointUri:        pulumi.String("sb://mysb.servicebus.windows.net/"),
/// 				EntityPath:         pulumi.String("mysbtopic"),
/// 				Identity: &digitaltwins.ManagedIdentityReferenceArgs{
/// 					Type:                 pulumi.String(digitaltwins.IdentityTypeUserAssigned),
/// 					UserAssignedIdentity: pulumi.String("/subscriptions/50016170-c839-41ba-a724-51e9df440b9e/resourceGroups/testrg/providers/Microsoft.ManagedIdentity/userAssignedIdentities/testidentity"),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("resRg"),
/// 			ResourceName:      pulumi.String("myDigitalTwinsService"),
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
/// resource "azure-native_digitaltwins_digitaltwinsendpoint" "digitalTwinsEndpoint" {
///   endpoint_name = "myServiceBus"
///   properties = {
///     "authenticationType" = "IdentityBased"
///     "endpointType"       = "ServiceBus"
///     "endpointUri"        = "sb://mysb.servicebus.windows.net/"
///     "entityPath"         = "mysbtopic"
///     "identity" = {
///       "type"                 = "UserAssigned"
///       "userAssignedIdentity" = "/subscriptions/50016170-c839-41ba-a724-51e9df440b9e/resourceGroups/testrg/providers/Microsoft.ManagedIdentity/userAssignedIdentities/testidentity"
///     }
///   }
///   resource_group_name = "resRg"
///   resource_name       = "myDigitalTwinsService"
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
/// import com.pulumi.azurenative.digitaltwins.DigitalTwinsEndpoint;
/// import com.pulumi.azurenative.digitaltwins.DigitalTwinsEndpointArgs;
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
///         var digitalTwinsEndpoint = new DigitalTwinsEndpoint("digitalTwinsEndpoint", DigitalTwinsEndpointArgs.builder()
///             .endpointName("myServiceBus")
///             .properties(ServiceBusArgs.builder()
///                 .authenticationType("IdentityBased")
///                 .endpointType("ServiceBus")
///                 .endpointUri("sb://mysb.servicebus.windows.net/")
///                 .entityPath("mysbtopic")
///                 .identity(ManagedIdentityReferenceArgs.builder()
///                     .type("UserAssigned")
///                     .userAssignedIdentity("/subscriptions/50016170-c839-41ba-a724-51e9df440b9e/resourceGroups/testrg/providers/Microsoft.ManagedIdentity/userAssignedIdentities/testidentity")
///                     .build())
///                 .build())
///             .resourceGroupName("resRg")
///             .resourceName("myDigitalTwinsService")
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
/// const digitalTwinsEndpoint = new azure_native.digitaltwins.DigitalTwinsEndpoint("digitalTwinsEndpoint", {
///     endpointName: "myServiceBus",
///     properties: {
///         authenticationType: azure_native.digitaltwins.AuthenticationType.IdentityBased,
///         endpointType: "ServiceBus",
///         endpointUri: "sb://mysb.servicebus.windows.net/",
///         entityPath: "mysbtopic",
///         identity: {
///             type: azure_native.digitaltwins.IdentityType.UserAssigned,
///             userAssignedIdentity: "/subscriptions/50016170-c839-41ba-a724-51e9df440b9e/resourceGroups/testrg/providers/Microsoft.ManagedIdentity/userAssignedIdentities/testidentity",
///         },
///     },
///     resourceGroupName: "resRg",
///     resourceName: "myDigitalTwinsService",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// digital_twins_endpoint = azure_native.digitaltwins.DigitalTwinsEndpoint("digitalTwinsEndpoint",
///     endpoint_name="myServiceBus",
///     properties={
///         "authentication_type": azure_native.digitaltwins.AuthenticationType.IDENTITY_BASED,
///         "endpoint_type": "ServiceBus",
///         "endpoint_uri": "sb://mysb.servicebus.windows.net/",
///         "entity_path": "mysbtopic",
///         "identity": {
///             "type": azure_native.digitaltwins.IdentityType.USER_ASSIGNED,
///             "user_assigned_identity": "/subscriptions/50016170-c839-41ba-a724-51e9df440b9e/resourceGroups/testrg/providers/Microsoft.ManagedIdentity/userAssignedIdentities/testidentity",
///         },
///     },
///     resource_group_name="resRg",
///     resource_name_="myDigitalTwinsService")
///
/// ```
///
/// ```yaml
/// resources:
///   digitalTwinsEndpoint:
///     type: azure-native:digitaltwins:DigitalTwinsEndpoint
///     properties:
///       endpointName: myServiceBus
///       properties:
///         authenticationType: IdentityBased
///         endpointType: ServiceBus
///         endpointUri: sb://mysb.servicebus.windows.net/
///         entityPath: mysbtopic
///         identity:
///           type: UserAssigned
///           userAssignedIdentity: /subscriptions/50016170-c839-41ba-a724-51e9df440b9e/resourceGroups/testrg/providers/Microsoft.ManagedIdentity/userAssignedIdentities/testidentity
///       resourceGroupName: resRg
///       resourceName: myDigitalTwinsService
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
/// $ pulumi import azure-native:digitaltwins:DigitalTwinsEndpoint myServiceBus /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DigitalTwins/digitalTwinsInstances/{resourceName}/endpoints/{endpointName}
/// ```
class DigitalTwinsEndpoint extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Extension resource name.
  late final pulumi.Output<String> name;
  /// DigitalTwinsInstance endpoint resource properties.
  late final pulumi.Output<EventGridResponse> properties;
  /// Metadata pertaining to creation and last modification of the resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [DigitalTwinsEndpoint].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DigitalTwinsEndpoint]. {@macro pulumi_digitaltwins_digital_twins_endpoint_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DigitalTwinsEndpoint(
    String name, {
    DigitalTwinsEndpointArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:digitaltwins:DigitalTwinsEndpoint',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<EventGridResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EventGridResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
