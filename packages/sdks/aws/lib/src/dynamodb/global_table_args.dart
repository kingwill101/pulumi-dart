// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'global_table_replica.dart';

/// {@template pulumi_dynamodb_global_table_global_table_args_doc}
/// The set of arguments for GlobalTable.
/// {@endtemplate}
/// {@macro pulumi_dynamodb_global_table_global_table_args_doc}
class GlobalTableArgs {
  /// The name of the global table. Must match underlying DynamoDB Table names in all regions.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Underlying DynamoDB Table. At least 1 replica must be defined. See below.
  final pulumi.Input<List<GlobalTableReplica>> replicas;

  /// Creates a new [GlobalTableArgs].
  /// [name] The name of the global table. Must match underlying DynamoDB Table names in all regions.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [replicas] Underlying DynamoDB Table. At least 1 replica must be defined. See below.
  GlobalTableArgs({
    this.name,
    this.region,
    required this.replicas,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'region': ?region,
      'replicas': pulumi.Input.mapInputValue<List<GlobalTableReplica>, List<Map<String, dynamic>>>(replicas, (value) => pulumi.Input.encodeList<GlobalTableReplica, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GlobalTableArgs.fromMap(Map<String, dynamic> map) {
    return GlobalTableArgs(
      name: map['name'] == null ? null : (map['name'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      replicas: (pulumi.Input.decodeList<GlobalTableReplica>(map['replicas'], (value) => GlobalTableReplica.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

