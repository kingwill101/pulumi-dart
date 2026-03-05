import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_lake_connector_map_response.dart';
import 'data_lake_connector_topic_map_args.dart';
import 'extended_location_property_response.dart';
import 'system_data_response.dart';

/// MQ dataLakeConnector/topicMap resource
///
/// Uses Azure REST API version 2023-10-04-preview. In version 2.x of the Azure Native provider, it used API version 2023-10-04-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### DataLakeConnectorTopicMap_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var dataLakeConnectorTopicMap = new AzureNative.IoTOperationsMQ.DataLakeConnectorTopicMap("dataLakeConnectorTopicMap", new()
///     {
///         DataLakeConnectorName = "E9gU89-1QnIG7-IP8qOQLV-",
///         DataLakeConnectorRef = "zirczjfua",
///         ExtendedLocation = new AzureNative.IoTOperationsMQ.Inputs.ExtendedLocationPropertyArgs
///         {
///             Name = "an",
///             Type = AzureNative.IoTOperationsMQ.ExtendedLocationType.CustomLocation,
///         },
///         Location = "wjmgeh",
///         Mapping = new AzureNative.IoTOperationsMQ.Inputs.DataLakeConnectorMapArgs
///         {
///             AllowedLatencySecs = 25407,
///             ClientId = "gyjduryceozwqyjdrxhrtwuw",
///             MaxMessagesPerBatch = 1581641880,
///             MessagePayloadType = "pwhpwzqlzlhdrozpqziipvjqrnipo",
///             MqttSourceTopic = "mtac",
///             Qos = 2,
///             Table = new AzureNative.IoTOperationsMQ.Inputs.DeltaTableArgs
///             {
///                 Schema = new[]
///                 {
///                     new AzureNative.IoTOperationsMQ.Inputs.DeltaTableSchemaArgs
///                     {
///                         Format = AzureNative.IoTOperationsMQ.DeltaTableFormatEnum.Boolean,
///                         Mapping = "lfnyjp",
///                         Name = "hejqncdsueoerueffbaqix",
///                         Optional = true,
///                     },
///                 },
///                 TableName = "qyvzigmefvxwyjqksofyrstn",
///                 TablePath = "cyrkvxsjhbhwjegmhzyixchkdnxe",
///             },
///         },
///         MqName = "rc-8Z--2m-MU",
///         ResourceGroupName = "rgiotoperationsmq",
///         Tags = null,
///         TopicMapName = "17-",
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
/// 		_, err := iotoperationsmq.NewDataLakeConnectorTopicMap(ctx, "dataLakeConnectorTopicMap", &iotoperationsmq.DataLakeConnectorTopicMapArgs{
/// 			DataLakeConnectorName: pulumi.String("E9gU89-1QnIG7-IP8qOQLV-"),
/// 			DataLakeConnectorRef:  pulumi.String("zirczjfua"),
/// 			ExtendedLocation: &iotoperationsmq.ExtendedLocationPropertyArgs{
/// 				Name: pulumi.String("an"),
/// 				Type: pulumi.String(iotoperationsmq.ExtendedLocationTypeCustomLocation),
/// 			},
/// 			Location: pulumi.String("wjmgeh"),
/// 			Mapping: &iotoperationsmq.DataLakeConnectorMapArgs{
/// 				AllowedLatencySecs:  pulumi.Int(25407),
/// 				ClientId:            pulumi.String("gyjduryceozwqyjdrxhrtwuw"),
/// 				MaxMessagesPerBatch: pulumi.Float64(1581641880),
/// 				MessagePayloadType:  pulumi.String("pwhpwzqlzlhdrozpqziipvjqrnipo"),
/// 				MqttSourceTopic:     pulumi.String("mtac"),
/// 				Qos:                 pulumi.Int(2),
/// 				Table: &iotoperationsmq.DeltaTableArgs{
/// 					Schema: iotoperationsmq.DeltaTableSchemaArray{
/// 						&iotoperationsmq.DeltaTableSchemaArgs{
/// 							Format:   pulumi.String(iotoperationsmq.DeltaTableFormatEnumBoolean),
/// 							Mapping:  pulumi.String("lfnyjp"),
/// 							Name:     pulumi.String("hejqncdsueoerueffbaqix"),
/// 							Optional: pulumi.Bool(true),
/// 						},
/// 					},
/// 					TableName: pulumi.String("qyvzigmefvxwyjqksofyrstn"),
/// 					TablePath: pulumi.String("cyrkvxsjhbhwjegmhzyixchkdnxe"),
/// 				},
/// 			},
/// 			MqName:            pulumi.String("rc-8Z--2m-MU"),
/// 			ResourceGroupName: pulumi.String("rgiotoperationsmq"),
/// 			Tags:              pulumi.StringMap{},
/// 			TopicMapName:      pulumi.String("17-"),
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
/// import com.pulumi.azurenative.iotoperationsmq.DataLakeConnectorTopicMap;
/// import com.pulumi.azurenative.iotoperationsmq.DataLakeConnectorTopicMapArgs;
/// import com.pulumi.azurenative.iotoperationsmq.inputs.ExtendedLocationPropertyArgs;
/// import com.pulumi.azurenative.iotoperationsmq.inputs.DataLakeConnectorMapArgs;
/// import com.pulumi.azurenative.iotoperationsmq.inputs.DeltaTableArgs;
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
///         var dataLakeConnectorTopicMap = new DataLakeConnectorTopicMap("dataLakeConnectorTopicMap", DataLakeConnectorTopicMapArgs.builder()
///             .dataLakeConnectorName("E9gU89-1QnIG7-IP8qOQLV-")
///             .dataLakeConnectorRef("zirczjfua")
///             .extendedLocation(ExtendedLocationPropertyArgs.builder()
///                 .name("an")
///                 .type("CustomLocation")
///                 .build())
///             .location("wjmgeh")
///             .mapping(DataLakeConnectorMapArgs.builder()
///                 .allowedLatencySecs(25407)
///                 .clientId("gyjduryceozwqyjdrxhrtwuw")
///                 .maxMessagesPerBatch(1581641880.0)
///                 .messagePayloadType("pwhpwzqlzlhdrozpqziipvjqrnipo")
///                 .mqttSourceTopic("mtac")
///                 .qos(2)
///                 .table(DeltaTableArgs.builder()
///                     .schema(DeltaTableSchemaArgs.builder()
///                         .format("boolean")
///                         .mapping("lfnyjp")
///                         .name("hejqncdsueoerueffbaqix")
///                         .optional(true)
///                         .build())
///                     .tableName("qyvzigmefvxwyjqksofyrstn")
///                     .tablePath("cyrkvxsjhbhwjegmhzyixchkdnxe")
///                     .build())
///                 .build())
///             .mqName("rc-8Z--2m-MU")
///             .resourceGroupName("rgiotoperationsmq")
///             .tags(Map.ofEntries(
///             ))
///             .topicMapName("17-")
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
/// const dataLakeConnectorTopicMap = new azure_native.iotoperationsmq.DataLakeConnectorTopicMap("dataLakeConnectorTopicMap", {
///     dataLakeConnectorName: "E9gU89-1QnIG7-IP8qOQLV-",
///     dataLakeConnectorRef: "zirczjfua",
///     extendedLocation: {
///         name: "an",
///         type: azure_native.iotoperationsmq.ExtendedLocationType.CustomLocation,
///     },
///     location: "wjmgeh",
///     mapping: {
///         allowedLatencySecs: 25407,
///         clientId: "gyjduryceozwqyjdrxhrtwuw",
///         maxMessagesPerBatch: 1581641880,
///         messagePayloadType: "pwhpwzqlzlhdrozpqziipvjqrnipo",
///         mqttSourceTopic: "mtac",
///         qos: 2,
///         table: {
///             schema: [{
///                 format: azure_native.iotoperationsmq.DeltaTableFormatEnum.Boolean,
///                 mapping: "lfnyjp",
///                 name: "hejqncdsueoerueffbaqix",
///                 optional: true,
///             }],
///             tableName: "qyvzigmefvxwyjqksofyrstn",
///             tablePath: "cyrkvxsjhbhwjegmhzyixchkdnxe",
///         },
///     },
///     mqName: "rc-8Z--2m-MU",
///     resourceGroupName: "rgiotoperationsmq",
///     tags: {},
///     topicMapName: "17-",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// data_lake_connector_topic_map = azure_native.iotoperationsmq.DataLakeConnectorTopicMap("dataLakeConnectorTopicMap",
///     data_lake_connector_name="E9gU89-1QnIG7-IP8qOQLV-",
///     data_lake_connector_ref="zirczjfua",
///     extended_location={
///         "name": "an",
///         "type": azure_native.iotoperationsmq.ExtendedLocationType.CUSTOM_LOCATION,
///     },
///     location="wjmgeh",
///     mapping={
///         "allowed_latency_secs": 25407,
///         "client_id": "gyjduryceozwqyjdrxhrtwuw",
///         "max_messages_per_batch": 1581641880,
///         "message_payload_type": "pwhpwzqlzlhdrozpqziipvjqrnipo",
///         "mqtt_source_topic": "mtac",
///         "qos": 2,
///         "table": {
///             "schema": [{
///                 "format": azure_native.iotoperationsmq.DeltaTableFormatEnum.BOOLEAN,
///                 "mapping": "lfnyjp",
///                 "name": "hejqncdsueoerueffbaqix",
///                 "optional": True,
///             }],
///             "table_name": "qyvzigmefvxwyjqksofyrstn",
///             "table_path": "cyrkvxsjhbhwjegmhzyixchkdnxe",
///         },
///     },
///     mq_name="rc-8Z--2m-MU",
///     resource_group_name="rgiotoperationsmq",
///     tags={},
///     topic_map_name="17-")
///
/// ```
///
/// ```yaml
/// resources:
///   dataLakeConnectorTopicMap:
///     type: azure-native:iotoperationsmq:DataLakeConnectorTopicMap
///     properties:
///       dataLakeConnectorName: E9gU89-1QnIG7-IP8qOQLV-
///       dataLakeConnectorRef: zirczjfua
///       extendedLocation:
///         name: an
///         type: CustomLocation
///       location: wjmgeh
///       mapping:
///         allowedLatencySecs: 25407
///         clientId: gyjduryceozwqyjdrxhrtwuw
///         maxMessagesPerBatch: 1.58164188e+09
///         messagePayloadType: pwhpwzqlzlhdrozpqziipvjqrnipo
///         mqttSourceTopic: mtac
///         qos: 2
///         table:
///           schema:
///             - format: boolean
///               mapping: lfnyjp
///               name: hejqncdsueoerueffbaqix
///               optional: true
///           tableName: qyvzigmefvxwyjqksofyrstn
///           tablePath: cyrkvxsjhbhwjegmhzyixchkdnxe
///       mqName: rc-8Z--2m-MU
///       resourceGroupName: rgiotoperationsmq
///       tags: {}
///       topicMapName: 17-
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
/// $ pulumi import azure-native:iotoperationsmq:DataLakeConnectorTopicMap l /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.IoTOperationsMQ/mq/{mqName}/dataLakeConnector/{dataLakeConnectorName}/topicMap/{topicMapName}
/// ```
class DataLakeConnectorTopicMap extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// DataLake Connector CRD to use.
  late final pulumi.Output<String> dataLakeConnectorRef;

  /// Extended Location
  late final pulumi.Output<ExtendedLocationPropertyResponse> extendedLocation;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// TopicMap for DataLake connector.
  late final pulumi.Output<DataLakeConnectorMapResponse> mapping;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The status of the last operation.
  late final pulumi.Output<String> provisioningState;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [DataLakeConnectorTopicMap].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DataLakeConnectorTopicMap]. {@macro pulumi_iotoperationsmq_data_lake_connector_topic_map_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DataLakeConnectorTopicMap(
    String name, {
    DataLakeConnectorTopicMapArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:iotoperationsmq:DataLakeConnectorTopicMap',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    dataLakeConnectorRef = registerOutput<String>('dataLakeConnectorRef');
    extendedLocation = registerOutput<ExtendedLocationPropertyResponse>(
      'extendedLocation',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ExtendedLocationPropertyResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    location = registerOutput<String>('location');
    mapping = registerOutput<DataLakeConnectorMapResponse>(
      'mapping',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return DataLakeConnectorMapResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>(
      'systemData',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SystemDataResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
