import 'package:pulumi/pulumi.dart' as pulumi;
import 'identity_properties_response.dart';
import 'monitor_args.dart';
import 'monitor_properties_response.dart';
import 'resource_sku_response.dart';
import 'system_data_response.dart';

/// Uses Azure REST API version 2023-10-20. In version 2.x of the Azure Native provider, it used API version 2022-06-01.
///
/// Other available API versions: 2022-06-01, 2022-08-01, 2023-01-01, 2023-07-07, 2024-03-01, 2025-01-07, 2025-06-11, 2025-11-03-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native datadog [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Monitors_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var monitor = new AzureNative.Datadog.Monitor("monitor", new()
///     {
///         Location = "West US",
///         MonitorName = "myMonitor",
///         Properties = new AzureNative.Datadog.Inputs.MonitorPropertiesArgs
///         {
///             DatadogOrganizationProperties = new AzureNative.Datadog.Inputs.DatadogOrganizationPropertiesArgs
///             {
///                 Cspm = false,
///                 EnterpriseAppId = "00000000-0000-0000-0000-000000000000",
///                 Id = "myOrg123",
///                 LinkingAuthCode = "someAuthCode",
///                 LinkingClientId = "00000000-0000-0000-0000-000000000000",
///                 Name = "myOrg",
///             },
///             MonitoringStatus = AzureNative.Datadog.MonitoringStatus.Enabled,
///             UserInfo = new AzureNative.Datadog.Inputs.UserInfoArgs
///             {
///                 EmailAddress = "alice@microsoft.com",
///                 Name = "Alice",
///                 PhoneNumber = "123-456-7890",
///             },
///         },
///         ResourceGroupName = "myResourceGroup",
///         Sku = new AzureNative.Datadog.Inputs.ResourceSkuArgs
///         {
///             Name = "free_Monthly",
///         },
///         Tags =
///         {
///             { "Environment", "Dev" },
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
/// 	datadog "github.com/pulumi/pulumi-azure-native-sdk/datadog/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := datadog.NewMonitor(ctx, "monitor", &datadog.MonitorArgs{
/// 			Location:    pulumi.String("West US"),
/// 			MonitorName: pulumi.String("myMonitor"),
/// 			Properties: &datadog.MonitorPropertiesArgs{
/// 				DatadogOrganizationProperties: &datadog.DatadogOrganizationPropertiesArgs{
/// 					Cspm:            pulumi.Bool(false),
/// 					EnterpriseAppId: pulumi.String("00000000-0000-0000-0000-000000000000"),
/// 					Id:              pulumi.String("myOrg123"),
/// 					LinkingAuthCode: pulumi.String("someAuthCode"),
/// 					LinkingClientId: pulumi.String("00000000-0000-0000-0000-000000000000"),
/// 					Name:            pulumi.String("myOrg"),
/// 				},
/// 				MonitoringStatus: pulumi.String(datadog.MonitoringStatusEnabled),
/// 				UserInfo: &datadog.UserInfoArgs{
/// 					EmailAddress: pulumi.String("alice@microsoft.com"),
/// 					Name:         pulumi.String("Alice"),
/// 					PhoneNumber:  pulumi.String("123-456-7890"),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			Sku: &datadog.ResourceSkuArgs{
/// 				Name: pulumi.String("free_Monthly"),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Environment": pulumi.String("Dev"),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.datadog.Monitor;
/// import com.pulumi.azurenative.datadog.MonitorArgs;
/// import com.pulumi.azurenative.datadog.inputs.MonitorPropertiesArgs;
/// import com.pulumi.azurenative.datadog.inputs.DatadogOrganizationPropertiesArgs;
/// import com.pulumi.azurenative.datadog.inputs.UserInfoArgs;
/// import com.pulumi.azurenative.datadog.inputs.ResourceSkuArgs;
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
///         var monitor = new Monitor("monitor", MonitorArgs.builder()
///             .location("West US")
///             .monitorName("myMonitor")
///             .properties(MonitorPropertiesArgs.builder()
///                 .datadogOrganizationProperties(DatadogOrganizationPropertiesArgs.builder()
///                     .cspm(false)
///                     .enterpriseAppId("00000000-0000-0000-0000-000000000000")
///                     .id("myOrg123")
///                     .linkingAuthCode("someAuthCode")
///                     .linkingClientId("00000000-0000-0000-0000-000000000000")
///                     .name("myOrg")
///                     .build())
///                 .monitoringStatus("Enabled")
///                 .userInfo(UserInfoArgs.builder()
///                     .emailAddress("alice@microsoft.com")
///                     .name("Alice")
///                     .phoneNumber("123-456-7890")
///                     .build())
///                 .build())
///             .resourceGroupName("myResourceGroup")
///             .sku(ResourceSkuArgs.builder()
///                 .name("free_Monthly")
///                 .build())
///             .tags(Map.of("Environment", "Dev"))
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
/// const monitor = new azure_native.datadog.Monitor("monitor", {
///     location: "West US",
///     monitorName: "myMonitor",
///     properties: {
///         datadogOrganizationProperties: {
///             cspm: false,
///             enterpriseAppId: "00000000-0000-0000-0000-000000000000",
///             id: "myOrg123",
///             linkingAuthCode: "someAuthCode",
///             linkingClientId: "00000000-0000-0000-0000-000000000000",
///             name: "myOrg",
///         },
///         monitoringStatus: azure_native.datadog.MonitoringStatus.Enabled,
///         userInfo: {
///             emailAddress: "alice@microsoft.com",
///             name: "Alice",
///             phoneNumber: "123-456-7890",
///         },
///     },
///     resourceGroupName: "myResourceGroup",
///     sku: {
///         name: "free_Monthly",
///     },
///     tags: {
///         Environment: "Dev",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// monitor = azure_native.datadog.Monitor("monitor",
///     location="West US",
///     monitor_name="myMonitor",
///     properties={
///         "datadog_organization_properties": {
///             "cspm": False,
///             "enterprise_app_id": "00000000-0000-0000-0000-000000000000",
///             "id": "myOrg123",
///             "linking_auth_code": "someAuthCode",
///             "linking_client_id": "00000000-0000-0000-0000-000000000000",
///             "name": "myOrg",
///         },
///         "monitoring_status": azure_native.datadog.MonitoringStatus.ENABLED,
///         "user_info": {
///             "email_address": "alice@microsoft.com",
///             "name": "Alice",
///             "phone_number": "123-456-7890",
///         },
///     },
///     resource_group_name="myResourceGroup",
///     sku={
///         "name": "free_Monthly",
///     },
///     tags={
///         "Environment": "Dev",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   monitor:
///     type: azure-native:datadog:Monitor
///     properties:
///       location: West US
///       monitorName: myMonitor
///       properties:
///         datadogOrganizationProperties:
///           cspm: false
///           enterpriseAppId: 00000000-0000-0000-0000-000000000000
///           id: myOrg123
///           linkingAuthCode: someAuthCode
///           linkingClientId: 00000000-0000-0000-0000-000000000000
///           name: myOrg
///         monitoringStatus: Enabled
///         userInfo:
///           emailAddress: alice@microsoft.com
///           name: Alice
///           phoneNumber: 123-456-7890
///       resourceGroupName: myResourceGroup
///       sku:
///         name: free_Monthly
///       tags:
///         Environment: Dev
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
/// $ pulumi import azure-native:datadog:Monitor myMonitor /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Datadog/monitors/{monitorName}
/// ```
class Monitor extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  late final pulumi.Output<IdentityPropertiesResponse?> identity;
  late final pulumi.Output<String> location;
  /// Name of the monitor resource.
  late final pulumi.Output<String> name;
  /// Properties specific to the monitor resource.
  late final pulumi.Output<MonitorPropertiesResponse> properties;
  late final pulumi.Output<ResourceSkuResponse?> sku;
  /// Metadata pertaining to creation and last modification of the resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the monitor resource.
  late final pulumi.Output<String> type;

  /// Creates a new [Monitor].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Monitor]. {@macro pulumi_datadog_monitor_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Monitor(
    String name, {
    MonitorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:datadog:Monitor',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    identity = registerOutput<IdentityPropertiesResponse?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IdentityPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<MonitorPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MonitorPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sku = registerOutput<ResourceSkuResponse?>('sku', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResourceSkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
