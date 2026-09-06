import 'package:pulumi/pulumi.dart' as pulumi;
import 'communication_service_args.dart';
import 'managed_service_identity_response.dart';
import 'system_data_response.dart';

/// A class representing a CommunicationService resource.
///
/// Uses Azure REST API version 2026-03-18. In version 2.x of the Azure Native provider, it used API version 2023-03-31.
///
/// Other available API versions: 2023-03-31, 2023-04-01, 2023-04-01-preview, 2023-06-01-preview, 2024-09-01-preview, 2025-05-01, 2025-05-01-preview, 2025-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native communication [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update resource
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var communicationService = new AzureNative.Communication.CommunicationService("communicationService", new()
///     {
///         CommunicationServiceName = "MyCommunicationResource",
///         DataLocation = "United States",
///         Location = "Global",
///         ResourceGroupName = "MyResourceGroup",
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
/// 	communication "github.com/pulumi/pulumi-azure-native-sdk/communication/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := communication.NewCommunicationService(ctx, "communicationService", &communication.CommunicationServiceArgs{
/// 			CommunicationServiceName: pulumi.String("MyCommunicationResource"),
/// 			DataLocation:             pulumi.String("United States"),
/// 			Location:                 pulumi.String("Global"),
/// 			ResourceGroupName:        pulumi.String("MyResourceGroup"),
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
/// resource "azure-native_communication_communicationservice" "communicationService" {
///   communication_service_name = "MyCommunicationResource"
///   data_location              = "United States"
///   location                   = "Global"
///   resource_group_name        = "MyResourceGroup"
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
/// import com.pulumi.azurenative.communication.CommunicationService;
/// import com.pulumi.azurenative.communication.CommunicationServiceArgs;
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
///         var communicationService = new CommunicationService("communicationService", CommunicationServiceArgs.builder()
///             .communicationServiceName("MyCommunicationResource")
///             .dataLocation("United States")
///             .location("Global")
///             .resourceGroupName("MyResourceGroup")
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
/// const communicationService = new azure_native.communication.CommunicationService("communicationService", {
///     communicationServiceName: "MyCommunicationResource",
///     dataLocation: "United States",
///     location: "Global",
///     resourceGroupName: "MyResourceGroup",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// communication_service = azure_native.communication.CommunicationService("communicationService",
///     communication_service_name="MyCommunicationResource",
///     data_location="United States",
///     location="Global",
///     resource_group_name="MyResourceGroup")
///
/// ```
///
/// ```yaml
/// resources:
///   communicationService:
///     type: azure-native:communication:CommunicationService
///     properties:
///       communicationServiceName: MyCommunicationResource
///       dataLocation: United States
///       location: Global
///       resourceGroupName: MyResourceGroup
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create or update resource with DisableLocalAuth
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var communicationService = new AzureNative.Communication.CommunicationService("communicationService", new()
///     {
///         CommunicationServiceName = "MyCommunicationResource",
///         DataLocation = "United States",
///         DisableLocalAuth = true,
///         Location = "Global",
///         ResourceGroupName = "MyResourceGroup",
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
/// 	communication "github.com/pulumi/pulumi-azure-native-sdk/communication/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := communication.NewCommunicationService(ctx, "communicationService", &communication.CommunicationServiceArgs{
/// 			CommunicationServiceName: pulumi.String("MyCommunicationResource"),
/// 			DataLocation:             pulumi.String("United States"),
/// 			DisableLocalAuth:         pulumi.Bool(true),
/// 			Location:                 pulumi.String("Global"),
/// 			ResourceGroupName:        pulumi.String("MyResourceGroup"),
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
/// resource "azure-native_communication_communicationservice" "communicationService" {
///   communication_service_name = "MyCommunicationResource"
///   data_location              = "United States"
///   disable_local_auth         = true
///   location                   = "Global"
///   resource_group_name        = "MyResourceGroup"
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
/// import com.pulumi.azurenative.communication.CommunicationService;
/// import com.pulumi.azurenative.communication.CommunicationServiceArgs;
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
///         var communicationService = new CommunicationService("communicationService", CommunicationServiceArgs.builder()
///             .communicationServiceName("MyCommunicationResource")
///             .dataLocation("United States")
///             .disableLocalAuth(true)
///             .location("Global")
///             .resourceGroupName("MyResourceGroup")
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
/// const communicationService = new azure_native.communication.CommunicationService("communicationService", {
///     communicationServiceName: "MyCommunicationResource",
///     dataLocation: "United States",
///     disableLocalAuth: true,
///     location: "Global",
///     resourceGroupName: "MyResourceGroup",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// communication_service = azure_native.communication.CommunicationService("communicationService",
///     communication_service_name="MyCommunicationResource",
///     data_location="United States",
///     disable_local_auth=True,
///     location="Global",
///     resource_group_name="MyResourceGroup")
///
/// ```
///
/// ```yaml
/// resources:
///   communicationService:
///     type: azure-native:communication:CommunicationService
///     properties:
///       communicationServiceName: MyCommunicationResource
///       dataLocation: United States
///       disableLocalAuth: true
///       location: Global
///       resourceGroupName: MyResourceGroup
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create or update resource with PublicNetworkAccess
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var communicationService = new AzureNative.Communication.CommunicationService("communicationService", new()
///     {
///         CommunicationServiceName = "MyCommunicationResource",
///         DataLocation = "United States",
///         Location = "Global",
///         PublicNetworkAccess = AzureNative.Communication.PublicNetworkAccess.Enabled,
///         ResourceGroupName = "MyResourceGroup",
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
/// 	communication "github.com/pulumi/pulumi-azure-native-sdk/communication/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := communication.NewCommunicationService(ctx, "communicationService", &communication.CommunicationServiceArgs{
/// 			CommunicationServiceName: pulumi.String("MyCommunicationResource"),
/// 			DataLocation:             pulumi.String("United States"),
/// 			Location:                 pulumi.String("Global"),
/// 			PublicNetworkAccess:      pulumi.String(communication.PublicNetworkAccessEnabled),
/// 			ResourceGroupName:        pulumi.String("MyResourceGroup"),
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
/// resource "azure-native_communication_communicationservice" "communicationService" {
///   communication_service_name = "MyCommunicationResource"
///   data_location              = "United States"
///   location                   = "Global"
///   public_network_access      = "Enabled"
///   resource_group_name        = "MyResourceGroup"
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
/// import com.pulumi.azurenative.communication.CommunicationService;
/// import com.pulumi.azurenative.communication.CommunicationServiceArgs;
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
///         var communicationService = new CommunicationService("communicationService", CommunicationServiceArgs.builder()
///             .communicationServiceName("MyCommunicationResource")
///             .dataLocation("United States")
///             .location("Global")
///             .publicNetworkAccess("Enabled")
///             .resourceGroupName("MyResourceGroup")
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
/// const communicationService = new azure_native.communication.CommunicationService("communicationService", {
///     communicationServiceName: "MyCommunicationResource",
///     dataLocation: "United States",
///     location: "Global",
///     publicNetworkAccess: azure_native.communication.PublicNetworkAccess.Enabled,
///     resourceGroupName: "MyResourceGroup",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// communication_service = azure_native.communication.CommunicationService("communicationService",
///     communication_service_name="MyCommunicationResource",
///     data_location="United States",
///     location="Global",
///     public_network_access=azure_native.communication.PublicNetworkAccess.ENABLED,
///     resource_group_name="MyResourceGroup")
///
/// ```
///
/// ```yaml
/// resources:
///   communicationService:
///     type: azure-native:communication:CommunicationService
///     properties:
///       communicationServiceName: MyCommunicationResource
///       dataLocation: United States
///       location: Global
///       publicNetworkAccess: Enabled
///       resourceGroupName: MyResourceGroup
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create or update resource with managed identity
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var communicationService = new AzureNative.Communication.CommunicationService("communicationService", new()
///     {
///         CommunicationServiceName = "MyCommunicationResource",
///         DataLocation = "United States",
///         Identity = new AzureNative.Communication.Inputs.ManagedServiceIdentityArgs
///         {
///             Type = AzureNative.Communication.ManagedServiceIdentityType.SystemAssigned,
///         },
///         Location = "Global",
///         ResourceGroupName = "MyResourceGroup",
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
/// 	communication "github.com/pulumi/pulumi-azure-native-sdk/communication/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := communication.NewCommunicationService(ctx, "communicationService", &communication.CommunicationServiceArgs{
/// 			CommunicationServiceName: pulumi.String("MyCommunicationResource"),
/// 			DataLocation:             pulumi.String("United States"),
/// 			Identity: &communication.ManagedServiceIdentityArgs{
/// 				Type: pulumi.String(communication.ManagedServiceIdentityTypeSystemAssigned),
/// 			},
/// 			Location:          pulumi.String("Global"),
/// 			ResourceGroupName: pulumi.String("MyResourceGroup"),
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
/// resource "azure-native_communication_communicationservice" "communicationService" {
///   communication_service_name = "MyCommunicationResource"
///   data_location              = "United States"
///   identity = {
///     type = "SystemAssigned"
///   }
///   location            = "Global"
///   resource_group_name = "MyResourceGroup"
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
/// import com.pulumi.azurenative.communication.CommunicationService;
/// import com.pulumi.azurenative.communication.CommunicationServiceArgs;
/// import com.pulumi.azurenative.communication.inputs.ManagedServiceIdentityArgs;
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
///         var communicationService = new CommunicationService("communicationService", CommunicationServiceArgs.builder()
///             .communicationServiceName("MyCommunicationResource")
///             .dataLocation("United States")
///             .identity(ManagedServiceIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .location("Global")
///             .resourceGroupName("MyResourceGroup")
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
/// const communicationService = new azure_native.communication.CommunicationService("communicationService", {
///     communicationServiceName: "MyCommunicationResource",
///     dataLocation: "United States",
///     identity: {
///         type: azure_native.communication.ManagedServiceIdentityType.SystemAssigned,
///     },
///     location: "Global",
///     resourceGroupName: "MyResourceGroup",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// communication_service = azure_native.communication.CommunicationService("communicationService",
///     communication_service_name="MyCommunicationResource",
///     data_location="United States",
///     identity={
///         "type": azure_native.communication.ManagedServiceIdentityType.SYSTEM_ASSIGNED,
///     },
///     location="Global",
///     resource_group_name="MyResourceGroup")
///
/// ```
///
/// ```yaml
/// resources:
///   communicationService:
///     type: azure-native:communication:CommunicationService
///     properties:
///       communicationServiceName: MyCommunicationResource
///       dataLocation: United States
///       identity:
///         type: SystemAssigned
///       location: Global
///       resourceGroupName: MyResourceGroup
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
/// $ pulumi import azure-native:communication:CommunicationService MyCommunicationResource /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Communication/communicationServices/{communicationServiceName}
/// ```
class CommunicationService extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The location where the communication service stores its data at rest.
  late final pulumi.Output<String> dataLocation;
  /// Disable local authentication for the CommunicationService.
  late final pulumi.Output<bool?> disableLocalAuth;
  /// FQDN of the CommunicationService instance.
  late final pulumi.Output<String> hostName;
  /// The managed service identities assigned to this resource.
  late final pulumi.Output<ManagedServiceIdentityResponse?> identity;
  /// The immutable resource Id of the communication service.
  late final pulumi.Output<String> immutableResourceId;
  /// List of email Domain resource Ids.
  late final pulumi.Output<List<String>?> linkedDomains;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Resource ID of an Azure Notification Hub linked to this resource.
  late final pulumi.Output<String> notificationHubId;
  /// Provisioning state of the resource.
  late final pulumi.Output<String> provisioningState;
  /// Allow, disallow, or let network security perimeter configuration control public network access to the protected resource. Value is optional but if passed in, it must be 'Enabled', 'Disabled' or 'SecuredByPerimeter'.
  late final pulumi.Output<String?> publicNetworkAccess;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// Version of the CommunicationService resource. Probably you need the same or higher version of client SDKs.
  late final pulumi.Output<String> version;

  /// Creates a new [CommunicationService].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CommunicationService]. {@macro pulumi_communication_communication_service_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CommunicationService(
    String name, {
    CommunicationServiceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:communication:CommunicationService',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    dataLocation = registerOutput<String>('dataLocation');
    disableLocalAuth = registerOutput<bool?>('disableLocalAuth');
    hostName = registerOutput<String>('hostName');
    identity = registerOutput<ManagedServiceIdentityResponse?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedServiceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    immutableResourceId = registerOutput<String>('immutableResourceId');
    linkedDomains = registerOutput<List<String>?>('linkedDomains', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    notificationHubId = registerOutput<String>('notificationHubId');
    provisioningState = registerOutput<String>('provisioningState');
    publicNetworkAccess = registerOutput<String?>('publicNetworkAccess');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
    version = registerOutput<String>('version');
  }

  /// Creates a typed reference to an existing [CommunicationService] resource.
  CommunicationService.reference(String urn)
    : super(
        'azure-native:communication:CommunicationService',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    dataLocation = registerOutput<String>('dataLocation');
    disableLocalAuth = registerOutput<bool?>('disableLocalAuth');
    hostName = registerOutput<String>('hostName');
    identity = registerOutput<ManagedServiceIdentityResponse?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedServiceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    immutableResourceId = registerOutput<String>('immutableResourceId');
    linkedDomains = registerOutput<List<String>?>('linkedDomains', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    notificationHubId = registerOutput<String>('notificationHubId');
    provisioningState = registerOutput<String>('provisioningState');
    publicNetworkAccess = registerOutput<String?>('publicNetworkAccess');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
    version = registerOutput<String>('version');
  }
}
