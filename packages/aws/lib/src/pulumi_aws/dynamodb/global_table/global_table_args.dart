// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../global_table_replica/global_table_replica.dart';

/// The set of arguments for GlobalTable.
class GlobalTableArgs {
  /// The name of the global table. Must match underlying DynamoDB Table names in all regions.
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Underlying DynamoDB Table. At least 1 replica must be defined. See below.
  final pulumi.Input<List<GlobalTableReplica>> replicas;

  GlobalTableArgs({
    this.name,
    this.region,
    required this.replicas,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['replicas'] = pulumi.Input.mapInputValue<List<GlobalTableReplica>,
            List<Map<String, dynamic>>>(
        replicas,
        (value) =>
            pulumi.Input.encodeList<GlobalTableReplica, Map<String, dynamic>>(
                value, (value) => value.toMap()));
    return map;
  }

  factory GlobalTableArgs.fromMap(Map<String, dynamic> map) {
    return GlobalTableArgs(
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      replicas: pulumi.Input.asInput<List<GlobalTableReplica>>(map['replicas']),
    );
  }
}
