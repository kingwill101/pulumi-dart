import 'package:pulumi/pulumi.dart' as pulumi;
import 'arm_identity_response.dart';
import 'iot_hub_properties_response.dart';
import 'iot_hub_resource_args.dart';
import 'iot_hub_sku_info_response.dart';
import 'system_data_response.dart';

/// The description of the IoT hub.
///
/// Uses Azure REST API version 2023-06-30.
///
/// Other available API versions: 2016-02-03, 2017-01-19, 2017-07-01, 2018-01-22, 2018-04-01, 2018-12-01-preview, 2019-03-22, 2019-03-22-preview, 2019-07-01-preview, 2019-11-04, 2020-03-01, 2020-04-01, 2020-06-15, 2020-07-10-preview, 2020-08-01, 2020-08-31, 2020-08-31-preview, 2021-02-01-preview, 2021-03-03-preview, 2021-03-31, 2021-07-01, 2021-07-01-preview, 2021-07-02, 2021-07-02-preview, 2022-04-30-preview, 2022-11-15-preview, 2023-06-30-preview, 2025-08-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native iothub [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### IotHubResource_AddCosmosDbEndpoint
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var iotHubResource = new AzureNative.IoTHub.IotHubResource("iotHubResource", new()
///     {
///         Location = "centraluseuap",
///         Properties = new AzureNative.IoTHub.Inputs.IotHubPropertiesArgs
///         {
///             CloudToDevice = new AzureNative.IoTHub.Inputs.CloudToDevicePropertiesArgs
///             {
///                 DefaultTtlAsIso8601 = "PT1H",
///                 Feedback = new AzureNative.IoTHub.Inputs.FeedbackPropertiesArgs
///                 {
///                     LockDurationAsIso8601 = "PT1M",
///                     MaxDeliveryCount = 10,
///                     TtlAsIso8601 = "PT1H",
///                 },
///                 MaxDeliveryCount = 10,
///             },
///             EnableDataResidency = false,
///             EnableFileUploadNotifications = false,
///             EventHubEndpoints =
///             {
///                 { "events", new AzureNative.IoTHub.Inputs.EventHubPropertiesArgs
///                 {
///                     PartitionCount = 2,
///                     RetentionTimeInDays = 1,
///                 } },
///             },
///             Features = AzureNative.IoTHub.Capabilities.None,
///             IpFilterRules = new() { },
///             MessagingEndpoints =
///             {
///                 { "fileNotifications", new AzureNative.IoTHub.Inputs.MessagingEndpointPropertiesArgs
///                 {
///                     LockDurationAsIso8601 = "PT1M",
///                     MaxDeliveryCount = 10,
///                     TtlAsIso8601 = "PT1H",
///                 } },
///             },
///             MinTlsVersion = "1.2",
///             NetworkRuleSets = new AzureNative.IoTHub.Inputs.NetworkRuleSetPropertiesArgs
///             {
///                 ApplyToBuiltInEventHubEndpoint = true,
///                 DefaultAction = AzureNative.IoTHub.DefaultAction.Deny,
///                 IpRules = new[]
///                 {
///                     new AzureNative.IoTHub.Inputs.NetworkRuleSetIpRuleArgs
///                     {
///                         Action = AzureNative.IoTHub.NetworkRuleIPAction.Allow,
///                         FilterName = "rule1",
///                         IpMask = "131.117.159.53",
///                     },
///                     new AzureNative.IoTHub.Inputs.NetworkRuleSetIpRuleArgs
///                     {
///                         Action = AzureNative.IoTHub.NetworkRuleIPAction.Allow,
///                         FilterName = "rule2",
///                         IpMask = "157.55.59.128/25",
///                     },
///                 },
///             },
///             Routing = new AzureNative.IoTHub.Inputs.RoutingPropertiesArgs
///             {
///                 Endpoints = new AzureNative.IoTHub.Inputs.RoutingEndpointsArgs
///                 {
///                     CosmosDBSqlContainers = new[]
///                     {
///                         new AzureNative.IoTHub.Inputs.RoutingCosmosDBSqlApiPropertiesArgs
///                         {
///                             AuthenticationType = AzureNative.IoTHub.AuthenticationType.KeyBased,
///                             ContainerName = "test",
///                             DatabaseName = "systemstore",
///                             EndpointUri = "https://test-systemstore-test2.documents.azure.com",
///                             Name = "endpointcosmos",
///                             PartitionKeyName = "keystamped",
///                             PartitionKeyTemplate = "{deviceid}-{YYYY}-{MM}",
///                             PrimaryKey = "<primary-key>",
///                             ResourceGroup = "rg-test",
///                             SecondaryKey = "<secondary-key>",
///                             SubscriptionId = "<subscription-id>",
///                         },
///                     },
///                     EventHubs = new() { },
///                     ServiceBusQueues = new() { },
///                     ServiceBusTopics = new() { },
///                     StorageContainers = new() { },
///                 },
///                 FallbackRoute = new AzureNative.IoTHub.Inputs.FallbackRoutePropertiesArgs
///                 {
///                     Condition = "true",
///                     EndpointNames = new[]
///                     {
///                         "events",
///                     },
///                     IsEnabled = true,
///                     Name = "$fallback",
///                     Source = AzureNative.IoTHub.RoutingSource.DeviceMessages,
///                 },
///                 Routes = new() { },
///             },
///             StorageEndpoints =
///             {
///                 { "$default", new AzureNative.IoTHub.Inputs.StorageEndpointPropertiesArgs
///                 {
///                     ConnectionString = "",
///                     ContainerName = "",
///                     SasTtlAsIso8601 = "PT1H",
///                 } },
///             },
///         },
///         ResourceGroupName = "myResourceGroup",
///         ResourceName = "testHub",
///         Sku = new AzureNative.IoTHub.Inputs.IotHubSkuInfoArgs
///         {
///             Capacity = 1,
///             Name = AzureNative.IoTHub.IotHubSku.S1,
///         },
///         Tags = null,
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
/// 	iothub "github.com/pulumi/pulumi-azure-native-sdk/iothub/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iothub.NewIotHubResource(ctx, "iotHubResource", &iothub.IotHubResourceArgs{
/// 			Location: pulumi.String("centraluseuap"),
/// 			Properties: &iothub.IotHubPropertiesArgs{
/// 				CloudToDevice: &iothub.CloudToDevicePropertiesArgs{
/// 					DefaultTtlAsIso8601: pulumi.String("PT1H"),
/// 					Feedback: &iothub.FeedbackPropertiesArgs{
/// 						LockDurationAsIso8601: pulumi.String("PT1M"),
/// 						MaxDeliveryCount:      pulumi.Int(10),
/// 						TtlAsIso8601:          pulumi.String("PT1H"),
/// 					},
/// 					MaxDeliveryCount: pulumi.Int(10),
/// 				},
/// 				EnableDataResidency:           pulumi.Bool(false),
/// 				EnableFileUploadNotifications: pulumi.Bool(false),
/// 				EventHubEndpoints: iothub.EventHubPropertiesMap{
/// 					"events": &iothub.EventHubPropertiesArgs{
/// 						PartitionCount:      pulumi.Int(2),
/// 						RetentionTimeInDays: pulumi.Float64(1),
/// 					},
/// 				},
/// 				Features:      pulumi.String(iothub.CapabilitiesNone),
/// 				IpFilterRules: iothub.IpFilterRuleArray{},
/// 				MessagingEndpoints: iothub.MessagingEndpointPropertiesMap{
/// 					"fileNotifications": &iothub.MessagingEndpointPropertiesArgs{
/// 						LockDurationAsIso8601: pulumi.String("PT1M"),
/// 						MaxDeliveryCount:      pulumi.Int(10),
/// 						TtlAsIso8601:          pulumi.String("PT1H"),
/// 					},
/// 				},
/// 				MinTlsVersion: pulumi.String("1.2"),
/// 				NetworkRuleSets: &iothub.NetworkRuleSetPropertiesArgs{
/// 					ApplyToBuiltInEventHubEndpoint: pulumi.Bool(true),
/// 					DefaultAction:                  pulumi.String(iothub.DefaultActionDeny),
/// 					IpRules: iothub.NetworkRuleSetIpRuleArray{
/// 						&iothub.NetworkRuleSetIpRuleArgs{
/// 							Action:     pulumi.String(iothub.NetworkRuleIPActionAllow),
/// 							FilterName: pulumi.String("rule1"),
/// 							IpMask:     pulumi.String("131.117.159.53"),
/// 						},
/// 						&iothub.NetworkRuleSetIpRuleArgs{
/// 							Action:     pulumi.String(iothub.NetworkRuleIPActionAllow),
/// 							FilterName: pulumi.String("rule2"),
/// 							IpMask:     pulumi.String("157.55.59.128/25"),
/// 						},
/// 					},
/// 				},
/// 				Routing: &iothub.RoutingPropertiesArgs{
/// 					Endpoints: &iothub.RoutingEndpointsArgs{
/// 						CosmosDBSqlContainers: iothub.RoutingCosmosDBSqlApiPropertiesArray{
/// 							&iothub.RoutingCosmosDBSqlApiPropertiesArgs{
/// 								AuthenticationType:   pulumi.String(iothub.AuthenticationTypeKeyBased),
/// 								ContainerName:        pulumi.String("test"),
/// 								DatabaseName:         pulumi.String("systemstore"),
/// 								EndpointUri:          pulumi.String("https://test-systemstore-test2.documents.azure.com"),
/// 								Name:                 pulumi.String("endpointcosmos"),
/// 								PartitionKeyName:     pulumi.String("keystamped"),
/// 								PartitionKeyTemplate: pulumi.String("{deviceid}-{YYYY}-{MM}"),
/// 								PrimaryKey:           pulumi.String("<primary-key>"),
/// 								ResourceGroup:        pulumi.String("rg-test"),
/// 								SecondaryKey:         pulumi.String("<secondary-key>"),
/// 								SubscriptionId:       pulumi.String("<subscription-id>"),
/// 							},
/// 						},
/// 						EventHubs:         iothub.RoutingEventHubPropertiesArray{},
/// 						ServiceBusQueues:  iothub.RoutingServiceBusQueueEndpointPropertiesArray{},
/// 						ServiceBusTopics:  iothub.RoutingServiceBusTopicEndpointPropertiesArray{},
/// 						StorageContainers: iothub.RoutingStorageContainerPropertiesArray{},
/// 					},
/// 					FallbackRoute: &iothub.FallbackRoutePropertiesArgs{
/// 						Condition: pulumi.String("true"),
/// 						EndpointNames: pulumi.StringArray{
/// 							pulumi.String("events"),
/// 						},
/// 						IsEnabled: pulumi.Bool(true),
/// 						Name:      pulumi.String("$fallback"),
/// 						Source:    pulumi.String(iothub.RoutingSourceDeviceMessages),
/// 					},
/// 					Routes: iothub.RoutePropertiesArray{},
/// 				},
/// 				StorageEndpoints: iothub.StorageEndpointPropertiesMap{
/// 					"$default": &iothub.StorageEndpointPropertiesArgs{
/// 						ConnectionString: pulumi.String(""),
/// 						ContainerName:    pulumi.String(""),
/// 						SasTtlAsIso8601:  pulumi.String("PT1H"),
/// 					},
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			ResourceName:      pulumi.String("testHub"),
/// 			Sku: &iothub.IotHubSkuInfoArgs{
/// 				Capacity: pulumi.Float64(1),
/// 				Name:     pulumi.String(iothub.IotHubSkuS1),
/// 			},
/// 			Tags: pulumi.StringMap{},
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
/// import com.pulumi.azurenative.iothub.IotHubResource;
/// import com.pulumi.azurenative.iothub.IotHubResourceArgs;
/// import com.pulumi.azurenative.iothub.inputs.IotHubPropertiesArgs;
/// import com.pulumi.azurenative.iothub.inputs.CloudToDevicePropertiesArgs;
/// import com.pulumi.azurenative.iothub.inputs.FeedbackPropertiesArgs;
/// import com.pulumi.azurenative.iothub.inputs.NetworkRuleSetPropertiesArgs;
/// import com.pulumi.azurenative.iothub.inputs.RoutingPropertiesArgs;
/// import com.pulumi.azurenative.iothub.inputs.RoutingEndpointsArgs;
/// import com.pulumi.azurenative.iothub.inputs.FallbackRoutePropertiesArgs;
/// import com.pulumi.azurenative.iothub.inputs.IotHubSkuInfoArgs;
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
///         var iotHubResource = new IotHubResource("iotHubResource", IotHubResourceArgs.builder()
///             .location("centraluseuap")
///             .properties(IotHubPropertiesArgs.builder()
///                 .cloudToDevice(CloudToDevicePropertiesArgs.builder()
///                     .defaultTtlAsIso8601("PT1H")
///                     .feedback(FeedbackPropertiesArgs.builder()
///                         .lockDurationAsIso8601("PT1M")
///                         .maxDeliveryCount(10)
///                         .ttlAsIso8601("PT1H")
///                         .build())
///                     .maxDeliveryCount(10)
///                     .build())
///                 .enableDataResidency(false)
///                 .enableFileUploadNotifications(false)
///                 .eventHubEndpoints(Map.of("events", EventHubPropertiesArgs.builder()
///                     .partitionCount(2)
///                     .retentionTimeInDays(1.0)
///                     .build()))
///                 .features("None")
///                 .ipFilterRules()
///                 .messagingEndpoints(Map.of("fileNotifications", MessagingEndpointPropertiesArgs.builder()
///                     .lockDurationAsIso8601("PT1M")
///                     .maxDeliveryCount(10)
///                     .ttlAsIso8601("PT1H")
///                     .build()))
///                 .minTlsVersion("1.2")
///                 .networkRuleSets(NetworkRuleSetPropertiesArgs.builder()
///                     .applyToBuiltInEventHubEndpoint(true)
///                     .defaultAction("Deny")
///                     .ipRules(
///                         NetworkRuleSetIpRuleArgs.builder()
///                             .action("Allow")
///                             .filterName("rule1")
///                             .ipMask("131.117.159.53")
///                             .build(),
///                         NetworkRuleSetIpRuleArgs.builder()
///                             .action("Allow")
///                             .filterName("rule2")
///                             .ipMask("157.55.59.128/25")
///                             .build())
///                     .build())
///                 .routing(RoutingPropertiesArgs.builder()
///                     .endpoints(RoutingEndpointsArgs.builder()
///                         .cosmosDBSqlContainers(RoutingCosmosDBSqlApiPropertiesArgs.builder()
///                             .authenticationType("keyBased")
///                             .containerName("test")
///                             .databaseName("systemstore")
///                             .endpointUri("https://test-systemstore-test2.documents.azure.com")
///                             .name("endpointcosmos")
///                             .partitionKeyName("keystamped")
///                             .partitionKeyTemplate("{deviceid}-{YYYY}-{MM}")
///                             .primaryKey("<primary-key>")
///                             .resourceGroup("rg-test")
///                             .secondaryKey("<secondary-key>")
///                             .subscriptionId("<subscription-id>")
///                             .build())
///                         .eventHubs()
///                         .serviceBusQueues()
///                         .serviceBusTopics()
///                         .storageContainers()
///                         .build())
///                     .fallbackRoute(FallbackRoutePropertiesArgs.builder()
///                         .condition("true")
///                         .endpointNames("events")
///                         .isEnabled(true)
///                         .name("$fallback")
///                         .source("DeviceMessages")
///                         .build())
///                     .routes()
///                     .build())
///                 .storageEndpoints(Map.of("$default", StorageEndpointPropertiesArgs.builder()
///                     .connectionString("")
///                     .containerName("")
///                     .sasTtlAsIso8601("PT1H")
///                     .build()))
///                 .build())
///             .resourceGroupName("myResourceGroup")
///             .resourceName("testHub")
///             .sku(IotHubSkuInfoArgs.builder()
///                 .capacity(1.0)
///                 .name("S1")
///                 .build())
///             .tags(Map.ofEntries(
///             ))
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
/// const iotHubResource = new azure_native.iothub.IotHubResource("iotHubResource", {
///     location: "centraluseuap",
///     properties: {
///         cloudToDevice: {
///             defaultTtlAsIso8601: "PT1H",
///             feedback: {
///                 lockDurationAsIso8601: "PT1M",
///                 maxDeliveryCount: 10,
///                 ttlAsIso8601: "PT1H",
///             },
///             maxDeliveryCount: 10,
///         },
///         enableDataResidency: false,
///         enableFileUploadNotifications: false,
///         eventHubEndpoints: {
///             events: {
///                 partitionCount: 2,
///                 retentionTimeInDays: 1,
///             },
///         },
///         features: azure_native.iothub.Capabilities.None,
///         ipFilterRules: [],
///         messagingEndpoints: {
///             fileNotifications: {
///                 lockDurationAsIso8601: "PT1M",
///                 maxDeliveryCount: 10,
///                 ttlAsIso8601: "PT1H",
///             },
///         },
///         minTlsVersion: "1.2",
///         networkRuleSets: {
///             applyToBuiltInEventHubEndpoint: true,
///             defaultAction: azure_native.iothub.DefaultAction.Deny,
///             ipRules: [
///                 {
///                     action: azure_native.iothub.NetworkRuleIPAction.Allow,
///                     filterName: "rule1",
///                     ipMask: "131.117.159.53",
///                 },
///                 {
///                     action: azure_native.iothub.NetworkRuleIPAction.Allow,
///                     filterName: "rule2",
///                     ipMask: "157.55.59.128/25",
///                 },
///             ],
///         },
///         routing: {
///             endpoints: {
///                 cosmosDBSqlContainers: [{
///                     authenticationType: azure_native.iothub.AuthenticationType.KeyBased,
///                     containerName: "test",
///                     databaseName: "systemstore",
///                     endpointUri: "https://test-systemstore-test2.documents.azure.com",
///                     name: "endpointcosmos",
///                     partitionKeyName: "keystamped",
///                     partitionKeyTemplate: "{deviceid}-{YYYY}-{MM}",
///                     primaryKey: "<primary-key>",
///                     resourceGroup: "rg-test",
///                     secondaryKey: "<secondary-key>",
///                     subscriptionId: "<subscription-id>",
///                 }],
///                 eventHubs: [],
///                 serviceBusQueues: [],
///                 serviceBusTopics: [],
///                 storageContainers: [],
///             },
///             fallbackRoute: {
///                 condition: "true",
///                 endpointNames: ["events"],
///                 isEnabled: true,
///                 name: "$fallback",
///                 source: azure_native.iothub.RoutingSource.DeviceMessages,
///             },
///             routes: [],
///         },
///         storageEndpoints: {
///             $default: {
///                 connectionString: "",
///                 containerName: "",
///                 sasTtlAsIso8601: "PT1H",
///             },
///         },
///     },
///     resourceGroupName: "myResourceGroup",
///     resourceName: "testHub",
///     sku: {
///         capacity: 1,
///         name: azure_native.iothub.IotHubSku.S1,
///     },
///     tags: {},
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// iot_hub_resource = azure_native.iothub.IotHubResource("iotHubResource",
///     location="centraluseuap",
///     properties={
///         "cloud_to_device": {
///             "default_ttl_as_iso8601": "PT1H",
///             "feedback": {
///                 "lock_duration_as_iso8601": "PT1M",
///                 "max_delivery_count": 10,
///                 "ttl_as_iso8601": "PT1H",
///             },
///             "max_delivery_count": 10,
///         },
///         "enable_data_residency": False,
///         "enable_file_upload_notifications": False,
///         "event_hub_endpoints": {
///             "events": {
///                 "partition_count": 2,
///                 "retention_time_in_days": 1,
///             },
///         },
///         "features": azure_native.iothub.Capabilities.NONE,
///         "ip_filter_rules": [],
///         "messaging_endpoints": {
///             "fileNotifications": {
///                 "lock_duration_as_iso8601": "PT1M",
///                 "max_delivery_count": 10,
///                 "ttl_as_iso8601": "PT1H",
///             },
///         },
///         "min_tls_version": "1.2",
///         "network_rule_sets": {
///             "apply_to_built_in_event_hub_endpoint": True,
///             "default_action": azure_native.iothub.DefaultAction.DENY,
///             "ip_rules": [
///                 {
///                     "action": azure_native.iothub.NetworkRuleIPAction.ALLOW,
///                     "filter_name": "rule1",
///                     "ip_mask": "131.117.159.53",
///                 },
///                 {
///                     "action": azure_native.iothub.NetworkRuleIPAction.ALLOW,
///                     "filter_name": "rule2",
///                     "ip_mask": "157.55.59.128/25",
///                 },
///             ],
///         },
///         "routing": {
///             "endpoints": {
///                 "cosmos_db_sql_containers": [{
///                     "authentication_type": azure_native.iothub.AuthenticationType.KEY_BASED,
///                     "container_name": "test",
///                     "database_name": "systemstore",
///                     "endpoint_uri": "https://test-systemstore-test2.documents.azure.com",
///                     "name": "endpointcosmos",
///                     "partition_key_name": "keystamped",
///                     "partition_key_template": "{deviceid}-{YYYY}-{MM}",
///                     "primary_key": "<primary-key>",
///                     "resource_group": "rg-test",
///                     "secondary_key": "<secondary-key>",
///                     "subscription_id": "<subscription-id>",
///                 }],
///                 "event_hubs": [],
///                 "service_bus_queues": [],
///                 "service_bus_topics": [],
///                 "storage_containers": [],
///             },
///             "fallback_route": {
///                 "condition": "true",
///                 "endpoint_names": ["events"],
///                 "is_enabled": True,
///                 "name": "$fallback",
///                 "source": azure_native.iothub.RoutingSource.DEVICE_MESSAGES,
///             },
///             "routes": [],
///         },
///         "storage_endpoints": {
///             "$default": {
///                 "connection_string": "",
///                 "container_name": "",
///                 "sas_ttl_as_iso8601": "PT1H",
///             },
///         },
///     },
///     resource_group_name="myResourceGroup",
///     resource_name_="testHub",
///     sku={
///         "capacity": 1,
///         "name": azure_native.iothub.IotHubSku.S1,
///     },
///     tags={})
///
/// ```
///
/// ```yaml
/// resources:
///   iotHubResource:
///     type: azure-native:iothub:IotHubResource
///     properties:
///       location: centraluseuap
///       properties:
///         cloudToDevice:
///           defaultTtlAsIso8601: PT1H
///           feedback:
///             lockDurationAsIso8601: PT1M
///             maxDeliveryCount: 10
///             ttlAsIso8601: PT1H
///           maxDeliveryCount: 10
///         enableDataResidency: false
///         enableFileUploadNotifications: false
///         eventHubEndpoints:
///           events:
///             partitionCount: 2
///             retentionTimeInDays: 1
///         features: None
///         ipFilterRules: []
///         messagingEndpoints:
///           fileNotifications:
///             lockDurationAsIso8601: PT1M
///             maxDeliveryCount: 10
///             ttlAsIso8601: PT1H
///         minTlsVersion: '1.2'
///         networkRuleSets:
///           applyToBuiltInEventHubEndpoint: true
///           defaultAction: Deny
///           ipRules:
///             - action: Allow
///               filterName: rule1
///               ipMask: 131.117.159.53
///             - action: Allow
///               filterName: rule2
///               ipMask: 157.55.59.128/25
///         routing:
///           endpoints:
///             cosmosDBSqlContainers:
///               - authenticationType: keyBased
///                 containerName: test
///                 databaseName: systemstore
///                 endpointUri: https://test-systemstore-test2.documents.azure.com
///                 name: endpointcosmos
///                 partitionKeyName: keystamped
///                 partitionKeyTemplate: '{deviceid}-{YYYY}-{MM}'
///                 primaryKey: <primary-key>
///                 resourceGroup: rg-test
///                 secondaryKey: <secondary-key>
///                 subscriptionId: <subscription-id>
///             eventHubs: []
///             serviceBusQueues: []
///             serviceBusTopics: []
///             storageContainers: []
///           fallbackRoute:
///             condition: 'true'
///             endpointNames:
///               - events
///             isEnabled: true
///             name: $fallback
///             source: DeviceMessages
///           routes: []
///         storageEndpoints:
///           $default:
///             connectionString: ""
///             containerName: ""
///             sasTtlAsIso8601: PT1H
///       resourceGroupName: myResourceGroup
///       resourceName: testHub
///       sku:
///         capacity: 1
///         name: S1
///       tags: {}
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### IotHubResource_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var iotHubResource = new AzureNative.IoTHub.IotHubResource("iotHubResource", new()
///     {
///         Location = "centraluseuap",
///         Properties = new AzureNative.IoTHub.Inputs.IotHubPropertiesArgs
///         {
///             CloudToDevice = new AzureNative.IoTHub.Inputs.CloudToDevicePropertiesArgs
///             {
///                 DefaultTtlAsIso8601 = "PT1H",
///                 Feedback = new AzureNative.IoTHub.Inputs.FeedbackPropertiesArgs
///                 {
///                     LockDurationAsIso8601 = "PT1M",
///                     MaxDeliveryCount = 10,
///                     TtlAsIso8601 = "PT1H",
///                 },
///                 MaxDeliveryCount = 10,
///             },
///             EnableDataResidency = false,
///             EnableFileUploadNotifications = false,
///             EventHubEndpoints =
///             {
///                 { "events", new AzureNative.IoTHub.Inputs.EventHubPropertiesArgs
///                 {
///                     PartitionCount = 2,
///                     RetentionTimeInDays = 1,
///                 } },
///             },
///             Features = AzureNative.IoTHub.Capabilities.None,
///             IpFilterRules = new() { },
///             MessagingEndpoints =
///             {
///                 { "fileNotifications", new AzureNative.IoTHub.Inputs.MessagingEndpointPropertiesArgs
///                 {
///                     LockDurationAsIso8601 = "PT1M",
///                     MaxDeliveryCount = 10,
///                     TtlAsIso8601 = "PT1H",
///                 } },
///             },
///             MinTlsVersion = "1.2",
///             NetworkRuleSets = new AzureNative.IoTHub.Inputs.NetworkRuleSetPropertiesArgs
///             {
///                 ApplyToBuiltInEventHubEndpoint = true,
///                 DefaultAction = AzureNative.IoTHub.DefaultAction.Deny,
///                 IpRules = new[]
///                 {
///                     new AzureNative.IoTHub.Inputs.NetworkRuleSetIpRuleArgs
///                     {
///                         Action = AzureNative.IoTHub.NetworkRuleIPAction.Allow,
///                         FilterName = "rule1",
///                         IpMask = "131.117.159.53",
///                     },
///                     new AzureNative.IoTHub.Inputs.NetworkRuleSetIpRuleArgs
///                     {
///                         Action = AzureNative.IoTHub.NetworkRuleIPAction.Allow,
///                         FilterName = "rule2",
///                         IpMask = "157.55.59.128/25",
///                     },
///                 },
///             },
///             Routing = new AzureNative.IoTHub.Inputs.RoutingPropertiesArgs
///             {
///                 Endpoints = new AzureNative.IoTHub.Inputs.RoutingEndpointsArgs
///                 {
///                     EventHubs = new() { },
///                     ServiceBusQueues = new() { },
///                     ServiceBusTopics = new() { },
///                     StorageContainers = new() { },
///                 },
///                 FallbackRoute = new AzureNative.IoTHub.Inputs.FallbackRoutePropertiesArgs
///                 {
///                     Condition = "true",
///                     EndpointNames = new[]
///                     {
///                         "events",
///                     },
///                     IsEnabled = true,
///                     Name = "$fallback",
///                     Source = AzureNative.IoTHub.RoutingSource.DeviceMessages,
///                 },
///                 Routes = new() { },
///             },
///             StorageEndpoints =
///             {
///                 { "$default", new AzureNative.IoTHub.Inputs.StorageEndpointPropertiesArgs
///                 {
///                     ConnectionString = "",
///                     ContainerName = "",
///                     SasTtlAsIso8601 = "PT1H",
///                 } },
///             },
///         },
///         ResourceGroupName = "myResourceGroup",
///         ResourceName = "testHub",
///         Sku = new AzureNative.IoTHub.Inputs.IotHubSkuInfoArgs
///         {
///             Capacity = 1,
///             Name = AzureNative.IoTHub.IotHubSku.S1,
///         },
///         Tags = null,
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
/// 	iothub "github.com/pulumi/pulumi-azure-native-sdk/iothub/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iothub.NewIotHubResource(ctx, "iotHubResource", &iothub.IotHubResourceArgs{
/// 			Location: pulumi.String("centraluseuap"),
/// 			Properties: &iothub.IotHubPropertiesArgs{
/// 				CloudToDevice: &iothub.CloudToDevicePropertiesArgs{
/// 					DefaultTtlAsIso8601: pulumi.String("PT1H"),
/// 					Feedback: &iothub.FeedbackPropertiesArgs{
/// 						LockDurationAsIso8601: pulumi.String("PT1M"),
/// 						MaxDeliveryCount:      pulumi.Int(10),
/// 						TtlAsIso8601:          pulumi.String("PT1H"),
/// 					},
/// 					MaxDeliveryCount: pulumi.Int(10),
/// 				},
/// 				EnableDataResidency:           pulumi.Bool(false),
/// 				EnableFileUploadNotifications: pulumi.Bool(false),
/// 				EventHubEndpoints: iothub.EventHubPropertiesMap{
/// 					"events": &iothub.EventHubPropertiesArgs{
/// 						PartitionCount:      pulumi.Int(2),
/// 						RetentionTimeInDays: pulumi.Float64(1),
/// 					},
/// 				},
/// 				Features:      pulumi.String(iothub.CapabilitiesNone),
/// 				IpFilterRules: iothub.IpFilterRuleArray{},
/// 				MessagingEndpoints: iothub.MessagingEndpointPropertiesMap{
/// 					"fileNotifications": &iothub.MessagingEndpointPropertiesArgs{
/// 						LockDurationAsIso8601: pulumi.String("PT1M"),
/// 						MaxDeliveryCount:      pulumi.Int(10),
/// 						TtlAsIso8601:          pulumi.String("PT1H"),
/// 					},
/// 				},
/// 				MinTlsVersion: pulumi.String("1.2"),
/// 				NetworkRuleSets: &iothub.NetworkRuleSetPropertiesArgs{
/// 					ApplyToBuiltInEventHubEndpoint: pulumi.Bool(true),
/// 					DefaultAction:                  pulumi.String(iothub.DefaultActionDeny),
/// 					IpRules: iothub.NetworkRuleSetIpRuleArray{
/// 						&iothub.NetworkRuleSetIpRuleArgs{
/// 							Action:     pulumi.String(iothub.NetworkRuleIPActionAllow),
/// 							FilterName: pulumi.String("rule1"),
/// 							IpMask:     pulumi.String("131.117.159.53"),
/// 						},
/// 						&iothub.NetworkRuleSetIpRuleArgs{
/// 							Action:     pulumi.String(iothub.NetworkRuleIPActionAllow),
/// 							FilterName: pulumi.String("rule2"),
/// 							IpMask:     pulumi.String("157.55.59.128/25"),
/// 						},
/// 					},
/// 				},
/// 				Routing: &iothub.RoutingPropertiesArgs{
/// 					Endpoints: &iothub.RoutingEndpointsArgs{
/// 						EventHubs:         iothub.RoutingEventHubPropertiesArray{},
/// 						ServiceBusQueues:  iothub.RoutingServiceBusQueueEndpointPropertiesArray{},
/// 						ServiceBusTopics:  iothub.RoutingServiceBusTopicEndpointPropertiesArray{},
/// 						StorageContainers: iothub.RoutingStorageContainerPropertiesArray{},
/// 					},
/// 					FallbackRoute: &iothub.FallbackRoutePropertiesArgs{
/// 						Condition: pulumi.String("true"),
/// 						EndpointNames: pulumi.StringArray{
/// 							pulumi.String("events"),
/// 						},
/// 						IsEnabled: pulumi.Bool(true),
/// 						Name:      pulumi.String("$fallback"),
/// 						Source:    pulumi.String(iothub.RoutingSourceDeviceMessages),
/// 					},
/// 					Routes: iothub.RoutePropertiesArray{},
/// 				},
/// 				StorageEndpoints: iothub.StorageEndpointPropertiesMap{
/// 					"$default": &iothub.StorageEndpointPropertiesArgs{
/// 						ConnectionString: pulumi.String(""),
/// 						ContainerName:    pulumi.String(""),
/// 						SasTtlAsIso8601:  pulumi.String("PT1H"),
/// 					},
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			ResourceName:      pulumi.String("testHub"),
/// 			Sku: &iothub.IotHubSkuInfoArgs{
/// 				Capacity: pulumi.Float64(1),
/// 				Name:     pulumi.String(iothub.IotHubSkuS1),
/// 			},
/// 			Tags: pulumi.StringMap{},
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
/// import com.pulumi.azurenative.iothub.IotHubResource;
/// import com.pulumi.azurenative.iothub.IotHubResourceArgs;
/// import com.pulumi.azurenative.iothub.inputs.IotHubPropertiesArgs;
/// import com.pulumi.azurenative.iothub.inputs.CloudToDevicePropertiesArgs;
/// import com.pulumi.azurenative.iothub.inputs.FeedbackPropertiesArgs;
/// import com.pulumi.azurenative.iothub.inputs.NetworkRuleSetPropertiesArgs;
/// import com.pulumi.azurenative.iothub.inputs.RoutingPropertiesArgs;
/// import com.pulumi.azurenative.iothub.inputs.RoutingEndpointsArgs;
/// import com.pulumi.azurenative.iothub.inputs.FallbackRoutePropertiesArgs;
/// import com.pulumi.azurenative.iothub.inputs.IotHubSkuInfoArgs;
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
///         var iotHubResource = new IotHubResource("iotHubResource", IotHubResourceArgs.builder()
///             .location("centraluseuap")
///             .properties(IotHubPropertiesArgs.builder()
///                 .cloudToDevice(CloudToDevicePropertiesArgs.builder()
///                     .defaultTtlAsIso8601("PT1H")
///                     .feedback(FeedbackPropertiesArgs.builder()
///                         .lockDurationAsIso8601("PT1M")
///                         .maxDeliveryCount(10)
///                         .ttlAsIso8601("PT1H")
///                         .build())
///                     .maxDeliveryCount(10)
///                     .build())
///                 .enableDataResidency(false)
///                 .enableFileUploadNotifications(false)
///                 .eventHubEndpoints(Map.of("events", EventHubPropertiesArgs.builder()
///                     .partitionCount(2)
///                     .retentionTimeInDays(1.0)
///                     .build()))
///                 .features("None")
///                 .ipFilterRules()
///                 .messagingEndpoints(Map.of("fileNotifications", MessagingEndpointPropertiesArgs.builder()
///                     .lockDurationAsIso8601("PT1M")
///                     .maxDeliveryCount(10)
///                     .ttlAsIso8601("PT1H")
///                     .build()))
///                 .minTlsVersion("1.2")
///                 .networkRuleSets(NetworkRuleSetPropertiesArgs.builder()
///                     .applyToBuiltInEventHubEndpoint(true)
///                     .defaultAction("Deny")
///                     .ipRules(
///                         NetworkRuleSetIpRuleArgs.builder()
///                             .action("Allow")
///                             .filterName("rule1")
///                             .ipMask("131.117.159.53")
///                             .build(),
///                         NetworkRuleSetIpRuleArgs.builder()
///                             .action("Allow")
///                             .filterName("rule2")
///                             .ipMask("157.55.59.128/25")
///                             .build())
///                     .build())
///                 .routing(RoutingPropertiesArgs.builder()
///                     .endpoints(RoutingEndpointsArgs.builder()
///                         .eventHubs()
///                         .serviceBusQueues()
///                         .serviceBusTopics()
///                         .storageContainers()
///                         .build())
///                     .fallbackRoute(FallbackRoutePropertiesArgs.builder()
///                         .condition("true")
///                         .endpointNames("events")
///                         .isEnabled(true)
///                         .name("$fallback")
///                         .source("DeviceMessages")
///                         .build())
///                     .routes()
///                     .build())
///                 .storageEndpoints(Map.of("$default", StorageEndpointPropertiesArgs.builder()
///                     .connectionString("")
///                     .containerName("")
///                     .sasTtlAsIso8601("PT1H")
///                     .build()))
///                 .build())
///             .resourceGroupName("myResourceGroup")
///             .resourceName("testHub")
///             .sku(IotHubSkuInfoArgs.builder()
///                 .capacity(1.0)
///                 .name("S1")
///                 .build())
///             .tags(Map.ofEntries(
///             ))
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
/// const iotHubResource = new azure_native.iothub.IotHubResource("iotHubResource", {
///     location: "centraluseuap",
///     properties: {
///         cloudToDevice: {
///             defaultTtlAsIso8601: "PT1H",
///             feedback: {
///                 lockDurationAsIso8601: "PT1M",
///                 maxDeliveryCount: 10,
///                 ttlAsIso8601: "PT1H",
///             },
///             maxDeliveryCount: 10,
///         },
///         enableDataResidency: false,
///         enableFileUploadNotifications: false,
///         eventHubEndpoints: {
///             events: {
///                 partitionCount: 2,
///                 retentionTimeInDays: 1,
///             },
///         },
///         features: azure_native.iothub.Capabilities.None,
///         ipFilterRules: [],
///         messagingEndpoints: {
///             fileNotifications: {
///                 lockDurationAsIso8601: "PT1M",
///                 maxDeliveryCount: 10,
///                 ttlAsIso8601: "PT1H",
///             },
///         },
///         minTlsVersion: "1.2",
///         networkRuleSets: {
///             applyToBuiltInEventHubEndpoint: true,
///             defaultAction: azure_native.iothub.DefaultAction.Deny,
///             ipRules: [
///                 {
///                     action: azure_native.iothub.NetworkRuleIPAction.Allow,
///                     filterName: "rule1",
///                     ipMask: "131.117.159.53",
///                 },
///                 {
///                     action: azure_native.iothub.NetworkRuleIPAction.Allow,
///                     filterName: "rule2",
///                     ipMask: "157.55.59.128/25",
///                 },
///             ],
///         },
///         routing: {
///             endpoints: {
///                 eventHubs: [],
///                 serviceBusQueues: [],
///                 serviceBusTopics: [],
///                 storageContainers: [],
///             },
///             fallbackRoute: {
///                 condition: "true",
///                 endpointNames: ["events"],
///                 isEnabled: true,
///                 name: "$fallback",
///                 source: azure_native.iothub.RoutingSource.DeviceMessages,
///             },
///             routes: [],
///         },
///         storageEndpoints: {
///             $default: {
///                 connectionString: "",
///                 containerName: "",
///                 sasTtlAsIso8601: "PT1H",
///             },
///         },
///     },
///     resourceGroupName: "myResourceGroup",
///     resourceName: "testHub",
///     sku: {
///         capacity: 1,
///         name: azure_native.iothub.IotHubSku.S1,
///     },
///     tags: {},
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// iot_hub_resource = azure_native.iothub.IotHubResource("iotHubResource",
///     location="centraluseuap",
///     properties={
///         "cloud_to_device": {
///             "default_ttl_as_iso8601": "PT1H",
///             "feedback": {
///                 "lock_duration_as_iso8601": "PT1M",
///                 "max_delivery_count": 10,
///                 "ttl_as_iso8601": "PT1H",
///             },
///             "max_delivery_count": 10,
///         },
///         "enable_data_residency": False,
///         "enable_file_upload_notifications": False,
///         "event_hub_endpoints": {
///             "events": {
///                 "partition_count": 2,
///                 "retention_time_in_days": 1,
///             },
///         },
///         "features": azure_native.iothub.Capabilities.NONE,
///         "ip_filter_rules": [],
///         "messaging_endpoints": {
///             "fileNotifications": {
///                 "lock_duration_as_iso8601": "PT1M",
///                 "max_delivery_count": 10,
///                 "ttl_as_iso8601": "PT1H",
///             },
///         },
///         "min_tls_version": "1.2",
///         "network_rule_sets": {
///             "apply_to_built_in_event_hub_endpoint": True,
///             "default_action": azure_native.iothub.DefaultAction.DENY,
///             "ip_rules": [
///                 {
///                     "action": azure_native.iothub.NetworkRuleIPAction.ALLOW,
///                     "filter_name": "rule1",
///                     "ip_mask": "131.117.159.53",
///                 },
///                 {
///                     "action": azure_native.iothub.NetworkRuleIPAction.ALLOW,
///                     "filter_name": "rule2",
///                     "ip_mask": "157.55.59.128/25",
///                 },
///             ],
///         },
///         "routing": {
///             "endpoints": {
///                 "event_hubs": [],
///                 "service_bus_queues": [],
///                 "service_bus_topics": [],
///                 "storage_containers": [],
///             },
///             "fallback_route": {
///                 "condition": "true",
///                 "endpoint_names": ["events"],
///                 "is_enabled": True,
///                 "name": "$fallback",
///                 "source": azure_native.iothub.RoutingSource.DEVICE_MESSAGES,
///             },
///             "routes": [],
///         },
///         "storage_endpoints": {
///             "$default": {
///                 "connection_string": "",
///                 "container_name": "",
///                 "sas_ttl_as_iso8601": "PT1H",
///             },
///         },
///     },
///     resource_group_name="myResourceGroup",
///     resource_name_="testHub",
///     sku={
///         "capacity": 1,
///         "name": azure_native.iothub.IotHubSku.S1,
///     },
///     tags={})
///
/// ```
///
/// ```yaml
/// resources:
///   iotHubResource:
///     type: azure-native:iothub:IotHubResource
///     properties:
///       location: centraluseuap
///       properties:
///         cloudToDevice:
///           defaultTtlAsIso8601: PT1H
///           feedback:
///             lockDurationAsIso8601: PT1M
///             maxDeliveryCount: 10
///             ttlAsIso8601: PT1H
///           maxDeliveryCount: 10
///         enableDataResidency: false
///         enableFileUploadNotifications: false
///         eventHubEndpoints:
///           events:
///             partitionCount: 2
///             retentionTimeInDays: 1
///         features: None
///         ipFilterRules: []
///         messagingEndpoints:
///           fileNotifications:
///             lockDurationAsIso8601: PT1M
///             maxDeliveryCount: 10
///             ttlAsIso8601: PT1H
///         minTlsVersion: '1.2'
///         networkRuleSets:
///           applyToBuiltInEventHubEndpoint: true
///           defaultAction: Deny
///           ipRules:
///             - action: Allow
///               filterName: rule1
///               ipMask: 131.117.159.53
///             - action: Allow
///               filterName: rule2
///               ipMask: 157.55.59.128/25
///         routing:
///           endpoints:
///             eventHubs: []
///             serviceBusQueues: []
///             serviceBusTopics: []
///             storageContainers: []
///           fallbackRoute:
///             condition: 'true'
///             endpointNames:
///               - events
///             isEnabled: true
///             name: $fallback
///             source: DeviceMessages
///           routes: []
///         storageEndpoints:
///           $default:
///             connectionString: ""
///             containerName: ""
///             sasTtlAsIso8601: PT1H
///       resourceGroupName: myResourceGroup
///       resourceName: testHub
///       sku:
///         capacity: 1
///         name: S1
///       tags: {}
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
/// $ pulumi import azure-native:iothub:IotHubResource testHub /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Devices/IotHubs/{resourceName}
/// ```
class IotHubResource extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The Etag field is *not* required. If it is provided in the response body, it must also be provided as a header per the normal ETag convention.
  late final pulumi.Output<String?> etag;
  /// The managed identities for the IotHub.
  late final pulumi.Output<ArmIdentityResponse?> identity;
  /// The resource location.
  late final pulumi.Output<String> location;
  /// The resource name.
  late final pulumi.Output<String> name;
  /// IotHub properties
  late final pulumi.Output<IotHubPropertiesResponse> properties;
  /// IotHub SKU info
  late final pulumi.Output<IotHubSkuInfoResponse> sku;
  /// The system meta data relating to this resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [IotHubResource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IotHubResource]. {@macro pulumi_iothub_iot_hub_resource_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IotHubResource(
    String name, {
    IotHubResourceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:iothub:IotHubResource',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.etag = registerOutput<String?>('etag');
    this.identity = registerOutput<ArmIdentityResponse?>('identity');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.properties = registerOutput<IotHubPropertiesResponse>('properties');
    this.sku = registerOutput<IotHubSkuInfoResponse>('sku');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.type = registerOutput<String>('type');
  }
}
