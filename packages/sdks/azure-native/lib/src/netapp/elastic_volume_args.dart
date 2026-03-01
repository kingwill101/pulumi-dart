// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'elastic_volume_properties.dart';

/// {@template pulumi_netapp_elastic_volume_args_doc}
/// The set of arguments for ElasticVolume.
/// {@endtemplate}
/// {@macro pulumi_netapp_elastic_volume_args_doc}
class ElasticVolumeArgs {
  /// The name of the ElasticAccount
  final pulumi.Input<String> accountName;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The name of the ElasticCapacityPool
  final pulumi.Input<String> poolName;
  /// The resource-specific properties for this resource.
  final pulumi.Input<ElasticVolumeProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// The name of the ElasticVolume
  final pulumi.Input<String>? volumeName;
  /// The availability zones.
  final pulumi.Input<List<String>>? zones;

  /// Creates a new [ElasticVolumeArgs].
  /// [accountName] The name of the ElasticAccount
  /// [location] The geo-location where the resource lives
  /// [poolName] The name of the ElasticCapacityPool
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  /// [volumeName] The name of the ElasticVolume
  /// [zones] The availability zones.
  ElasticVolumeArgs({
    required pulumi.Output<String> accountName,
    pulumi.Output<String>? location,
    required pulumi.Output<String> poolName,
    pulumi.Output<ElasticVolumeProperties>? properties,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? volumeName,
    pulumi.Output<List<String>>? zones,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      location = pulumi.Input.asOptionalInput<String>(location),
      poolName = pulumi.Input.asInput<String>(poolName),
      properties = pulumi.Input.asOptionalInput<ElasticVolumeProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      volumeName = pulumi.Input.asOptionalInput<String>(volumeName),
      zones = pulumi.Input.asOptionalInput<List<String>>(zones);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'location': ?location,
      'poolName': poolName,
      'properties': ?pulumi.Input.mapOptionalInputValue<ElasticVolumeProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'volumeName': ?volumeName,
      'zones': ?zones,
    };
  }

  factory ElasticVolumeArgs.fromMap(Map<String, dynamic> map) {
    return ElasticVolumeArgs(
      accountName: pulumi.Output.create<String>(map['accountName'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      poolName: pulumi.Output.create<String>(map['poolName'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<ElasticVolumeProperties>(ElasticVolumeProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      volumeName: map['volumeName'] == null ? null : pulumi.Output.create<String>(map['volumeName'] as String),
      zones: map['zones'] == null ? null : pulumi.Output.create<List<String>>((map['zones'] as List).cast<String>()),
    );
  }
}

