// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cosmosdb_get_throughput_pool_account_args_doc}
/// Arguments for getThroughputPoolAccount.
/// {@endtemplate}
/// {@macro pulumi_cosmosdb_get_throughput_pool_account_args_doc}
class GetThroughputPoolAccountArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Cosmos DB global database account in a Throughput Pool
  final pulumi.Input<String> throughputPoolAccountName;
  /// Cosmos DB Throughput Pool name.
  final pulumi.Input<String> throughputPoolName;

  /// Creates a new [GetThroughputPoolAccountArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [throughputPoolAccountName] Cosmos DB global database account in a Throughput Pool
  /// [throughputPoolName] Cosmos DB Throughput Pool name.
  GetThroughputPoolAccountArgs({
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> throughputPoolAccountName,
    required pulumi.Output<String> throughputPoolName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      throughputPoolAccountName = pulumi.Input.asInput<String>(throughputPoolAccountName),
      throughputPoolName = pulumi.Input.asInput<String>(throughputPoolName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'throughputPoolAccountName': throughputPoolAccountName,
      'throughputPoolName': throughputPoolName,
    };
  }

  factory GetThroughputPoolAccountArgs.fromMap(Map<String, dynamic> map) {
    return GetThroughputPoolAccountArgs(
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      throughputPoolAccountName: pulumi.Output.create<String>(map['throughputPoolAccountName'] as String),
      throughputPoolName: pulumi.Output.create<String>(map['throughputPoolName'] as String),
    );
  }
}

