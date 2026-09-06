import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_configuration_args.dart';
import 'system_data_response.dart';

/// The service configuration details associated with the target resource.
///
/// Uses Azure REST API version 2024-12-01. In version 2.x of the Azure Native provider, it used API version 2023-03-15.
///
/// Other available API versions: 2023-03-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native hybridconnectivity [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ServiceConfigurationsPutSSH
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var serviceConfiguration = new AzureNative.HybridConnectivity.ServiceConfiguration("serviceConfiguration", new()
///     {
///         EndpointName = "default",
///         Port = 22,
///         ResourceUri = "subscriptions/f5bcc1d9-23af-4ae9-aca1-041d0f593a63/resourceGroups/hybridRG/providers/Microsoft.HybridCompute/machines/testMachine/providers/Microsoft.HybridConnectivity/endpoints/default",
///         ServiceConfigurationName = "SSH",
///         ServiceName = AzureNative.HybridConnectivity.ServiceName.SSH,
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
/// 	hybridconnectivity "github.com/pulumi/pulumi-azure-native-sdk/hybridconnectivity/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := hybridconnectivity.NewServiceConfiguration(ctx, "serviceConfiguration", &hybridconnectivity.ServiceConfigurationArgs{
/// 			EndpointName:             pulumi.String("default"),
/// 			Port:                     pulumi.Float64(22),
/// 			ResourceUri:              pulumi.String("subscriptions/f5bcc1d9-23af-4ae9-aca1-041d0f593a63/resourceGroups/hybridRG/providers/Microsoft.HybridCompute/machines/testMachine/providers/Microsoft.HybridConnectivity/endpoints/default"),
/// 			ServiceConfigurationName: pulumi.String("SSH"),
/// 			ServiceName:              pulumi.String(hybridconnectivity.ServiceNameSSH),
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
/// resource "azure-native_hybridconnectivity_serviceconfiguration" "serviceConfiguration" {
///   endpoint_name              = "default"
///   port                       = 22
///   resource_uri               = "subscriptions/f5bcc1d9-23af-4ae9-aca1-041d0f593a63/resourceGroups/hybridRG/providers/Microsoft.HybridCompute/machines/testMachine/providers/Microsoft.HybridConnectivity/endpoints/default"
///   service_configuration_name = "SSH"
///   service_name               = "SSH"
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
/// import com.pulumi.azurenative.hybridconnectivity.ServiceConfiguration;
/// import com.pulumi.azurenative.hybridconnectivity.ServiceConfigurationArgs;
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
///         var serviceConfiguration = new ServiceConfiguration("serviceConfiguration", ServiceConfigurationArgs.builder()
///             .endpointName("default")
///             .port(22.0)
///             .resourceUri("subscriptions/f5bcc1d9-23af-4ae9-aca1-041d0f593a63/resourceGroups/hybridRG/providers/Microsoft.HybridCompute/machines/testMachine/providers/Microsoft.HybridConnectivity/endpoints/default")
///             .serviceConfigurationName("SSH")
///             .serviceName("SSH")
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
/// const serviceConfiguration = new azure_native.hybridconnectivity.ServiceConfiguration("serviceConfiguration", {
///     endpointName: "default",
///     port: 22,
///     resourceUri: "subscriptions/f5bcc1d9-23af-4ae9-aca1-041d0f593a63/resourceGroups/hybridRG/providers/Microsoft.HybridCompute/machines/testMachine/providers/Microsoft.HybridConnectivity/endpoints/default",
///     serviceConfigurationName: "SSH",
///     serviceName: azure_native.hybridconnectivity.ServiceName.SSH,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// service_configuration = azure_native.hybridconnectivity.ServiceConfiguration("serviceConfiguration",
///     endpoint_name="default",
///     port=float(22),
///     resource_uri="subscriptions/f5bcc1d9-23af-4ae9-aca1-041d0f593a63/resourceGroups/hybridRG/providers/Microsoft.HybridCompute/machines/testMachine/providers/Microsoft.HybridConnectivity/endpoints/default",
///     service_configuration_name="SSH",
///     service_name=azure_native.hybridconnectivity.ServiceName.SSH)
///
/// ```
///
/// ```yaml
/// resources:
///   serviceConfiguration:
///     type: azure-native:hybridconnectivity:ServiceConfiguration
///     properties:
///       endpointName: default
///       port: 22
///       resourceUri: subscriptions/f5bcc1d9-23af-4ae9-aca1-041d0f593a63/resourceGroups/hybridRG/providers/Microsoft.HybridCompute/machines/testMachine/providers/Microsoft.HybridConnectivity/endpoints/default
///       serviceConfigurationName: SSH
///       serviceName: SSH
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### ServiceConfigurationsPutWAC
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var serviceConfiguration = new AzureNative.HybridConnectivity.ServiceConfiguration("serviceConfiguration", new()
///     {
///         EndpointName = "default",
///         Port = 6516,
///         ResourceUri = "subscriptions/f5bcc1d9-23af-4ae9-aca1-041d0f593a63/resourceGroups/hybridRG/providers/Microsoft.HybridCompute/machines/testMachine/providers/Microsoft.HybridConnectivity/endpoints/default",
///         ServiceConfigurationName = "WAC",
///         ServiceName = AzureNative.HybridConnectivity.ServiceName.WAC,
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
/// 	hybridconnectivity "github.com/pulumi/pulumi-azure-native-sdk/hybridconnectivity/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := hybridconnectivity.NewServiceConfiguration(ctx, "serviceConfiguration", &hybridconnectivity.ServiceConfigurationArgs{
/// 			EndpointName:             pulumi.String("default"),
/// 			Port:                     pulumi.Float64(6516),
/// 			ResourceUri:              pulumi.String("subscriptions/f5bcc1d9-23af-4ae9-aca1-041d0f593a63/resourceGroups/hybridRG/providers/Microsoft.HybridCompute/machines/testMachine/providers/Microsoft.HybridConnectivity/endpoints/default"),
/// 			ServiceConfigurationName: pulumi.String("WAC"),
/// 			ServiceName:              pulumi.String(hybridconnectivity.ServiceNameWAC),
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
/// resource "azure-native_hybridconnectivity_serviceconfiguration" "serviceConfiguration" {
///   endpoint_name              = "default"
///   port                       = 6516
///   resource_uri               = "subscriptions/f5bcc1d9-23af-4ae9-aca1-041d0f593a63/resourceGroups/hybridRG/providers/Microsoft.HybridCompute/machines/testMachine/providers/Microsoft.HybridConnectivity/endpoints/default"
///   service_configuration_name = "WAC"
///   service_name               = "WAC"
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
/// import com.pulumi.azurenative.hybridconnectivity.ServiceConfiguration;
/// import com.pulumi.azurenative.hybridconnectivity.ServiceConfigurationArgs;
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
///         var serviceConfiguration = new ServiceConfiguration("serviceConfiguration", ServiceConfigurationArgs.builder()
///             .endpointName("default")
///             .port(6516.0)
///             .resourceUri("subscriptions/f5bcc1d9-23af-4ae9-aca1-041d0f593a63/resourceGroups/hybridRG/providers/Microsoft.HybridCompute/machines/testMachine/providers/Microsoft.HybridConnectivity/endpoints/default")
///             .serviceConfigurationName("WAC")
///             .serviceName("WAC")
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
/// const serviceConfiguration = new azure_native.hybridconnectivity.ServiceConfiguration("serviceConfiguration", {
///     endpointName: "default",
///     port: 6516,
///     resourceUri: "subscriptions/f5bcc1d9-23af-4ae9-aca1-041d0f593a63/resourceGroups/hybridRG/providers/Microsoft.HybridCompute/machines/testMachine/providers/Microsoft.HybridConnectivity/endpoints/default",
///     serviceConfigurationName: "WAC",
///     serviceName: azure_native.hybridconnectivity.ServiceName.WAC,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// service_configuration = azure_native.hybridconnectivity.ServiceConfiguration("serviceConfiguration",
///     endpoint_name="default",
///     port=float(6516),
///     resource_uri="subscriptions/f5bcc1d9-23af-4ae9-aca1-041d0f593a63/resourceGroups/hybridRG/providers/Microsoft.HybridCompute/machines/testMachine/providers/Microsoft.HybridConnectivity/endpoints/default",
///     service_configuration_name="WAC",
///     service_name=azure_native.hybridconnectivity.ServiceName.WAC)
///
/// ```
///
/// ```yaml
/// resources:
///   serviceConfiguration:
///     type: azure-native:hybridconnectivity:ServiceConfiguration
///     properties:
///       endpointName: default
///       port: 6516
///       resourceUri: subscriptions/f5bcc1d9-23af-4ae9-aca1-041d0f593a63/resourceGroups/hybridRG/providers/Microsoft.HybridCompute/machines/testMachine/providers/Microsoft.HybridConnectivity/endpoints/default
///       serviceConfigurationName: WAC
///       serviceName: WAC
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
/// $ pulumi import azure-native:hybridconnectivity:ServiceConfiguration myresource1 /{resourceUri}/providers/Microsoft.HybridConnectivity/endpoints/{endpointName}/serviceConfigurations/{serviceConfigurationName}
/// ```
class ServiceConfiguration extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The port on which service is enabled.
  late final pulumi.Output<double?> port;
  /// The resource provisioning state.
  late final pulumi.Output<String> provisioningState;
  /// The resource Id of the connectivity endpoint (optional).
  late final pulumi.Output<String?> resourceId;
  /// Name of the service.
  late final pulumi.Output<String> serviceName;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [ServiceConfiguration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ServiceConfiguration]. {@macro pulumi_hybridconnectivity_service_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ServiceConfiguration(
    String name, {
    ServiceConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:hybridconnectivity:ServiceConfiguration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    port = registerOutput<double?>('port');
    provisioningState = registerOutput<String>('provisioningState');
    resourceId = registerOutput<String?>('resourceId');
    serviceName = registerOutput<String>('serviceName');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [ServiceConfiguration] resource.
  ServiceConfiguration.reference(String urn)
    : super(
        'azure-native:hybridconnectivity:ServiceConfiguration',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    port = registerOutput<double?>('port');
    provisioningState = registerOutput<String>('provisioningState');
    resourceId = registerOutput<String?>('resourceId');
    serviceName = registerOutput<String>('serviceName');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
