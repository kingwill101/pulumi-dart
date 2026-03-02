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
    required this.dataLakeConnectorName,
    required this.dataLakeConnectorRef,
    required this.extendedLocation,
    this.location,
    required this.mapping,
    required this.mqName,
    required this.resourceGroupName,
    this.tags,
    this.topicMapName,
  });

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
      dataLakeConnectorName: (map['dataLakeConnectorName'] as String).input(),
      dataLakeConnectorRef: (map['dataLakeConnectorRef'] as String).input(),
      extendedLocation: (ExtendedLocationProperty.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      mapping: (DataLakeConnectorMap.fromMap((map['mapping'] as Map).cast<String, dynamic>())).input(),
      mqName: (map['mqName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      topicMapName: map['topicMapName'] == null ? null : (map['topicMapName']! as String).input(),
    );
  }
}

