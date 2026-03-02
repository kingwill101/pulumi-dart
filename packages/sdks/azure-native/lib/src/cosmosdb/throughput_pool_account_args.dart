// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cosmosdb_throughput_pool_account_args_doc}
/// The set of arguments for ThroughputPoolAccount.
/// {@endtemplate}
/// {@macro pulumi_cosmosdb_throughput_pool_account_args_doc}
class ThroughputPoolAccountArgs {
  /// The location of  global database account in the throughputPool.
  final pulumi.Input<String>? accountLocation;
  /// The resource identifier of global database account in the throughputPool.
  final pulumi.Input<String>? accountResourceIdentifier;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Cosmos DB global database account in a Throughput Pool
  final pulumi.Input<String>? throughputPoolAccountName;
  /// Cosmos DB Throughput Pool name.
  final pulumi.Input<String> throughputPoolName;

  /// Creates a new [ThroughputPoolAccountArgs].
  /// [accountLocation] The location of  global database account in the throughputPool.
  /// [accountResourceIdentifier] The resource identifier of global database account in the throughputPool.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [throughputPoolAccountName] Cosmos DB global database account in a Throughput Pool
  /// [throughputPoolName] Cosmos DB Throughput Pool name.
  ThroughputPoolAccountArgs({
    this.accountLocation,
    this.accountResourceIdentifier,
    required this.resourceGroupName,
    this.throughputPoolAccountName,
    required this.throughputPoolName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountLocation': ?accountLocation,
      'accountResourceIdentifier': ?accountResourceIdentifier,
      'resourceGroupName': resourceGroupName,
      'throughputPoolAccountName': ?throughputPoolAccountName,
      'throughputPoolName': throughputPoolName,
    };
  }

  factory ThroughputPoolAccountArgs.fromMap(Map<String, dynamic> map) {
    return ThroughputPoolAccountArgs(
      accountLocation: map['accountLocation'] == null ? null : (map['accountLocation']! as String).input(),
      accountResourceIdentifier: map['accountResourceIdentifier'] == null ? null : (map['accountResourceIdentifier']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      throughputPoolAccountName: map['throughputPoolAccountName'] == null ? null : (map['throughputPoolAccountName']! as String).input(),
      throughputPoolName: (map['throughputPoolName'] as String).input(),
    );
  }
}

