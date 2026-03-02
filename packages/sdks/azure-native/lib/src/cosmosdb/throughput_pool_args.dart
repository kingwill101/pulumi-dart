// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cosmosdb_throughput_pool_args_doc}
/// The set of arguments for ThroughputPool.
/// {@endtemplate}
/// {@macro pulumi_cosmosdb_throughput_pool_args_doc}
class ThroughputPoolArgs {
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Value for throughput to be shared among CosmosDB resources in the pool.
  final pulumi.Input<int>? maxThroughput;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// Cosmos DB Throughput Pool name.
  final pulumi.Input<String>? throughputPoolName;

  /// Creates a new [ThroughputPoolArgs].
  /// [location] The geo-location where the resource lives
  /// [maxThroughput] Value for throughput to be shared among CosmosDB resources in the pool.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  /// [throughputPoolName] Cosmos DB Throughput Pool name.
  ThroughputPoolArgs({
    this.location,
    this.maxThroughput,
    required this.resourceGroupName,
    this.tags,
    this.throughputPoolName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'maxThroughput': ?maxThroughput,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'throughputPoolName': ?throughputPoolName,
    };
  }

  factory ThroughputPoolArgs.fromMap(Map<String, dynamic> map) {
    return ThroughputPoolArgs(
      location: map['location'] == null ? null : (map['location'] as String).input(),
      maxThroughput: map['maxThroughput'] == null ? null : (map['maxThroughput'] as int).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      throughputPoolName: map['throughputPoolName'] == null ? null : (map['throughputPoolName'] as String).input(),
    );
  }
}

