import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_controller_args.dart';
import 'data_controller_properties_response.dart';
import 'extended_location_response.dart';
import 'system_data_response.dart';

/// Data controller resource
///
/// Uses Azure REST API version 2025-03-01-preview. In version 2.x of the Azure Native provider, it used API version 2023-01-15-preview.
///
/// Other available API versions: 2023-01-15-preview, 2024-01-01, 2024-05-01-preview, 2026-01-01, 2026-03-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native azurearcdata [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update a Data Controller.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var dataController = new AzureNative.AzureArcData.DataController("dataController", new()
///     {
///         DataControllerName = "testdataController",
///         ExtendedLocation = new AzureNative.AzureArcData.Inputs.ExtendedLocationArgs
///         {
///             Name = "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.ExtendedLocation/customLocations/arclocation",
///             Type = AzureNative.AzureArcData.ExtendedLocationTypes.CustomLocation,
///         },
///         Location = "northeurope",
///         Properties = new AzureNative.AzureArcData.Inputs.DataControllerPropertiesArgs
///         {
///             BasicLoginInformation = new AzureNative.AzureArcData.Inputs.BasicLoginInformationArgs
///             {
///                 Password = "********",
///                 Username = "username",
///             },
///             ClusterId = "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.Kubernetes/connectedClusters/connectedk8s",
///             ExtensionId = "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.Kubernetes/connectedClusters/connectedk8s/providers/Microsoft.KubernetesConfiguration/extensions/extension",
///             Infrastructure = AzureNative.AzureArcData.Infrastructure.Onpremises,
///             LogAnalyticsWorkspaceConfig = new AzureNative.AzureArcData.Inputs.LogAnalyticsWorkspaceConfigArgs
///             {
///                 PrimaryKey = "********",
///                 WorkspaceId = "00000000-1111-2222-3333-444444444444",
///             },
///             LogsDashboardCredential = new AzureNative.AzureArcData.Inputs.BasicLoginInformationArgs
///             {
///                 Password = "********",
///                 Username = "username",
///             },
///             MetricsDashboardCredential = new AzureNative.AzureArcData.Inputs.BasicLoginInformationArgs
///             {
///                 Password = "********",
///                 Username = "username",
///             },
///             OnPremiseProperty = new AzureNative.AzureArcData.Inputs.OnPremisePropertyArgs
///             {
///                 Id = "12345678-1234-1234-ab12-1a2b3c4d5e6f",
///                 PublicSigningKey = "publicOnPremSigningKey",
///             },
///             UploadServicePrincipal = new AzureNative.AzureArcData.Inputs.UploadServicePrincipalArgs
///             {
///                 Authority = "https://login.microsoftonline.com/",
///                 ClientId = "00000000-1111-2222-3333-444444444444",
///                 ClientSecret = "********",
///                 TenantId = "00000000-1111-2222-3333-444444444444",
///             },
///             UploadWatermark = new AzureNative.AzureArcData.Inputs.UploadWatermarkArgs
///             {
///                 Logs = "2020-01-01T17:18:19.1234567Z",
///                 Metrics = "2020-01-01T17:18:19.1234567Z",
///                 Usages = "2020-01-01T17:18:19.1234567Z",
///             },
///         },
///         ResourceGroupName = "testrg",
///         Tags =
///         {
///             { "mytag", "myval" },
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
/// 	azurearcdata "github.com/pulumi/pulumi-azure-native-sdk/azurearcdata/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := azurearcdata.NewDataController(ctx, "dataController", &azurearcdata.DataControllerArgs{
/// 			DataControllerName: pulumi.String("testdataController"),
/// 			ExtendedLocation: &azurearcdata.ExtendedLocationArgs{
/// 				Name: pulumi.String("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.ExtendedLocation/customLocations/arclocation"),
/// 				Type: pulumi.String(azurearcdata.ExtendedLocationTypesCustomLocation),
/// 			},
/// 			Location: pulumi.String("northeurope"),
/// 			Properties: &azurearcdata.DataControllerPropertiesArgs{
/// 				BasicLoginInformation: &azurearcdata.BasicLoginInformationArgs{
/// 					Password: pulumi.String("********"),
/// 					Username: pulumi.String("username"),
/// 				},
/// 				ClusterId:      pulumi.String("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.Kubernetes/connectedClusters/connectedk8s"),
/// 				ExtensionId:    pulumi.String("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.Kubernetes/connectedClusters/connectedk8s/providers/Microsoft.KubernetesConfiguration/extensions/extension"),
/// 				Infrastructure: azurearcdata.InfrastructureOnpremises,
/// 				LogAnalyticsWorkspaceConfig: &azurearcdata.LogAnalyticsWorkspaceConfigArgs{
/// 					PrimaryKey:  pulumi.String("********"),
/// 					WorkspaceId: pulumi.String("00000000-1111-2222-3333-444444444444"),
/// 				},
/// 				LogsDashboardCredential: &azurearcdata.BasicLoginInformationArgs{
/// 					Password: pulumi.String("********"),
/// 					Username: pulumi.String("username"),
/// 				},
/// 				MetricsDashboardCredential: &azurearcdata.BasicLoginInformationArgs{
/// 					Password: pulumi.String("********"),
/// 					Username: pulumi.String("username"),
/// 				},
/// 				OnPremiseProperty: &azurearcdata.OnPremisePropertyArgs{
/// 					Id:               pulumi.String("12345678-1234-1234-ab12-1a2b3c4d5e6f"),
/// 					PublicSigningKey: pulumi.String("publicOnPremSigningKey"),
/// 				},
/// 				UploadServicePrincipal: &azurearcdata.UploadServicePrincipalArgs{
/// 					Authority:    pulumi.String("https://login.microsoftonline.com/"),
/// 					ClientId:     pulumi.String("00000000-1111-2222-3333-444444444444"),
/// 					ClientSecret: pulumi.String("********"),
/// 					TenantId:     pulumi.String("00000000-1111-2222-3333-444444444444"),
/// 				},
/// 				UploadWatermark: &azurearcdata.UploadWatermarkArgs{
/// 					Logs:    pulumi.String("2020-01-01T17:18:19.1234567Z"),
/// 					Metrics: pulumi.String("2020-01-01T17:18:19.1234567Z"),
/// 					Usages:  pulumi.String("2020-01-01T17:18:19.1234567Z"),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("testrg"),
/// 			Tags: pulumi.StringMap{
/// 				"mytag": pulumi.String("myval"),
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
/// resource "azure-native_azurearcdata_datacontroller" "dataController" {
///   data_controller_name = "testdataController"
///   extended_location = {
///     name = "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.ExtendedLocation/customLocations/arclocation"
///     type = "CustomLocation"
///   }
///   location = "northeurope"
///   properties = {
///     basic_login_information = {
///       password = "********"
///       username = "username"
///     }
///     cluster_id     = "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.Kubernetes/connectedClusters/connectedk8s"
///     extension_id   = "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.Kubernetes/connectedClusters/connectedk8s/providers/Microsoft.KubernetesConfiguration/extensions/extension"
///     infrastructure = "onpremises"
///     log_analytics_workspace_config = {
///       primary_key  = "********"
///       workspace_id = "00000000-1111-2222-3333-444444444444"
///     }
///     logs_dashboard_credential = {
///       password = "********"
///       username = "username"
///     }
///     metrics_dashboard_credential = {
///       password = "********"
///       username = "username"
///     }
///     on_premise_property = {
///       id                 = "12345678-1234-1234-ab12-1a2b3c4d5e6f"
///       public_signing_key = "publicOnPremSigningKey"
///     }
///     upload_service_principal = {
///       authority     = "https://login.microsoftonline.com/"
///       client_id     = "00000000-1111-2222-3333-444444444444"
///       client_secret = "********"
///       tenant_id     = "00000000-1111-2222-3333-444444444444"
///     }
///     upload_watermark = {
///       logs    = "2020-01-01T17:18:19.1234567Z"
///       metrics = "2020-01-01T17:18:19.1234567Z"
///       usages  = "2020-01-01T17:18:19.1234567Z"
///     }
///   }
///   resource_group_name = "testrg"
///   tags = {
///     "mytag" = "myval"
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
/// import com.pulumi.azurenative.azurearcdata.DataController;
/// import com.pulumi.azurenative.azurearcdata.DataControllerArgs;
/// import com.pulumi.azurenative.azurearcdata.inputs.ExtendedLocationArgs;
/// import com.pulumi.azurenative.azurearcdata.inputs.DataControllerPropertiesArgs;
/// import com.pulumi.azurenative.azurearcdata.inputs.BasicLoginInformationArgs;
/// import com.pulumi.azurenative.azurearcdata.inputs.LogAnalyticsWorkspaceConfigArgs;
/// import com.pulumi.azurenative.azurearcdata.inputs.OnPremisePropertyArgs;
/// import com.pulumi.azurenative.azurearcdata.inputs.UploadServicePrincipalArgs;
/// import com.pulumi.azurenative.azurearcdata.inputs.UploadWatermarkArgs;
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
///         var dataController = new DataController("dataController", DataControllerArgs.builder()
///             .dataControllerName("testdataController")
///             .extendedLocation(ExtendedLocationArgs.builder()
///                 .name("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.ExtendedLocation/customLocations/arclocation")
///                 .type("CustomLocation")
///                 .build())
///             .location("northeurope")
///             .properties(DataControllerPropertiesArgs.builder()
///                 .basicLoginInformation(BasicLoginInformationArgs.builder()
///                     .password("********")
///                     .username("username")
///                     .build())
///                 .clusterId("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.Kubernetes/connectedClusters/connectedk8s")
///                 .extensionId("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.Kubernetes/connectedClusters/connectedk8s/providers/Microsoft.KubernetesConfiguration/extensions/extension")
///                 .infrastructure("onpremises")
///                 .logAnalyticsWorkspaceConfig(LogAnalyticsWorkspaceConfigArgs.builder()
///                     .primaryKey("********")
///                     .workspaceId("00000000-1111-2222-3333-444444444444")
///                     .build())
///                 .logsDashboardCredential(BasicLoginInformationArgs.builder()
///                     .password("********")
///                     .username("username")
///                     .build())
///                 .metricsDashboardCredential(BasicLoginInformationArgs.builder()
///                     .password("********")
///                     .username("username")
///                     .build())
///                 .onPremiseProperty(OnPremisePropertyArgs.builder()
///                     .id("12345678-1234-1234-ab12-1a2b3c4d5e6f")
///                     .publicSigningKey("publicOnPremSigningKey")
///                     .build())
///                 .uploadServicePrincipal(UploadServicePrincipalArgs.builder()
///                     .authority("https://login.microsoftonline.com/")
///                     .clientId("00000000-1111-2222-3333-444444444444")
///                     .clientSecret("********")
///                     .tenantId("00000000-1111-2222-3333-444444444444")
///                     .build())
///                 .uploadWatermark(UploadWatermarkArgs.builder()
///                     .logs("2020-01-01T17:18:19.1234567Z")
///                     .metrics("2020-01-01T17:18:19.1234567Z")
///                     .usages("2020-01-01T17:18:19.1234567Z")
///                     .build())
///                 .build())
///             .resourceGroupName("testrg")
///             .tags(Map.of("mytag", "myval"))
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
/// const dataController = new azure_native.azurearcdata.DataController("dataController", {
///     dataControllerName: "testdataController",
///     extendedLocation: {
///         name: "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.ExtendedLocation/customLocations/arclocation",
///         type: azure_native.azurearcdata.ExtendedLocationTypes.CustomLocation,
///     },
///     location: "northeurope",
///     properties: {
///         basicLoginInformation: {
///             password: "********",
///             username: "username",
///         },
///         clusterId: "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.Kubernetes/connectedClusters/connectedk8s",
///         extensionId: "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.Kubernetes/connectedClusters/connectedk8s/providers/Microsoft.KubernetesConfiguration/extensions/extension",
///         infrastructure: azure_native.azurearcdata.Infrastructure.Onpremises,
///         logAnalyticsWorkspaceConfig: {
///             primaryKey: "********",
///             workspaceId: "00000000-1111-2222-3333-444444444444",
///         },
///         logsDashboardCredential: {
///             password: "********",
///             username: "username",
///         },
///         metricsDashboardCredential: {
///             password: "********",
///             username: "username",
///         },
///         onPremiseProperty: {
///             id: "12345678-1234-1234-ab12-1a2b3c4d5e6f",
///             publicSigningKey: "publicOnPremSigningKey",
///         },
///         uploadServicePrincipal: {
///             authority: "https://login.microsoftonline.com/",
///             clientId: "00000000-1111-2222-3333-444444444444",
///             clientSecret: "********",
///             tenantId: "00000000-1111-2222-3333-444444444444",
///         },
///         uploadWatermark: {
///             logs: "2020-01-01T17:18:19.1234567Z",
///             metrics: "2020-01-01T17:18:19.1234567Z",
///             usages: "2020-01-01T17:18:19.1234567Z",
///         },
///     },
///     resourceGroupName: "testrg",
///     tags: {
///         mytag: "myval",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// data_controller = azure_native.azurearcdata.DataController("dataController",
///     data_controller_name="testdataController",
///     extended_location={
///         "name": "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.ExtendedLocation/customLocations/arclocation",
///         "type": azure_native.azurearcdata.ExtendedLocationTypes.CUSTOM_LOCATION,
///     },
///     location="northeurope",
///     properties={
///         "basic_login_information": {
///             "password": "********",
///             "username": "username",
///         },
///         "cluster_id": "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.Kubernetes/connectedClusters/connectedk8s",
///         "extension_id": "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.Kubernetes/connectedClusters/connectedk8s/providers/Microsoft.KubernetesConfiguration/extensions/extension",
///         "infrastructure": azure_native.azurearcdata.Infrastructure.ONPREMISES,
///         "log_analytics_workspace_config": {
///             "primary_key": "********",
///             "workspace_id": "00000000-1111-2222-3333-444444444444",
///         },
///         "logs_dashboard_credential": {
///             "password": "********",
///             "username": "username",
///         },
///         "metrics_dashboard_credential": {
///             "password": "********",
///             "username": "username",
///         },
///         "on_premise_property": {
///             "id": "12345678-1234-1234-ab12-1a2b3c4d5e6f",
///             "public_signing_key": "publicOnPremSigningKey",
///         },
///         "upload_service_principal": {
///             "authority": "https://login.microsoftonline.com/",
///             "client_id": "00000000-1111-2222-3333-444444444444",
///             "client_secret": "********",
///             "tenant_id": "00000000-1111-2222-3333-444444444444",
///         },
///         "upload_watermark": {
///             "logs": "2020-01-01T17:18:19.1234567Z",
///             "metrics": "2020-01-01T17:18:19.1234567Z",
///             "usages": "2020-01-01T17:18:19.1234567Z",
///         },
///     },
///     resource_group_name="testrg",
///     tags={
///         "mytag": "myval",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   dataController:
///     type: azure-native:azurearcdata:DataController
///     properties:
///       dataControllerName: testdataController
///       extendedLocation:
///         name: /subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.ExtendedLocation/customLocations/arclocation
///         type: CustomLocation
///       location: northeurope
///       properties:
///         basicLoginInformation:
///           password: '********'
///           username: username
///         clusterId: /subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.Kubernetes/connectedClusters/connectedk8s
///         extensionId: /subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.Kubernetes/connectedClusters/connectedk8s/providers/Microsoft.KubernetesConfiguration/extensions/extension
///         infrastructure: onpremises
///         logAnalyticsWorkspaceConfig:
///           primaryKey: '********'
///           workspaceId: 00000000-1111-2222-3333-444444444444
///         logsDashboardCredential:
///           password: '********'
///           username: username
///         metricsDashboardCredential:
///           password: '********'
///           username: username
///         onPremiseProperty:
///           id: 12345678-1234-1234-ab12-1a2b3c4d5e6f
///           publicSigningKey: publicOnPremSigningKey
///         uploadServicePrincipal:
///           authority: https://login.microsoftonline.com/
///           clientId: 00000000-1111-2222-3333-444444444444
///           clientSecret: '********'
///           tenantId: 00000000-1111-2222-3333-444444444444
///         uploadWatermark:
///           logs: 2020-01-01T17:18:19.1234567Z
///           metrics: 2020-01-01T17:18:19.1234567Z
///           usages: 2020-01-01T17:18:19.1234567Z
///       resourceGroupName: testrg
///       tags:
///         mytag: myval
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
/// $ pulumi import azure-native:azurearcdata:DataController testdataController /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AzureArcData/dataControllers/{dataControllerName}
/// ```
class DataController extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The extendedLocation of the resource.
  late final pulumi.Output<ExtendedLocationResponse?> extendedLocation;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The data controller's properties
  late final pulumi.Output<DataControllerPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [DataController].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DataController]. {@macro pulumi_azurearcdata_data_controller_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DataController(
    String name, {
    DataControllerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:azurearcdata:DataController',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    extendedLocation = registerOutput<ExtendedLocationResponse?>('extendedLocation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<DataControllerPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DataControllerPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [DataController] resource.
  DataController.reference(String urn)
    : super(
        'azure-native:azurearcdata:DataController',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    extendedLocation = registerOutput<ExtendedLocationResponse?>('extendedLocation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<DataControllerPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DataControllerPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }
}
