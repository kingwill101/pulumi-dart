// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_lake_connector_map.dart';
import 'extended_location_property.dart';

/// {@template pulumi_iotoperationsmq_data_lake_connector_topic_map_args_doc}
/// The set of arguments for DataLakeConnectorTopicMap.
/// {@endtemplate}
/// {@macro pulumi_iotoperationsmq_data_lake_connector_topic_map_args_doc}
class DataLakeConnectorTopicMapArgs {
  /// Name of MQ dataLakeConnector resource
  final pulumi.Input<String> dataLakeConnectorName;
  /// DataLake Connector CRD to use.
  final pulumi.Input<String> dataLakeConnectorRef;
  /// Extended Location
  final pulumi.Input<ExtendedLocationProperty> extendedLocation;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// TopicMap for DataLake connector.
  final pulumi.Input<DataLakeConnectorMap> mapping;
  /// Name of MQ resource
  final pulumi.Input<String> mqName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// Name of MQ dataLakeConnector/topicMap resource
  final pulumi.Input<String>? topicMapName;

  /// Creates a new [DataLakeConnectorTopicMapArgs].
  /// [dataLakeConnectorName] Name of MQ dataLakeConnector resource
  /// [dataLakeConnectorRef] DataLake Connector CRD to use.
  /// [extendedLocation] Extended Location
  /// [location] The geo-location where the resource lives
  /// [mapping] TopicMap for DataLake connector.
  /// [mqName] Name of MQ resource
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  /// [topicMapName] Name of MQ dataLakeConnector/topicMap resource
  DataLakeConnectorTopicMapArgs({
    required pulumi.Output<String> dataLakeConnectorName,
    required pulumi.Output<String> dataLakeConnectorRef,
    required pulumi.Output<ExtendedLocationProperty> extendedLocation,
    pulumi.Output<String>? location,
    required pulumi.Output<DataLakeConnectorMap> mapping,
    required pulumi.Output<String> mqName,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? topicMapName,
  }) :
      dataLakeConnectorName = pulumi.Input.asInput<String>(dataLakeConnectorName),
      dataLakeConnectorRef = pulumi.Input.asInput<String>(dataLakeConnectorRef),
      extendedLocation = pulumi.Input.asInput<ExtendedLocationProperty>(extendedLocation),
      location = pulumi.Input.asOptionalInput<String>(location),
      mapping = pulumi.Input.asInput<DataLakeConnectorMap>(mapping),
      mqName = pulumi.Input.asInput<String>(mqName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      topicMapName = pulumi.Input.asOptionalInput<String>(topicMapName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataLakeConnectorName': dataLakeConnectorName,
      'dataLakeConnectorRef': dataLakeConnectorRef,
      'extendedLocation': pulumi.Input.mapInputValue<ExtendedLocationProperty, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
      'location': ?location,
      'mapping': pulumi.Input.mapInputValue<DataLakeConnectorMap, Map<String, dynamic>>(mapping, (value) => value.toMap()),
      'mqName': mqName,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'topicMapName': ?topicMapName,
    };
  }

  factory DataLakeConnectorTopicMapArgs.fromMap(Map<String, dynamic> map) {
    return DataLakeConnectorTopicMapArgs(
      dataLakeConnectorName: pulumi.Output.create<String>(map['dataLakeConnectorName'] as String),
      dataLakeConnectorRef: pulumi.Output.create<String>(map['dataLakeConnectorRef'] as String),
      extendedLocation: pulumi.Output.create<ExtendedLocationProperty>(ExtendedLocationProperty.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      mapping: pulumi.Output.create<DataLakeConnectorMap>(DataLakeConnectorMap.fromMap((map['mapping'] as Map).cast<String, dynamic>())),
      mqName: pulumi.Output.create<String>(map['mqName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      topicMapName: map['topicMapName'] == null ? null : pulumi.Output.create<String>(map['topicMapName'] as String),
    );
  }
}

