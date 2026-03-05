import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_insights_configuration_response.dart';
import 'app_logs_configuration_response.dart';
import 'custom_domain_configuration_response.dart';
import 'dapr_configuration_response.dart';
import 'disk_encryption_configuration_response.dart';
import 'ingress_configuration_response.dart';
import 'keda_configuration_response.dart';
import 'managed_environment_args.dart';
import 'managed_environment_response_peer_authentication.dart';
import 'managed_environment_response_peer_traffic_configuration.dart';
import 'managed_service_identity_response.dart';
import 'open_telemetry_configuration_response.dart';
import 'system_data_response.dart';
import 'vnet_configuration_response.dart';

/// An environment for hosting container apps
///
/// Uses Azure REST API version 2025-02-02-preview. In version 2.x of the Azure Native provider, it used API version 2022-10-01.
///
/// Other available API versions: 2022-10-01, 2022-11-01-preview, 2023-04-01-preview, 2023-05-01, 2023-05-02-preview, 2023-08-01-preview, 2023-11-02-preview, 2024-02-02-preview, 2024-03-01, 2024-08-02-preview, 2024-10-02-preview, 2025-01-01, 2025-07-01, 2025-10-02-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native app [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create environment with custom infrastructureResourceGroup
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var managedEnvironment = new AzureNative.App.ManagedEnvironment("managedEnvironment", new()
///     {
///         AppLogsConfiguration = new AzureNative.App.Inputs.AppLogsConfigurationArgs
///         {
///             LogAnalyticsConfiguration = new AzureNative.App.Inputs.LogAnalyticsConfigurationArgs
///             {
///                 CustomerId = "string",
///                 SharedKey = "string",
///             },
///         },
///         AvailabilityZones = new[]
///         {
///             "1",
///             "2",
///             "3",
///         },
///         CustomDomainConfiguration = new AzureNative.App.Inputs.CustomDomainConfigurationArgs
///         {
///             CertificatePassword = "1234",
///             CertificateValue = "Y2VydA==",
///             DnsSuffix = "www.my-name.com",
///         },
///         DaprAIConnectionString = "InstrumentationKey=00000000-0000-0000-0000-000000000000;IngestionEndpoint=https://northcentralus-0.in.applicationinsights.azure.com/",
///         EnvironmentName = "testcontainerenv",
///         InfrastructureResourceGroup = "myInfrastructureRgName",
///         Location = "East US",
///         ResourceGroupName = "examplerg",
///         VnetConfiguration = new AzureNative.App.Inputs.VnetConfigurationArgs
///         {
///             InfrastructureSubnetId = "/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/RGName/providers/Microsoft.Network/virtualNetworks/VNetName/subnets/subnetName1",
///         },
///         WorkloadProfiles = new[]
///         {
///             new AzureNative.App.Inputs.WorkloadProfileArgs
///             {
///                 EnableFips = true,
///                 MaximumCount = 12,
///                 MinimumCount = 3,
///                 Name = "My-GP-01",
///                 WorkloadProfileType = "GeneralPurpose",
///             },
///             new AzureNative.App.Inputs.WorkloadProfileArgs
///             {
///                 MaximumCount = 6,
///                 MinimumCount = 3,
///                 Name = "My-MO-01",
///                 WorkloadProfileType = "MemoryOptimized",
///             },
///             new AzureNative.App.Inputs.WorkloadProfileArgs
///             {
///                 MaximumCount = 6,
///                 MinimumCount = 3,
///                 Name = "My-CO-01",
///                 WorkloadProfileType = "ComputeOptimized",
///             },
///             new AzureNative.App.Inputs.WorkloadProfileArgs
///             {
///                 Name = "My-consumption-01",
///                 WorkloadProfileType = "Consumption",
///             },
///         },
///         ZoneRedundant = true,
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
/// 	app "github.com/pulumi/pulumi-azure-native-sdk/app/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := app.NewManagedEnvironment(ctx, "managedEnvironment", &app.ManagedEnvironmentArgs{
/// 			AppLogsConfiguration: &app.AppLogsConfigurationArgs{
/// 				LogAnalyticsConfiguration: &app.LogAnalyticsConfigurationArgs{
/// 					CustomerId: pulumi.String("string"),
/// 					SharedKey:  pulumi.String("string"),
/// 				},
/// 			},
/// 			AvailabilityZones: pulumi.StringArray{
/// 				pulumi.String("1"),
/// 				pulumi.String("2"),
/// 				pulumi.String("3"),
/// 			},
/// 			CustomDomainConfiguration: &app.CustomDomainConfigurationArgs{
/// 				CertificatePassword: pulumi.String("1234"),
/// 				CertificateValue:    pulumi.String("Y2VydA=="),
/// 				DnsSuffix:           pulumi.String("www.my-name.com"),
/// 			},
/// 			DaprAIConnectionString:      pulumi.String("InstrumentationKey=00000000-0000-0000-0000-000000000000;IngestionEndpoint=https://northcentralus-0.in.applicationinsights.azure.com/"),
/// 			EnvironmentName:             pulumi.String("testcontainerenv"),
/// 			InfrastructureResourceGroup: pulumi.String("myInfrastructureRgName"),
/// 			Location:                    pulumi.String("East US"),
/// 			ResourceGroupName:           pulumi.String("examplerg"),
/// 			VnetConfiguration: &app.VnetConfigurationArgs{
/// 				InfrastructureSubnetId: pulumi.String("/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/RGName/providers/Microsoft.Network/virtualNetworks/VNetName/subnets/subnetName1"),
/// 			},
/// 			WorkloadProfiles: app.WorkloadProfileArray{
/// 				&app.WorkloadProfileArgs{
/// 					EnableFips:          pulumi.Bool(true),
/// 					MaximumCount:        pulumi.Int(12),
/// 					MinimumCount:        pulumi.Int(3),
/// 					Name:                pulumi.String("My-GP-01"),
/// 					WorkloadProfileType: pulumi.String("GeneralPurpose"),
/// 				},
/// 				&app.WorkloadProfileArgs{
/// 					MaximumCount:        pulumi.Int(6),
/// 					MinimumCount:        pulumi.Int(3),
/// 					Name:                pulumi.String("My-MO-01"),
/// 					WorkloadProfileType: pulumi.String("MemoryOptimized"),
/// 				},
/// 				&app.WorkloadProfileArgs{
/// 					MaximumCount:        pulumi.Int(6),
/// 					MinimumCount:        pulumi.Int(3),
/// 					Name:                pulumi.String("My-CO-01"),
/// 					WorkloadProfileType: pulumi.String("ComputeOptimized"),
/// 				},
/// 				&app.WorkloadProfileArgs{
/// 					Name:                pulumi.String("My-consumption-01"),
/// 					WorkloadProfileType: pulumi.String("Consumption"),
/// 				},
/// 			},
/// 			ZoneRedundant: pulumi.Bool(true),
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
/// import com.pulumi.azurenative.app.ManagedEnvironment;
/// import com.pulumi.azurenative.app.ManagedEnvironmentArgs;
/// import com.pulumi.azurenative.app.inputs.AppLogsConfigurationArgs;
/// import com.pulumi.azurenative.app.inputs.LogAnalyticsConfigurationArgs;
/// import com.pulumi.azurenative.app.inputs.CustomDomainConfigurationArgs;
/// import com.pulumi.azurenative.app.inputs.VnetConfigurationArgs;
/// import com.pulumi.azurenative.app.inputs.WorkloadProfileArgs;
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
///         var managedEnvironment = new ManagedEnvironment("managedEnvironment", ManagedEnvironmentArgs.builder()
///             .appLogsConfiguration(AppLogsConfigurationArgs.builder()
///                 .logAnalyticsConfiguration(LogAnalyticsConfigurationArgs.builder()
///                     .customerId("string")
///                     .sharedKey("string")
///                     .build())
///                 .build())
///             .availabilityZones(
///                 "1",
///                 "2",
///                 "3")
///             .customDomainConfiguration(CustomDomainConfigurationArgs.builder()
///                 .certificatePassword("1234")
///                 .certificateValue("Y2VydA==")
///                 .dnsSuffix("www.my-name.com")
///                 .build())
///             .daprAIConnectionString("InstrumentationKey=00000000-0000-0000-0000-000000000000;IngestionEndpoint=https://northcentralus-0.in.applicationinsights.azure.com/")
///             .environmentName("testcontainerenv")
///             .infrastructureResourceGroup("myInfrastructureRgName")
///             .location("East US")
///             .resourceGroupName("examplerg")
///             .vnetConfiguration(VnetConfigurationArgs.builder()
///                 .infrastructureSubnetId("/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/RGName/providers/Microsoft.Network/virtualNetworks/VNetName/subnets/subnetName1")
///                 .build())
///             .workloadProfiles(
///                 WorkloadProfileArgs.builder()
///                     .enableFips(true)
///                     .maximumCount(12)
///                     .minimumCount(3)
///                     .name("My-GP-01")
///                     .workloadProfileType("GeneralPurpose")
///                     .build(),
///                 WorkloadProfileArgs.builder()
///                     .maximumCount(6)
///                     .minimumCount(3)
///                     .name("My-MO-01")
///                     .workloadProfileType("MemoryOptimized")
///                     .build(),
///                 WorkloadProfileArgs.builder()
///                     .maximumCount(6)
///                     .minimumCount(3)
///                     .name("My-CO-01")
///                     .workloadProfileType("ComputeOptimized")
///                     .build(),
///                 WorkloadProfileArgs.builder()
///                     .name("My-consumption-01")
///                     .workloadProfileType("Consumption")
///                     .build())
///             .zoneRedundant(true)
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
/// const managedEnvironment = new azure_native.app.ManagedEnvironment("managedEnvironment", {
///     appLogsConfiguration: {
///         logAnalyticsConfiguration: {
///             customerId: "string",
///             sharedKey: "string",
///         },
///     },
///     availabilityZones: [
///         "1",
///         "2",
///         "3",
///     ],
///     customDomainConfiguration: {
///         certificatePassword: "1234",
///         certificateValue: "Y2VydA==",
///         dnsSuffix: "www.my-name.com",
///     },
///     daprAIConnectionString: "InstrumentationKey=00000000-0000-0000-0000-000000000000;IngestionEndpoint=https://northcentralus-0.in.applicationinsights.azure.com/",
///     environmentName: "testcontainerenv",
///     infrastructureResourceGroup: "myInfrastructureRgName",
///     location: "East US",
///     resourceGroupName: "examplerg",
///     vnetConfiguration: {
///         infrastructureSubnetId: "/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/RGName/providers/Microsoft.Network/virtualNetworks/VNetName/subnets/subnetName1",
///     },
///     workloadProfiles: [
///         {
///             enableFips: true,
///             maximumCount: 12,
///             minimumCount: 3,
///             name: "My-GP-01",
///             workloadProfileType: "GeneralPurpose",
///         },
///         {
///             maximumCount: 6,
///             minimumCount: 3,
///             name: "My-MO-01",
///             workloadProfileType: "MemoryOptimized",
///         },
///         {
///             maximumCount: 6,
///             minimumCount: 3,
///             name: "My-CO-01",
///             workloadProfileType: "ComputeOptimized",
///         },
///         {
///             name: "My-consumption-01",
///             workloadProfileType: "Consumption",
///         },
///     ],
///     zoneRedundant: true,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// managed_environment = azure_native.app.ManagedEnvironment("managedEnvironment",
///     app_logs_configuration={
///         "log_analytics_configuration": {
///             "customer_id": "string",
///             "shared_key": "string",
///         },
///     },
///     availability_zones=[
///         "1",
///         "2",
///         "3",
///     ],
///     custom_domain_configuration={
///         "certificate_password": "1234",
///         "certificate_value": "Y2VydA==",
///         "dns_suffix": "www.my-name.com",
///     },
///     dapr_ai_connection_string="InstrumentationKey=00000000-0000-0000-0000-000000000000;IngestionEndpoint=https://northcentralus-0.in.applicationinsights.azure.com/",
///     environment_name="testcontainerenv",
///     infrastructure_resource_group="myInfrastructureRgName",
///     location="East US",
///     resource_group_name="examplerg",
///     vnet_configuration={
///         "infrastructure_subnet_id": "/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/RGName/providers/Microsoft.Network/virtualNetworks/VNetName/subnets/subnetName1",
///     },
///     workload_profiles=[
///         {
///             "enable_fips": True,
///             "maximum_count": 12,
///             "minimum_count": 3,
///             "name": "My-GP-01",
///             "workload_profile_type": "GeneralPurpose",
///         },
///         {
///             "maximum_count": 6,
///             "minimum_count": 3,
///             "name": "My-MO-01",
///             "workload_profile_type": "MemoryOptimized",
///         },
///         {
///             "maximum_count": 6,
///             "minimum_count": 3,
///             "name": "My-CO-01",
///             "workload_profile_type": "ComputeOptimized",
///         },
///         {
///             "name": "My-consumption-01",
///             "workload_profile_type": "Consumption",
///         },
///     ],
///     zone_redundant=True)
///
/// ```
///
/// ```yaml
/// resources:
///   managedEnvironment:
///     type: azure-native:app:ManagedEnvironment
///     properties:
///       appLogsConfiguration:
///         logAnalyticsConfiguration:
///           customerId: string
///           sharedKey: string
///       availabilityZones:
///         - '1'
///         - '2'
///         - '3'
///       customDomainConfiguration:
///         certificatePassword: '1234'
///         certificateValue: Y2VydA==
///         dnsSuffix: www.my-name.com
///       daprAIConnectionString: InstrumentationKey=00000000-0000-0000-0000-000000000000;IngestionEndpoint=https://northcentralus-0.in.applicationinsights.azure.com/
///       environmentName: testcontainerenv
///       infrastructureResourceGroup: myInfrastructureRgName
///       location: East US
///       resourceGroupName: examplerg
///       vnetConfiguration:
///         infrastructureSubnetId: /subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/RGName/providers/Microsoft.Network/virtualNetworks/VNetName/subnets/subnetName1
///       workloadProfiles:
///         - enableFips: true
///           maximumCount: 12
///           minimumCount: 3
///           name: My-GP-01
///           workloadProfileType: GeneralPurpose
///         - maximumCount: 6
///           minimumCount: 3
///           name: My-MO-01
///           workloadProfileType: MemoryOptimized
///         - maximumCount: 6
///           minimumCount: 3
///           name: My-CO-01
///           workloadProfileType: ComputeOptimized
///         - name: My-consumption-01
///           workloadProfileType: Consumption
///       zoneRedundant: true
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
/// $ pulumi import azure-native:app:ManagedEnvironment testcontainerenv /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.App/managedEnvironments/{environmentName}
/// ```
class ManagedEnvironment extends pulumi.CustomResource {
  /// Environment level Application Insights configuration
  late final pulumi.Output<AppInsightsConfigurationResponse?> appInsightsConfiguration;
  /// Cluster configuration which enables the log daemon to export app logs to configured destination
  late final pulumi.Output<AppLogsConfigurationResponse?> appLogsConfiguration;
  /// The list of availability zones to use for managed environment
  late final pulumi.Output<List<String>?> availabilityZones;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Custom domain configuration for the environment
  late final pulumi.Output<CustomDomainConfigurationResponse?> customDomainConfiguration;
  /// Application Insights connection string used by Dapr to export Service to Service communication telemetry
  late final pulumi.Output<String?> daprAIConnectionString;
  /// Azure Monitor instrumentation key used by Dapr to export Service to Service communication telemetry
  late final pulumi.Output<String?> daprAIInstrumentationKey;
  /// The configuration of Dapr component.
  late final pulumi.Output<DaprConfigurationResponse?> daprConfiguration;
  /// Default Domain Name for the cluster
  late final pulumi.Output<String> defaultDomain;
  /// Any errors that occurred during deployment or deployment validation
  late final pulumi.Output<String> deploymentErrors;
  /// Disk encryption configuration for the Managed Environment.
  late final pulumi.Output<DiskEncryptionConfigurationResponse?> diskEncryptionConfiguration;
  /// The endpoint of the eventstream of the Environment.
  late final pulumi.Output<String> eventStreamEndpoint;
  /// Managed identities for the Managed Environment to interact with other Azure services without maintaining any secrets or credentials in code.
  late final pulumi.Output<ManagedServiceIdentityResponse?> identity;
  /// Name of the platform-managed resource group created for the Managed Environment to host infrastructure resources. If a subnet ID is provided, this resource group will be created in the same subscription as the subnet.
  late final pulumi.Output<String?> infrastructureResourceGroup;
  /// Ingress configuration for the Managed Environment.
  late final pulumi.Output<IngressConfigurationResponse?> ingressConfiguration;
  /// The configuration of Keda component.
  late final pulumi.Output<KedaConfigurationResponse?> kedaConfiguration;
  /// Kind of the Environment.
  late final pulumi.Output<String?> kind;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Environment Open Telemetry configuration
  late final pulumi.Output<OpenTelemetryConfigurationResponse?> openTelemetryConfiguration;
  /// Peer authentication settings for the Managed Environment
  late final pulumi.Output<ManagedEnvironmentResponsePeerAuthentication?> peerAuthentication;
  /// Peer traffic settings for the Managed Environment
  late final pulumi.Output<ManagedEnvironmentResponsePeerTrafficConfiguration?> peerTrafficConfiguration;
  /// Private endpoint connections to the resource.
  late final pulumi.Output<List<Map<String, dynamic>>> privateEndpointConnections;
  /// Private Link Default Domain Name for the environment
  late final pulumi.Output<String> privateLinkDefaultDomain;
  /// Provisioning state of the Environment.
  late final pulumi.Output<String> provisioningState;
  /// Property to allow or block all public traffic. Allowed Values: 'Enabled', 'Disabled'.
  late final pulumi.Output<String?> publicNetworkAccess;
  /// Static IP of the Environment
  late final pulumi.Output<String> staticIp;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// Vnet configuration for the environment
  late final pulumi.Output<VnetConfigurationResponse?> vnetConfiguration;
  /// Workload profiles configured for the Managed Environment.
  late final pulumi.Output<List<Map<String, dynamic>>?> workloadProfiles;
  /// Whether or not this Managed Environment is zone-redundant.
  late final pulumi.Output<bool?> zoneRedundant;

  /// Creates a new [ManagedEnvironment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ManagedEnvironment]. {@macro pulumi_app_managed_environment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ManagedEnvironment(
    String name, {
    ManagedEnvironmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:app:ManagedEnvironment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    appInsightsConfiguration = registerOutput<AppInsightsConfigurationResponse?>('appInsightsConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AppInsightsConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    appLogsConfiguration = registerOutput<AppLogsConfigurationResponse?>('appLogsConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AppLogsConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    availabilityZones = registerOutput<List<String>?>('availabilityZones');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    customDomainConfiguration = registerOutput<CustomDomainConfigurationResponse?>('customDomainConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CustomDomainConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    daprAIConnectionString = registerOutput<String?>('daprAIConnectionString');
    daprAIInstrumentationKey = registerOutput<String?>('daprAIInstrumentationKey');
    daprConfiguration = registerOutput<DaprConfigurationResponse?>('daprConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DaprConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    defaultDomain = registerOutput<String>('defaultDomain');
    deploymentErrors = registerOutput<String>('deploymentErrors');
    diskEncryptionConfiguration = registerOutput<DiskEncryptionConfigurationResponse?>('diskEncryptionConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DiskEncryptionConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    eventStreamEndpoint = registerOutput<String>('eventStreamEndpoint');
    identity = registerOutput<ManagedServiceIdentityResponse?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedServiceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    infrastructureResourceGroup = registerOutput<String?>('infrastructureResourceGroup');
    ingressConfiguration = registerOutput<IngressConfigurationResponse?>('ingressConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IngressConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    kedaConfiguration = registerOutput<KedaConfigurationResponse?>('kedaConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return KedaConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    kind = registerOutput<String?>('kind');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    openTelemetryConfiguration = registerOutput<OpenTelemetryConfigurationResponse?>('openTelemetryConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return OpenTelemetryConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    peerAuthentication = registerOutput<ManagedEnvironmentResponsePeerAuthentication?>('peerAuthentication', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedEnvironmentResponsePeerAuthentication.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    peerTrafficConfiguration = registerOutput<ManagedEnvironmentResponsePeerTrafficConfiguration?>('peerTrafficConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedEnvironmentResponsePeerTrafficConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    privateEndpointConnections = registerOutput<List<Map<String, dynamic>>>('privateEndpointConnections');
    privateLinkDefaultDomain = registerOutput<String>('privateLinkDefaultDomain');
    provisioningState = registerOutput<String>('provisioningState');
    publicNetworkAccess = registerOutput<String?>('publicNetworkAccess');
    staticIp = registerOutput<String>('staticIp');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
    vnetConfiguration = registerOutput<VnetConfigurationResponse?>('vnetConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VnetConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    workloadProfiles = registerOutput<List<Map<String, dynamic>>?>('workloadProfiles');
    zoneRedundant = registerOutput<bool?>('zoneRedundant');
  }
}
