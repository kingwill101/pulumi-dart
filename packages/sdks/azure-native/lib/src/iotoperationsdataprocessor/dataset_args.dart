// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataset_property_key.dart';
import 'extended_location.dart';

/// {@template pulumi_iotoperationsdataprocessor_dataset_args_doc}
/// The set of arguments for Dataset.
/// {@endtemplate}
/// {@macro pulumi_iotoperationsdataprocessor_dataset_args_doc}
class DatasetArgs {
  /// Name of dataset.
  final pulumi.Input<String>? datasetName;
  /// Detailed description of the Dataset.
  final pulumi.Input<String>? description;
  /// Edge location of the resource.
  final pulumi.Input<ExtendedLocation> extendedLocation;
  /// Name of instance.
  final pulumi.Input<String> instanceName;
  /// List of keys that can be used for joining on enrich.
  final pulumi.Input<Map<String, DatasetPropertyKey>>? keys;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Path to the payload in the message. Enrich will add only the payload to the enriched message, other fields will not be kept except for in the indexes.
  final pulumi.Input<String>? payload;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// Path to an RFC3339 timestamp in the message. If no path is provided, the ingestion time of the record is used for time-based joins.
  final pulumi.Input<String>? timestamp;
  /// Time to live for individual records.
  final pulumi.Input<String>? ttl;

  /// Creates a new [DatasetArgs].
  /// [datasetName] Name of dataset.
  /// [description] Detailed description of the Dataset.
  /// [extendedLocation] Edge location of the resource.
  /// [instanceName] Name of instance.
  /// [keys] List of keys that can be used for joining on enrich.
  /// [location] The geo-location where the resource lives
  /// [payload] Path to the payload in the message. Enrich will add only the payload to the enriched message, other fields will not be kept except for in the indexes.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  /// [timestamp] Path to an RFC3339 timestamp in the message. If no path is provided, the ingestion time of the record is used for time-based joins.
  /// [ttl] Time to live for individual records.
  DatasetArgs({
    this.datasetName,
    this.description,
    required this.extendedLocation,
    required this.instanceName,
    this.keys,
    this.location,
    this.payload,
    required this.resourceGroupName,
    this.tags,
    this.timestamp,
    this.ttl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasetName': ?datasetName,
      'description': ?description,
      'extendedLocation': pulumi.Input.mapInputValue<ExtendedLocation, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
      'instanceName': instanceName,
      'keys': ?pulumi.Input.mapOptionalInputValue<Map<String, DatasetPropertyKey>, Map<String, Map<String, dynamic>>>(keys, (value) => pulumi.Input.encodeMapValues<DatasetPropertyKey, Map<String, dynamic>>(value, (value) => value.toMap())),
      'location': ?location,
      'payload': ?payload,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'timestamp': ?timestamp,
      'ttl': ?ttl,
    };
  }

  factory DatasetArgs.fromMap(Map<String, dynamic> map) {
    return DatasetArgs(
      datasetName: map['datasetName'] == null ? null : (map['datasetName'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      extendedLocation: (ExtendedLocation.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>())).input(),
      instanceName: (map['instanceName'] as String).input(),
      keys: map['keys'] == null ? null : (pulumi.Input.decodeMapValues<DatasetPropertyKey>(map['keys'], (value) => DatasetPropertyKey.fromMap((value as Map).cast<String, dynamic>()))).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      payload: map['payload'] == null ? null : (map['payload'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      timestamp: map['timestamp'] == null ? null : (map['timestamp'] as String).input(),
      ttl: map['ttl'] == null ? null : (map['ttl'] as String).input(),
    );
  }
}

