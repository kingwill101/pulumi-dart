// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'local_timestamp.dart';

/// {@template pulumi_timeseriesinsights_io_thub_event_source_args_doc}
/// The set of arguments for IoTHubEventSource.
/// {@endtemplate}
/// {@macro pulumi_timeseriesinsights_io_thub_event_source_args_doc}
class IoTHubEventSourceArgs {
  /// The name of the iot hub's consumer group that holds the partitions from which events will be read.
  final pulumi.Input<String> consumerGroupName;
  /// The name of the Time Series Insights environment associated with the specified resource group.
  final pulumi.Input<String> environmentName;
  /// Name of the event source.
  final pulumi.Input<String>? eventSourceName;
  /// The resource id of the event source in Azure Resource Manager.
  final pulumi.Input<String> eventSourceResourceId;
  /// The name of the iot hub.
  final pulumi.Input<String> iotHubName;
  /// The name of the Shared Access Policy key that grants the Time Series Insights service access to the iot hub. This shared access policy key must grant 'service connect' permissions to the iot hub.
  final pulumi.Input<String> keyName;
  /// The kind of the event source.
  /// Expected value is 'Microsoft.IoTHub'.
  final pulumi.Input<String> kind;
  /// An object that represents the local timestamp property. It contains the format of local timestamp that needs to be used and the corresponding timezone offset information. If a value isn't specified for localTimestamp, or if null, then the local timestamp will not be ingressed with the events.
  final pulumi.Input<LocalTimestamp>? localTimestamp;
  /// The location of the resource.
  final pulumi.Input<String>? location;
  /// Name of an Azure Resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The value of the Shared Access Policy key that grants the Time Series Insights service read access to the iot hub. This property is not shown in event source responses.
  final pulumi.Input<String> sharedAccessKey;
  /// Key-value pairs of additional properties for the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// ISO8601 UTC datetime with seconds precision (milliseconds are optional), specifying the date and time that will be the starting point for Events to be consumed.
  final pulumi.Input<String>? time;
  /// The event property that will be used as the event source's timestamp. If a value isn't specified for timestampPropertyName, or if null or empty-string is specified, the event creation time will be used.
  final pulumi.Input<String>? timestampPropertyName;
  /// The type of the ingressStartAt, It can be "EarliestAvailable", "EventSourceCreationTime", "CustomEnqueuedTime".
  final pulumi.Input<String>? type;

  /// Creates a new [IoTHubEventSourceArgs].
  /// [consumerGroupName] The name of the iot hub's consumer group that holds the partitions from which events will be read.
  /// [environmentName] The name of the Time Series Insights environment associated with the specified resource group.
  /// [eventSourceName] Name of the event source.
  /// [eventSourceResourceId] The resource id of the event source in Azure Resource Manager.
  /// [iotHubName] The name of the iot hub.
  /// [keyName] The name of the Shared Access Policy key that grants the Time Series Insights service access to the iot hub. This shared access policy key must grant 'service connect' permissions to the iot hub.
  /// [kind] The kind of the event source.
  /// [localTimestamp] An object that represents the local timestamp property. It contains the format of local timestamp that needs to be used and the corresponding timezone offset information. If a value isn't specified for localTimestamp, or if null, then the local timestamp will not be ingressed with the events.
  /// [location] The location of the resource.
  /// [resourceGroupName] Name of an Azure Resource group.
  /// [sharedAccessKey] The value of the Shared Access Policy key that grants the Time Series Insights service read access to the iot hub. This property is not shown in event source responses.
  /// [tags] Key-value pairs of additional properties for the resource.
  /// [time] ISO8601 UTC datetime with seconds precision (milliseconds are optional), specifying the date and time that will be the starting point for Events to be consumed.
  /// [timestampPropertyName] The event property that will be used as the event source's timestamp. If a value isn't specified for timestampPropertyName, or if null or empty-string is specified, the event creation time will be used.
  /// [type] The type of the ingressStartAt, It can be "EarliestAvailable", "EventSourceCreationTime", "CustomEnqueuedTime".
  IoTHubEventSourceArgs({
    required String consumerGroupName,
    required String environmentName,
    String? eventSourceName,
    required String eventSourceResourceId,
    required String iotHubName,
    required String keyName,
    required String kind,
    LocalTimestamp? localTimestamp,
    String? location,
    required String resourceGroupName,
    required String sharedAccessKey,
    Map<String, String>? tags,
    String? time,
    String? timestampPropertyName,
    String? type,
  }) :
      consumerGroupName = pulumi.Input.asInput<String>(consumerGroupName),
      environmentName = pulumi.Input.asInput<String>(environmentName),
      eventSourceName = pulumi.Input.asOptionalInput<String>(eventSourceName),
      eventSourceResourceId = pulumi.Input.asInput<String>(eventSourceResourceId),
      iotHubName = pulumi.Input.asInput<String>(iotHubName),
      keyName = pulumi.Input.asInput<String>(keyName),
      kind = pulumi.Input.asInput<String>(kind),
      localTimestamp = pulumi.Input.asOptionalInput<LocalTimestamp>(localTimestamp),
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sharedAccessKey = pulumi.Input.asInput<String>(sharedAccessKey),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      time = pulumi.Input.asOptionalInput<String>(time),
      timestampPropertyName = pulumi.Input.asOptionalInput<String>(timestampPropertyName),
      type = pulumi.Input.asOptionalInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consumerGroupName': consumerGroupName,
      'environmentName': environmentName,
      'eventSourceName': ?eventSourceName,
      'eventSourceResourceId': eventSourceResourceId,
      'iotHubName': iotHubName,
      'keyName': keyName,
      'kind': kind,
      'localTimestamp': ?pulumi.Input.mapOptionalInputValue<LocalTimestamp, Map<String, dynamic>>(localTimestamp, (value) => value.toMap()),
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'sharedAccessKey': sharedAccessKey,
      'tags': ?tags,
      'time': ?time,
      'timestampPropertyName': ?timestampPropertyName,
      'type': ?type,
    };
  }

  factory IoTHubEventSourceArgs.fromMap(Map<String, dynamic> map) {
    return IoTHubEventSourceArgs(
      consumerGroupName: map['consumerGroupName'] as String,
      environmentName: map['environmentName'] as String,
      eventSourceName: map['eventSourceName'] == null ? null : map['eventSourceName'] as String,
      eventSourceResourceId: map['eventSourceResourceId'] as String,
      iotHubName: map['iotHubName'] as String,
      keyName: map['keyName'] as String,
      kind: map['kind'] as String,
      localTimestamp: map['localTimestamp'] == null ? null : LocalTimestamp.fromMap((map['localTimestamp'] as Map).cast<String, dynamic>()),
      location: map['location'] == null ? null : map['location'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      sharedAccessKey: map['sharedAccessKey'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      time: map['time'] == null ? null : map['time'] as String,
      timestampPropertyName: map['timestampPropertyName'] == null ? null : map['timestampPropertyName'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

