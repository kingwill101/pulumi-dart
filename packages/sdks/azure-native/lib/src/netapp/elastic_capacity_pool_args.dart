// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'elastic_capacity_pool_properties.dart';

/// {@template pulumi_netapp_elastic_capacity_pool_args_doc}
/// The set of arguments for ElasticCapacityPool.
/// {@endtemplate}
/// {@macro pulumi_netapp_elastic_capacity_pool_args_doc}
class ElasticCapacityPoolArgs {
  /// The name of the ElasticAccount
  final pulumi.Input<String> accountName;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The name of the ElasticCapacityPool
  final pulumi.Input<String>? poolName;
  /// The resource-specific properties for this resource.
  final pulumi.Input<ElasticCapacityPoolProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// The availability zones.
  final pulumi.Input<List<String>>? zones;

  /// Creates a new [ElasticCapacityPoolArgs].
  /// [accountName] The name of the ElasticAccount
  /// [location] The geo-location where the resource lives
  /// [poolName] The name of the ElasticCapacityPool
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  /// [zones] The availability zones.
  ElasticCapacityPoolArgs({
    required pulumi.Output<String> accountName,
    pulumi.Output<String>? location,
    pulumi.Output<String>? poolName,
    pulumi.Output<ElasticCapacityPoolProperties>? properties,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<List<String>>? zones,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      location = pulumi.Input.asOptionalInput<String>(location),
      poolName = pulumi.Input.asOptionalInput<String>(poolName),
      properties = pulumi.Input.asOptionalInput<ElasticCapacityPoolProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      zones = pulumi.Input.asOptionalInput<List<String>>(zones);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'location': ?location,
      'poolName': ?poolName,
      'properties': ?pulumi.Input.mapOptionalInputValue<ElasticCapacityPoolProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'zones': ?zones,
    };
  }

  factory ElasticCapacityPoolArgs.fromMap(Map<String, dynamic> map) {
    return ElasticCapacityPoolArgs(
      accountName: pulumi.Output.create<String>(map['accountName'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      poolName: map['poolName'] == null ? null : pulumi.Output.create<String>(map['poolName'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<ElasticCapacityPoolProperties>(ElasticCapacityPoolProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      zones: map['zones'] == null ? null : pulumi.Output.create<List<String>>((map['zones'] as List).cast<String>()),
    );
  }
}

