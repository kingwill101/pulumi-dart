import 'package:pulumi/pulumi.dart' as pulumi;
import 'akri_connector_template_args.dart';
import 'akri_connector_template_properties_response.dart';
import 'extended_location_response.dart';
import 'system_data_response.dart';

/// AkriConnectorTemplate resource.
///
/// Uses Azure REST API version 2025-07-01-preview.
///
/// Other available API versions: 2025-10-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native iotoperations [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### AkriConnectorTemplate_CreateOrUpdate_MaximumSet
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var akriConnectorTemplate = new AzureNative.IoTOperations.AkriConnectorTemplate("akriConnectorTemplate", new()
///     {
///         AkriConnectorTemplateName = "resource-name123",
///         ExtendedLocation = new AzureNative.IoTOperations.Inputs.ExtendedLocationArgs
///         {
///             Name = "/subscriptions/F8C729F9-DF9C-4743-848F-96EE433D8E53/resourceGroups/rgiotoperations/providers/Microsoft.ExtendedLocation/customLocations/resource-123",
///             Type = AzureNative.IoTOperations.ExtendedLocationType.CustomLocation,
///         },
///         InstanceName = "resource-name123",
///         Properties = new AzureNative.IoTOperations.Inputs.AkriConnectorTemplatePropertiesArgs
///         {
///             AioMetadata = new AzureNative.IoTOperations.Inputs.AkriConnectorTemplateAioMetadataArgs
///             {
///                 AioMaxVersion = "1.4.0",
///                 AioMinVersion = "1.2.0",
///             },
///             DeviceInboundEndpointTypes = new[]
///             {
///                 new AzureNative.IoTOperations.Inputs.AkriConnectorTemplateDeviceInboundEndpointTypeArgs
///                 {
///                     EndpointType = "Microsoft.Rest",
///                     Version = "0.0.1",
///                 },
///             },
///             Diagnostics = new AzureNative.IoTOperations.Inputs.AkriConnectorTemplateDiagnosticsArgs
///             {
///                 Logs = new AzureNative.IoTOperations.Inputs.AkriConnectorsDiagnosticsLogsArgs
///                 {
///                     Level = "info",
///                 },
///             },
///             MqttConnectionConfiguration = new AzureNative.IoTOperations.Inputs.AkriConnectorsMqttConnectionConfigurationArgs
///             {
///                 Authentication = new AzureNative.IoTOperations.Inputs.AkriConnectorsServiceAccountAuthenticationArgs
///                 {
///                     Method = "ServiceAccountToken",
///                     ServiceAccountTokenSettings = new AzureNative.IoTOperations.Inputs.AkriConnectorsServiceAccountTokenSettingsArgs
///                     {
///                         Audience = "MQ-SAT",
///                     },
///                 },
///                 Host = "aio-broker:18883",
///                 KeepAliveSeconds = 10,
///                 MaxInflightMessages = 10,
///                 Protocol = AzureNative.IoTOperations.AkriConnectorsMqttProtocolType.Mqtt,
///                 SessionExpirySeconds = 60,
///                 Tls = new AzureNative.IoTOperations.Inputs.TlsPropertiesArgs
///                 {
///                     Mode = AzureNative.IoTOperations.OperationalMode.Enabled,
///                     TrustedCaCertificateConfigMapRef = "azure-iot-operations-aio-ca-trust-bundle",
///                 },
///             },
///             RuntimeConfiguration = new AzureNative.IoTOperations.Inputs.AkriConnectorTemplateHelmConfigurationArgs
///             {
///                 HelmConfigurationSettings = new AzureNative.IoTOperations.Inputs.AkriConnectorTemplateHelmConfigurationSettingsArgs
///                 {
///                     ReleaseName = "my-install",
///                     RepositoryName = "my-repo",
///                     Version = "1.0.0",
///                 },
///                 RuntimeConfigurationType = "HelmConfiguration",
///             },
///         },
///         ResourceGroupName = "rgiotoperations",
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
/// 	iotoperations "github.com/pulumi/pulumi-azure-native-sdk/iotoperations/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iotoperations.NewAkriConnectorTemplate(ctx, "akriConnectorTemplate", &iotoperations.AkriConnectorTemplateArgs{
/// 			AkriConnectorTemplateName: pulumi.String("resource-name123"),
/// 			ExtendedLocation: &iotoperations.ExtendedLocationArgs{
/// 				Name: pulumi.String("/subscriptions/F8C729F9-DF9C-4743-848F-96EE433D8E53/resourceGroups/rgiotoperations/providers/Microsoft.ExtendedLocation/customLocations/resource-123"),
/// 				Type: pulumi.String(iotoperations.ExtendedLocationTypeCustomLocation),
/// 			},
/// 			InstanceName: pulumi.String("resource-name123"),
/// 			Properties: &iotoperations.AkriConnectorTemplatePropertiesArgs{
/// 				AioMetadata: &iotoperations.AkriConnectorTemplateAioMetadataArgs{
/// 					AioMaxVersion: pulumi.String("1.4.0"),
/// 					AioMinVersion: pulumi.String("1.2.0"),
/// 				},
/// 				DeviceInboundEndpointTypes: iotoperations.AkriConnectorTemplateDeviceInboundEndpointTypeArray{
/// 					&iotoperations.AkriConnectorTemplateDeviceInboundEndpointTypeArgs{
/// 						EndpointType: pulumi.String("Microsoft.Rest"),
/// 						Version:      pulumi.String("0.0.1"),
/// 					},
/// 				},
/// 				Diagnostics: &iotoperations.AkriConnectorTemplateDiagnosticsArgs{
/// 					Logs: &iotoperations.AkriConnectorsDiagnosticsLogsArgs{
/// 						Level: pulumi.String("info"),
/// 					},
/// 				},
/// 				MqttConnectionConfiguration: &iotoperations.AkriConnectorsMqttConnectionConfigurationArgs{
/// 					Authentication: &iotoperations.AkriConnectorsServiceAccountAuthenticationArgs{
/// 						Method: pulumi.String("ServiceAccountToken"),
/// 						ServiceAccountTokenSettings: &iotoperations.AkriConnectorsServiceAccountTokenSettingsArgs{
/// 							Audience: pulumi.String("MQ-SAT"),
/// 						},
/// 					},
/// 					Host:                 pulumi.String("aio-broker:18883"),
/// 					KeepAliveSeconds:     pulumi.Int(10),
/// 					MaxInflightMessages:  pulumi.Int(10),
/// 					Protocol:             pulumi.String(iotoperations.AkriConnectorsMqttProtocolTypeMqtt),
/// 					SessionExpirySeconds: pulumi.Int(60),
/// 					Tls: &iotoperations.TlsPropertiesArgs{
/// 						Mode:                             pulumi.String(iotoperations.OperationalModeEnabled),
/// 						TrustedCaCertificateConfigMapRef: pulumi.String("azure-iot-operations-aio-ca-trust-bundle"),
/// 					},
/// 				},
/// 				RuntimeConfiguration: iotoperations.AkriConnectorTemplateHelmConfiguration{
/// 					HelmConfigurationSettings: iotoperations.AkriConnectorTemplateHelmConfigurationSettings{
/// 						ReleaseName:    "my-install",
/// 						RepositoryName: "my-repo",
/// 						Version:        "1.0.0",
/// 					},
/// 					RuntimeConfigurationType: "HelmConfiguration",
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("rgiotoperations"),
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
/// import com.pulumi.azurenative.iotoperations.AkriConnectorTemplate;
/// import com.pulumi.azurenative.iotoperations.AkriConnectorTemplateArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.ExtendedLocationArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.AkriConnectorTemplatePropertiesArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.AkriConnectorTemplateAioMetadataArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.AkriConnectorTemplateDiagnosticsArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.AkriConnectorsDiagnosticsLogsArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.AkriConnectorsMqttConnectionConfigurationArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.AkriConnectorsServiceAccountAuthenticationArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.AkriConnectorsServiceAccountTokenSettingsArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.TlsPropertiesArgs;
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
///         var akriConnectorTemplate = new AkriConnectorTemplate("akriConnectorTemplate", AkriConnectorTemplateArgs.builder()
///             .akriConnectorTemplateName("resource-name123")
///             .extendedLocation(ExtendedLocationArgs.builder()
///                 .name("/subscriptions/F8C729F9-DF9C-4743-848F-96EE433D8E53/resourceGroups/rgiotoperations/providers/Microsoft.ExtendedLocation/customLocations/resource-123")
///                 .type("CustomLocation")
///                 .build())
///             .instanceName("resource-name123")
///             .properties(AkriConnectorTemplatePropertiesArgs.builder()
///                 .aioMetadata(AkriConnectorTemplateAioMetadataArgs.builder()
///                     .aioMaxVersion("1.4.0")
///                     .aioMinVersion("1.2.0")
///                     .build())
///                 .deviceInboundEndpointTypes(AkriConnectorTemplateDeviceInboundEndpointTypeArgs.builder()
///                     .endpointType("Microsoft.Rest")
///                     .version("0.0.1")
///                     .build())
///                 .diagnostics(AkriConnectorTemplateDiagnosticsArgs.builder()
///                     .logs(AkriConnectorsDiagnosticsLogsArgs.builder()
///                         .level("info")
///                         .build())
///                     .build())
///                 .mqttConnectionConfiguration(AkriConnectorsMqttConnectionConfigurationArgs.builder()
///                     .authentication(Map.ofEntries(
///                         Map.entry("method", "ServiceAccountToken"),
///                         Map.entry("serviceAccountTokenSettings", AkriConnectorsServiceAccountTokenSettingsArgs.builder()
///                             .audience("MQ-SAT")
///                             .build())
///                     ))
///                     .host("aio-broker:18883")
///                     .keepAliveSeconds(10)
///                     .maxInflightMessages(10)
///                     .protocol("Mqtt")
///                     .sessionExpirySeconds(60)
///                     .tls(TlsPropertiesArgs.builder()
///                         .mode("Enabled")
///                         .trustedCaCertificateConfigMapRef("azure-iot-operations-aio-ca-trust-bundle")
///                         .build())
///                     .build())
///                 .runtimeConfiguration(AkriConnectorTemplateHelmConfigurationArgs.builder()
///                     .helmConfigurationSettings(AkriConnectorTemplateHelmConfigurationSettingsArgs.builder()
///                         .releaseName("my-install")
///                         .repositoryName("my-repo")
///                         .version("1.0.0")
///                         .build())
///                     .runtimeConfigurationType("HelmConfiguration")
///                     .build())
///                 .build())
///             .resourceGroupName("rgiotoperations")
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
/// const akriConnectorTemplate = new azure_native.iotoperations.AkriConnectorTemplate("akriConnectorTemplate", {
///     akriConnectorTemplateName: "resource-name123",
///     extendedLocation: {
///         name: "/subscriptions/F8C729F9-DF9C-4743-848F-96EE433D8E53/resourceGroups/rgiotoperations/providers/Microsoft.ExtendedLocation/customLocations/resource-123",
///         type: azure_native.iotoperations.ExtendedLocationType.CustomLocation,
///     },
///     instanceName: "resource-name123",
///     properties: {
///         aioMetadata: {
///             aioMaxVersion: "1.4.0",
///             aioMinVersion: "1.2.0",
///         },
///         deviceInboundEndpointTypes: [{
///             endpointType: "Microsoft.Rest",
///             version: "0.0.1",
///         }],
///         diagnostics: {
///             logs: {
///                 level: "info",
///             },
///         },
///         mqttConnectionConfiguration: {
///             authentication: {
///                 method: "ServiceAccountToken",
///                 serviceAccountTokenSettings: {
///                     audience: "MQ-SAT",
///                 },
///             },
///             host: "aio-broker:18883",
///             keepAliveSeconds: 10,
///             maxInflightMessages: 10,
///             protocol: azure_native.iotoperations.AkriConnectorsMqttProtocolType.Mqtt,
///             sessionExpirySeconds: 60,
///             tls: {
///                 mode: azure_native.iotoperations.OperationalMode.Enabled,
///                 trustedCaCertificateConfigMapRef: "azure-iot-operations-aio-ca-trust-bundle",
///             },
///         },
///         runtimeConfiguration: {
///             helmConfigurationSettings: {
///                 releaseName: "my-install",
///                 repositoryName: "my-repo",
///                 version: "1.0.0",
///             },
///             runtimeConfigurationType: "HelmConfiguration",
///         },
///     },
///     resourceGroupName: "rgiotoperations",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// akri_connector_template = azure_native.iotoperations.AkriConnectorTemplate("akriConnectorTemplate",
///     akri_connector_template_name="resource-name123",
///     extended_location={
///         "name": "/subscriptions/F8C729F9-DF9C-4743-848F-96EE433D8E53/resourceGroups/rgiotoperations/providers/Microsoft.ExtendedLocation/customLocations/resource-123",
///         "type": azure_native.iotoperations.ExtendedLocationType.CUSTOM_LOCATION,
///     },
///     instance_name="resource-name123",
///     properties={
///         "aio_metadata": {
///             "aio_max_version": "1.4.0",
///             "aio_min_version": "1.2.0",
///         },
///         "device_inbound_endpoint_types": [{
///             "endpoint_type": "Microsoft.Rest",
///             "version": "0.0.1",
///         }],
///         "diagnostics": {
///             "logs": {
///                 "level": "info",
///             },
///         },
///         "mqtt_connection_configuration": {
///             "authentication": {
///                 "method": "ServiceAccountToken",
///                 "service_account_token_settings": {
///                     "audience": "MQ-SAT",
///                 },
///             },
///             "host": "aio-broker:18883",
///             "keep_alive_seconds": 10,
///             "max_inflight_messages": 10,
///             "protocol": azure_native.iotoperations.AkriConnectorsMqttProtocolType.MQTT,
///             "session_expiry_seconds": 60,
///             "tls": {
///                 "mode": azure_native.iotoperations.OperationalMode.ENABLED,
///                 "trusted_ca_certificate_config_map_ref": "azure-iot-operations-aio-ca-trust-bundle",
///             },
///         },
///         "runtime_configuration": {
///             "helm_configuration_settings": {
///                 "release_name": "my-install",
///                 "repository_name": "my-repo",
///                 "version": "1.0.0",
///             },
///             "runtime_configuration_type": "HelmConfiguration",
///         },
///     },
///     resource_group_name="rgiotoperations")
///
/// ```
///
/// ```yaml
/// resources:
///   akriConnectorTemplate:
///     type: azure-native:iotoperations:AkriConnectorTemplate
///     properties:
///       akriConnectorTemplateName: resource-name123
///       extendedLocation:
///         name: /subscriptions/F8C729F9-DF9C-4743-848F-96EE433D8E53/resourceGroups/rgiotoperations/providers/Microsoft.ExtendedLocation/customLocations/resource-123
///         type: CustomLocation
///       instanceName: resource-name123
///       properties:
///         aioMetadata:
///           aioMaxVersion: 1.4.0
///           aioMinVersion: 1.2.0
///         deviceInboundEndpointTypes:
///           - endpointType: Microsoft.Rest
///             version: 0.0.1
///         diagnostics:
///           logs:
///             level: info
///         mqttConnectionConfiguration:
///           authentication:
///             method: ServiceAccountToken
///             serviceAccountTokenSettings:
///               audience: MQ-SAT
///           host: aio-broker:18883
///           keepAliveSeconds: 10
///           maxInflightMessages: 10
///           protocol: Mqtt
///           sessionExpirySeconds: 60
///           tls:
///             mode: Enabled
///             trustedCaCertificateConfigMapRef: azure-iot-operations-aio-ca-trust-bundle
///         runtimeConfiguration:
///           helmConfigurationSettings:
///             releaseName: my-install
///             repositoryName: my-repo
///             version: 1.0.0
///           runtimeConfigurationType: HelmConfiguration
///       resourceGroupName: rgiotoperations
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
/// $ pulumi import azure-native:iotoperations:AkriConnectorTemplate bfimycofjtzxduufwanuxwoudsh /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.IoTOperations/instances/{instanceName}/akriConnectorTemplates/{akriConnectorTemplateName}
/// ```
class AkriConnectorTemplate extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Edge location of the resource.
  late final pulumi.Output<ExtendedLocationResponse?> extendedLocation;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<AkriConnectorTemplatePropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [AkriConnectorTemplate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AkriConnectorTemplate]. {@macro pulumi_iotoperations_akri_connector_template_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AkriConnectorTemplate(
    String name, {
    AkriConnectorTemplateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:iotoperations:AkriConnectorTemplate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    extendedLocation = registerOutput<ExtendedLocationResponse?>('extendedLocation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    properties = registerOutput<AkriConnectorTemplatePropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AkriConnectorTemplatePropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
