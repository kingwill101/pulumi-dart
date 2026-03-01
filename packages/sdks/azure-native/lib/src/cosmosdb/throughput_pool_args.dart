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
    pulumi.Output<String>? location,
    pulumi.Output<int>? maxThroughput,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? throughputPoolName,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      maxThroughput = pulumi.Input.asOptionalInput<int>(maxThroughput),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      throughputPoolName = pulumi.Input.asOptionalInput<String>(throughputPoolName);

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
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      maxThroughput: map['maxThroughput'] == null ? null : pulumi.Output.create<int>(map['maxThroughput'] as int),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      throughputPoolName: map['throughputPoolName'] == null ? null : pulumi.Output.create<String>(map['throughputPoolName'] as String),
    );
  }
}

