// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_rds_db_node_db_node_args_doc}
/// The set of arguments for DbNode.
/// {@endtemplate}
/// {@macro pulumi_rds_db_node_db_node_args_doc}
class DbNodeArgs {
  /// The specification information of the node.
  final pulumi.Input<String> classCode;
  /// The Id of instance that can run database.
  final pulumi.Input<String> dbInstanceId;
  /// The zone ID of the node.
  final pulumi.Input<String> zoneId;

  /// Creates a new [DbNodeArgs].
  /// [classCode] The specification information of the node.
  /// [dbInstanceId] The Id of instance that can run database.
  /// [zoneId] The zone ID of the node.
  DbNodeArgs({
    required pulumi.Output<String> classCode,
    required pulumi.Output<String> dbInstanceId,
    required pulumi.Output<String> zoneId,
  }) :
      classCode = pulumi.Input.asInput<String>(classCode),
      dbInstanceId = pulumi.Input.asInput<String>(dbInstanceId),
      zoneId = pulumi.Input.asInput<String>(zoneId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'classCode': classCode,
      'dbInstanceId': dbInstanceId,
      'zoneId': zoneId,
    };
  }

  factory DbNodeArgs.fromMap(Map<String, dynamic> map) {
    return DbNodeArgs(
      classCode: pulumi.Output.create<String>(map['classCode'] as String),
      dbInstanceId: pulumi.Output.create<String>(map['dbInstanceId'] as String),
      zoneId: pulumi.Output.create<String>(map['zoneId'] as String),
    );
  }
}

