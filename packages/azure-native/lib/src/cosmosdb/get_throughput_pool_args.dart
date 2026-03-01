// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cosmosdb_get_throughput_pool_args_doc}
/// Arguments for getThroughputPool.
/// {@endtemplate}
/// {@macro pulumi_cosmosdb_get_throughput_pool_args_doc}
class GetThroughputPoolArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Cosmos DB Throughput Pool name.
  final pulumi.Input<String> throughputPoolName;

  /// Creates a new [GetThroughputPoolArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [throughputPoolName] Cosmos DB Throughput Pool name.
  GetThroughputPoolArgs({
    required String resourceGroupName,
    required String throughputPoolName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      throughputPoolName = pulumi.Input.asInput<String>(throughputPoolName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'throughputPoolName': throughputPoolName,
    };
  }

  factory GetThroughputPoolArgs.fromMap(Map<String, dynamic> map) {
    return GetThroughputPoolArgs(
      resourceGroupName: map['resourceGroupName'] as String,
      throughputPoolName: map['throughputPoolName'] as String,
    );
  }
}

