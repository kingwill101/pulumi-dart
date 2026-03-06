// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'global_table_replica.dart';

/// Input properties used for looking up and filtering GlobalTable resources.
class GlobalTableState {
  /// The ARN of the DynamoDB Global Table
  final pulumi.Input<String>? arn;
  /// The name of the global table. Must match underlying DynamoDB Table names in all regions.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Underlying DynamoDB Table. At least 1 replica must be defined. See below.
  final pulumi.Input<List<GlobalTableReplica>>? replicas;

  /// Creates a new [GlobalTableState].
  /// [arn] The ARN of the DynamoDB Global Table
  /// [name] The name of the global table. Must match underlying DynamoDB Table names in all regions.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [replicas] Underlying DynamoDB Table. At least 1 replica must be defined. See below.
  const GlobalTableState({
    this.arn,
    this.name,
    this.region,
    this.replicas,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'name': ?name,
      'region': ?region,
      'replicas': ?pulumi.Input.mapOptionalInputValue<List<GlobalTableReplica>, List<Map<String, dynamic>>>(replicas, (value) => pulumi.Input.encodeList<GlobalTableReplica, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GlobalTableState.fromMap(Map<String, dynamic> map) {
    return GlobalTableState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      replicas: (() { final guardedValue = map['replicas']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GlobalTableReplica>(guardedValue, (value) => GlobalTableReplica.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

