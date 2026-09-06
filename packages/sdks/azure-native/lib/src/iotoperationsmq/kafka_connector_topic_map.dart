import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location_property_response.dart';
import 'kafka_connector_topic_map_args.dart';
import 'kafka_routes_response.dart';
import 'kafka_topic_map_batching_response.dart';
import 'system_data_response.dart';

/// MQ kafkaConnector/topicMap resource
///
/// Uses Azure REST API version 2023-10-04-preview. In version 2.x of the Azure Native provider, it used API version 2023-10-04-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### KafkaConnectorTopicMap_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var kafkaConnectorTopicMap = new AzureNative.IoTOperationsMQ.KafkaConnectorTopicMap("kafkaConnectorTopicMap", new()
///     {
///         Batching = new AzureNative.IoTOperationsMQ.Inputs.KafkaTopicMapBatchingArgs
///         {
///             Enabled = true,
///             LatencyMs = 9110,
///             MaxBytes = 732052221,
///             MaxMessages = 373078076,
///         },
///         Compression = AzureNative.IoTOperationsMQ.KafkaMessageCompressionType.None,
///         CopyMqttProperties = "efpqgkycuawnzyubdyt",
///         ExtendedLocation = new AzureNative.IoTOperationsMQ.Inputs.ExtendedLocationPropertyArgs
///         {
///             Name = "an",
///             Type = AzureNative.IoTOperationsMQ.ExtendedLocationType.CustomLocation,
///         },
///         KafkaConnectorName = "216VN",
///         KafkaConnectorRef = "icivjwerdspx",
///         Location = "pavphpzfsgdudpyvufyebqh",
///         MqName = "-1-eD-7-J",
///         PartitionKeyProperty = "c",
///         PartitionStrategy = AzureNative.IoTOperationsMQ.KafkaPartitionStrategy.@Default,
///         ResourceGroupName = "rgiotoperationsmq",
///         Routes = new[]
///         {
///             new AzureNative.IoTOperationsMQ.Inputs.KafkaRoutesArgs
///             {
///                 KafkaToMqtt = new AzureNative.IoTOperationsMQ.Inputs.KafkaToMqttRoutesArgs
///                 {
///                     ConsumerGroupId = "usork",
///                     KafkaTopic = "ggwhwbsr",
///                     MqttTopic = "jwvmmhfqqkkmqrpslbdfmpbdetfu",
///                     Name = "lrnvudysggscnqvmnlkrk",
///                     Qos = 1,
///                 },
///                 MqttToKafka = new AzureNative.IoTOperationsMQ.Inputs.MqttToKafkaRoutesArgs
///                 {
///                     KafkaAcks = AzureNative.IoTOperationsMQ.KafkaAcks.Zero,
///                     KafkaTopic = "tellycttwulueqcpqf",
///                     MqttTopic = "raipkrcwvdnnflywhgjwnquarf",
///                     Name = "qpshqcaxvxnyjzimvchngupzezdei",
///                     Qos = 1,
///                     SharedSubscription = new AzureNative.IoTOperationsMQ.Inputs.KafkaSharedSubscriptionPropertiesArgs
///                     {
///                         GroupMinimumShareNumber = 216,
///                         GroupName = "nwdyccsditzhchuksmi",
///                     },
///                 },
///             },
///         },
///         Tags = null,
///         TopicMapName = "q582ViEY-b7wF1OO2A",
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
/// 	iotoperationsmq "github.com/pulumi/pulumi-azure-native-sdk/iotoperationsmq/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iotoperationsmq.NewKafkaConnectorTopicMap(ctx, "kafkaConnectorTopicMap", &iotoperationsmq.KafkaConnectorTopicMapArgs{
/// 			Batching: &iotoperationsmq.KafkaTopicMapBatchingArgs{
/// 				Enabled:     pulumi.Bool(true),
/// 				LatencyMs:   pulumi.Int(9110),
/// 				MaxBytes:    pulumi.Float64(732052221),
/// 				MaxMessages: pulumi.Float64(373078076),
/// 			},
/// 			Compression:        pulumi.String(iotoperationsmq.KafkaMessageCompressionTypeNone),
/// 			CopyMqttProperties: pulumi.String("efpqgkycuawnzyubdyt"),
/// 			ExtendedLocation: &iotoperationsmq.ExtendedLocationPropertyArgs{
/// 				Name: pulumi.String("an"),
/// 				Type: pulumi.String(iotoperationsmq.ExtendedLocationTypeCustomLocation),
/// 			},
/// 			KafkaConnectorName:   pulumi.String("216VN"),
/// 			KafkaConnectorRef:    pulumi.String("icivjwerdspx"),
/// 			Location:             pulumi.String("pavphpzfsgdudpyvufyebqh"),
/// 			MqName:               pulumi.String("-1-eD-7-J"),
/// 			PartitionKeyProperty: pulumi.String("c"),
/// 			PartitionStrategy:    pulumi.String(iotoperationsmq.KafkaPartitionStrategyDefault),
/// 			ResourceGroupName:    pulumi.String("rgiotoperationsmq"),
/// 			Routes: iotoperationsmq.KafkaRoutesArray{
/// 				&iotoperationsmq.KafkaRoutesArgs{
/// 					KafkaToMqtt: &iotoperationsmq.KafkaToMqttRoutesArgs{
/// 						ConsumerGroupId: pulumi.String("usork"),
/// 						KafkaTopic:      pulumi.String("ggwhwbsr"),
/// 						MqttTopic:       pulumi.String("jwvmmhfqqkkmqrpslbdfmpbdetfu"),
/// 						Name:            pulumi.String("lrnvudysggscnqvmnlkrk"),
/// 						Qos:             pulumi.Int(1),
/// 					},
/// 					MqttToKafka: &iotoperationsmq.MqttToKafkaRoutesArgs{
/// 						KafkaAcks:  pulumi.String(iotoperationsmq.KafkaAcksZero),
/// 						KafkaTopic: pulumi.String("tellycttwulueqcpqf"),
/// 						MqttTopic:  pulumi.String("raipkrcwvdnnflywhgjwnquarf"),
/// 						Name:       pulumi.String("qpshqcaxvxnyjzimvchngupzezdei"),
/// 						Qos:        pulumi.Int(1),
/// 						SharedSubscription: &iotoperationsmq.KafkaSharedSubscriptionPropertiesArgs{
/// 							GroupMinimumShareNumber: pulumi.Int(216),
/// 							GroupName:               pulumi.String("nwdyccsditzhchuksmi"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Tags:         pulumi.StringMap{},
/// 			TopicMapName: pulumi.String("q582ViEY-b7wF1OO2A"),
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
/// resource "azure-native_iotoperationsmq_kafkaconnectortopicmap" "kafkaConnectorTopicMap" {
///   batching = {
///     enabled      = true
///     latency_ms   = 9110
///     max_bytes    = 732052221
///     max_messages = 373078076
///   }
///   compression          = "none"
///   copy_mqtt_properties = "efpqgkycuawnzyubdyt"
///   extended_location = {
///     name = "an"
///     type = "CustomLocation"
///   }
///   kafka_connector_name   = "216VN"
///   kafka_connector_ref    = "icivjwerdspx"
///   location               = "pavphpzfsgdudpyvufyebqh"
///   mq_name                = "-1-eD-7-J"
///   partition_key_property = "c"
///   partition_strategy     = "default"
///   resource_group_name    = "rgiotoperationsmq"
///   routes {
///     kafka_to_mqtt = {
///       consumer_group_id = "usork"
///       kafka_topic       = "ggwhwbsr"
///       mqtt_topic        = "jwvmmhfqqkkmqrpslbdfmpbdetfu"
///       name              = "lrnvudysggscnqvmnlkrk"
///       qos               = 1
///     }
///     mqtt_to_kafka = {
///       kafka_acks  = "zero"
///       kafka_topic = "tellycttwulueqcpqf"
///       mqtt_topic  = "raipkrcwvdnnflywhgjwnquarf"
///       name        = "qpshqcaxvxnyjzimvchngupzezdei"
///       qos         = 1
///       shared_subscription = {
///         group_minimum_share_number = 216
///         group_name                 = "nwdyccsditzhchuksmi"
///       }
///     }
///   }
///   tags           = {}
///   topic_map_name = "q582ViEY-b7wF1OO2A"
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
/// import com.pulumi.azurenative.iotoperationsmq.KafkaConnectorTopicMap;
/// import com.pulumi.azurenative.iotoperationsmq.KafkaConnectorTopicMapArgs;
/// import com.pulumi.azurenative.iotoperationsmq.inputs.KafkaTopicMapBatchingArgs;
/// import com.pulumi.azurenative.iotoperationsmq.inputs.ExtendedLocationPropertyArgs;
/// import com.pulumi.azurenative.iotoperationsmq.inputs.KafkaRoutesArgs;
/// import com.pulumi.azurenative.iotoperationsmq.inputs.KafkaToMqttRoutesArgs;
/// import com.pulumi.azurenative.iotoperationsmq.inputs.MqttToKafkaRoutesArgs;
/// import com.pulumi.azurenative.iotoperationsmq.inputs.KafkaSharedSubscriptionPropertiesArgs;
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
///         var kafkaConnectorTopicMap = new KafkaConnectorTopicMap("kafkaConnectorTopicMap", KafkaConnectorTopicMapArgs.builder()
///             .batching(KafkaTopicMapBatchingArgs.builder()
///                 .enabled(true)
///                 .latencyMs(9110)
///                 .maxBytes(732052221.0)
///                 .maxMessages(373078076.0)
///                 .build())
///             .compression("none")
///             .copyMqttProperties("efpqgkycuawnzyubdyt")
///             .extendedLocation(ExtendedLocationPropertyArgs.builder()
///                 .name("an")
///                 .type("CustomLocation")
///                 .build())
///             .kafkaConnectorName("216VN")
///             .kafkaConnectorRef("icivjwerdspx")
///             .location("pavphpzfsgdudpyvufyebqh")
///             .mqName("-1-eD-7-J")
///             .partitionKeyProperty("c")
///             .partitionStrategy("default")
///             .resourceGroupName("rgiotoperationsmq")
///             .routes(KafkaRoutesArgs.builder()
///                 .kafkaToMqtt(KafkaToMqttRoutesArgs.builder()
///                     .consumerGroupId("usork")
///                     .kafkaTopic("ggwhwbsr")
///                     .mqttTopic("jwvmmhfqqkkmqrpslbdfmpbdetfu")
///                     .name("lrnvudysggscnqvmnlkrk")
///                     .qos(1)
///                     .build())
///                 .mqttToKafka(MqttToKafkaRoutesArgs.builder()
///                     .kafkaAcks("zero")
///                     .kafkaTopic("tellycttwulueqcpqf")
///                     .mqttTopic("raipkrcwvdnnflywhgjwnquarf")
///                     .name("qpshqcaxvxnyjzimvchngupzezdei")
///                     .qos(1)
///                     .sharedSubscription(KafkaSharedSubscriptionPropertiesArgs.builder()
///                         .groupMinimumShareNumber(216)
///                         .groupName("nwdyccsditzhchuksmi")
///                         .build())
///                     .build())
///                 .build())
///             .tags(Map.ofEntries(
///             ))
///             .topicMapName("q582ViEY-b7wF1OO2A")
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
/// const kafkaConnectorTopicMap = new azure_native.iotoperationsmq.KafkaConnectorTopicMap("kafkaConnectorTopicMap", {
///     batching: {
///         enabled: true,
///         latencyMs: 9110,
///         maxBytes: 732052221,
///         maxMessages: 373078076,
///     },
///     compression: azure_native.iotoperationsmq.KafkaMessageCompressionType.None,
///     copyMqttProperties: "efpqgkycuawnzyubdyt",
///     extendedLocation: {
///         name: "an",
///         type: azure_native.iotoperationsmq.ExtendedLocationType.CustomLocation,
///     },
///     kafkaConnectorName: "216VN",
///     kafkaConnectorRef: "icivjwerdspx",
///     location: "pavphpzfsgdudpyvufyebqh",
///     mqName: "-1-eD-7-J",
///     partitionKeyProperty: "c",
///     partitionStrategy: azure_native.iotoperationsmq.KafkaPartitionStrategy.Default,
///     resourceGroupName: "rgiotoperationsmq",
///     routes: [{
///         kafkaToMqtt: {
///             consumerGroupId: "usork",
///             kafkaTopic: "ggwhwbsr",
///             mqttTopic: "jwvmmhfqqkkmqrpslbdfmpbdetfu",
///             name: "lrnvudysggscnqvmnlkrk",
///             qos: 1,
///         },
///         mqttToKafka: {
///             kafkaAcks: azure_native.iotoperationsmq.KafkaAcks.Zero,
///             kafkaTopic: "tellycttwulueqcpqf",
///             mqttTopic: "raipkrcwvdnnflywhgjwnquarf",
///             name: "qpshqcaxvxnyjzimvchngupzezdei",
///             qos: 1,
///             sharedSubscription: {
///                 groupMinimumShareNumber: 216,
///                 groupName: "nwdyccsditzhchuksmi",
///             },
///         },
///     }],
///     tags: {},
///     topicMapName: "q582ViEY-b7wF1OO2A",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// kafka_connector_topic_map = azure_native.iotoperationsmq.KafkaConnectorTopicMap("kafkaConnectorTopicMap",
///     batching={
///         "enabled": True,
///         "latency_ms": 9110,
///         "max_bytes": float(732052221),
///         "max_messages": float(373078076),
///     },
///     compression=azure_native.iotoperationsmq.KafkaMessageCompressionType.NONE,
///     copy_mqtt_properties="efpqgkycuawnzyubdyt",
///     extended_location={
///         "name": "an",
///         "type": azure_native.iotoperationsmq.ExtendedLocationType.CUSTOM_LOCATION,
///     },
///     kafka_connector_name="216VN",
///     kafka_connector_ref="icivjwerdspx",
///     location="pavphpzfsgdudpyvufyebqh",
///     mq_name="-1-eD-7-J",
///     partition_key_property="c",
///     partition_strategy=azure_native.iotoperationsmq.KafkaPartitionStrategy.DEFAULT,
///     resource_group_name="rgiotoperationsmq",
///     routes=[{
///         "kafka_to_mqtt": {
///             "consumer_group_id": "usork",
///             "kafka_topic": "ggwhwbsr",
///             "mqtt_topic": "jwvmmhfqqkkmqrpslbdfmpbdetfu",
///             "name": "lrnvudysggscnqvmnlkrk",
///             "qos": 1,
///         },
///         "mqtt_to_kafka": {
///             "kafka_acks": azure_native.iotoperationsmq.KafkaAcks.ZERO,
///             "kafka_topic": "tellycttwulueqcpqf",
///             "mqtt_topic": "raipkrcwvdnnflywhgjwnquarf",
///             "name": "qpshqcaxvxnyjzimvchngupzezdei",
///             "qos": 1,
///             "shared_subscription": {
///                 "group_minimum_share_number": 216,
///                 "group_name": "nwdyccsditzhchuksmi",
///             },
///         },
///     }],
///     tags={},
///     topic_map_name="q582ViEY-b7wF1OO2A")
///
/// ```
///
/// ```yaml
/// resources:
///   kafkaConnectorTopicMap:
///     type: azure-native:iotoperationsmq:KafkaConnectorTopicMap
///     properties:
///       batching:
///         enabled: true
///         latencyMs: 9110
///         maxBytes: 7.32052221e+08
///         maxMessages: 3.73078076e+08
///       compression: none
///       copyMqttProperties: efpqgkycuawnzyubdyt
///       extendedLocation:
///         name: an
///         type: CustomLocation
///       kafkaConnectorName: 216VN
///       kafkaConnectorRef: icivjwerdspx
///       location: pavphpzfsgdudpyvufyebqh
///       mqName: -1-eD-7-J
///       partitionKeyProperty: c
///       partitionStrategy: default
///       resourceGroupName: rgiotoperationsmq
///       routes:
///         - kafkaToMqtt:
///             consumerGroupId: usork
///             kafkaTopic: ggwhwbsr
///             mqttTopic: jwvmmhfqqkkmqrpslbdfmpbdetfu
///             name: lrnvudysggscnqvmnlkrk
///             qos: 1
///           mqttToKafka:
///             kafkaAcks: zero
///             kafkaTopic: tellycttwulueqcpqf
///             mqttTopic: raipkrcwvdnnflywhgjwnquarf
///             name: qpshqcaxvxnyjzimvchngupzezdei
///             qos: 1
///             sharedSubscription:
///               groupMinimumShareNumber: 216
///               groupName: nwdyccsditzhchuksmi
///       tags: {}
///       topicMapName: q582ViEY-b7wF1OO2A
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
/// $ pulumi import azure-native:iotoperationsmq:KafkaConnectorTopicMap kdcutfmwzjixcfzbkpelp /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.IoTOperationsMQ/mq/{mqName}/kafkaConnector/{kafkaConnectorName}/topicMap/{topicMapName}
/// ```
class KafkaConnectorTopicMap extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The batching settings for kafka messages.
  late final pulumi.Output<KafkaTopicMapBatchingResponse?> batching;
  /// The compression to use for kafka messages.
  late final pulumi.Output<String?> compression;
  /// The flag to copy Mqtt properties.
  late final pulumi.Output<String?> copyMqttProperties;
  /// Extended Location
  late final pulumi.Output<ExtendedLocationPropertyResponse> extendedLocation;
  /// The kafkaConnector CRD it refers to.
  late final pulumi.Output<String> kafkaConnectorRef;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The partition to use for Kafka.
  late final pulumi.Output<String?> partitionKeyProperty;
  /// The partition strategy to use for Kafka.
  late final pulumi.Output<String?> partitionStrategy;
  /// The status of the last operation.
  late final pulumi.Output<String> provisioningState;
  /// The route details for Kafka connector.
  late final pulumi.Output<List<KafkaRoutesResponse>> routes;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [KafkaConnectorTopicMap].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [KafkaConnectorTopicMap]. {@macro pulumi_iotoperationsmq_kafka_connector_topic_map_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  KafkaConnectorTopicMap(
    String name, {
    KafkaConnectorTopicMapArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:iotoperationsmq:KafkaConnectorTopicMap',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    batching = registerOutput<KafkaTopicMapBatchingResponse?>('batching', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return KafkaTopicMapBatchingResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    compression = registerOutput<String?>('compression');
    copyMqttProperties = registerOutput<String?>('copyMqttProperties');
    extendedLocation = registerOutput<ExtendedLocationPropertyResponse>('extendedLocation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ExtendedLocationPropertyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    kafkaConnectorRef = registerOutput<String>('kafkaConnectorRef');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    partitionKeyProperty = registerOutput<String?>('partitionKeyProperty');
    partitionStrategy = registerOutput<String?>('partitionStrategy');
    provisioningState = registerOutput<String>('provisioningState');
    routes = registerOutput<List<KafkaRoutesResponse>>('routes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<KafkaRoutesResponse>(guardedValue, (value) => KafkaRoutesResponse.fromMap((value as Map).cast<String, dynamic>())); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [KafkaConnectorTopicMap] resource.
  KafkaConnectorTopicMap.reference(String urn)
    : super(
        'azure-native:iotoperationsmq:KafkaConnectorTopicMap',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    batching = registerOutput<KafkaTopicMapBatchingResponse?>('batching', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return KafkaTopicMapBatchingResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    compression = registerOutput<String?>('compression');
    copyMqttProperties = registerOutput<String?>('copyMqttProperties');
    extendedLocation = registerOutput<ExtendedLocationPropertyResponse>('extendedLocation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ExtendedLocationPropertyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    kafkaConnectorRef = registerOutput<String>('kafkaConnectorRef');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    partitionKeyProperty = registerOutput<String?>('partitionKeyProperty');
    partitionStrategy = registerOutput<String?>('partitionStrategy');
    provisioningState = registerOutput<String>('provisioningState');
    routes = registerOutput<List<KafkaRoutesResponse>>('routes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<KafkaRoutesResponse>(guardedValue, (value) => KafkaRoutesResponse.fromMap((value as Map).cast<String, dynamic>())); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }
}
