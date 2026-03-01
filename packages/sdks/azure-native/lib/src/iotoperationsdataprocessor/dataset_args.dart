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
    pulumi.Output<String>? datasetName,
    pulumi.Output<String>? description,
    required pulumi.Output<ExtendedLocation> extendedLocation,
    required pulumi.Output<String> instanceName,
    pulumi.Output<Map<String, DatasetPropertyKey>>? keys,
    pulumi.Output<String>? location,
    pulumi.Output<String>? payload,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? timestamp,
    pulumi.Output<String>? ttl,
  }) :
      datasetName = pulumi.Input.asOptionalInput<String>(datasetName),
      description = pulumi.Input.asOptionalInput<String>(description),
      extendedLocation = pulumi.Input.asInput<ExtendedLocation>(extendedLocation),
      instanceName = pulumi.Input.asInput<String>(instanceName),
      keys = pulumi.Input.asOptionalInput<Map<String, DatasetPropertyKey>>(keys),
      location = pulumi.Input.asOptionalInput<String>(location),
      payload = pulumi.Input.asOptionalInput<String>(payload),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      timestamp = pulumi.Input.asOptionalInput<String>(timestamp),
      ttl = pulumi.Input.asOptionalInput<String>(ttl);

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
      datasetName: map['datasetName'] == null ? null : pulumi.Output.create<String>(map['datasetName'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      extendedLocation: pulumi.Output.create<ExtendedLocation>(ExtendedLocation.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>())),
      instanceName: pulumi.Output.create<String>(map['instanceName'] as String),
      keys: map['keys'] == null ? null : pulumi.Output.create<Map<String, DatasetPropertyKey>>(pulumi.Input.decodeMapValues<DatasetPropertyKey>(map['keys'], (value) => DatasetPropertyKey.fromMap((value as Map).cast<String, dynamic>()))),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      payload: map['payload'] == null ? null : pulumi.Output.create<String>(map['payload'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      timestamp: map['timestamp'] == null ? null : pulumi.Output.create<String>(map['timestamp'] as String),
      ttl: map['ttl'] == null ? null : pulumi.Output.create<String>(map['ttl'] as String),
    );
  }
}

