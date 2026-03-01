// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_mssql_get_failover_group_get_failover_group_args_doc}
/// Arguments for getFailoverGroup.
/// {@endtemplate}
/// {@macro pulumi_mssql_get_failover_group_get_failover_group_args_doc}
class GetFailoverGroupArgs {
  /// The name of the Failover Group.
  final pulumi.Input<String> name;
  /// The ID of the primary SQL Server where the Failover Group exists.
  final pulumi.Input<String> serverId;

  /// Creates a new [GetFailoverGroupArgs].
  /// [name] The name of the Failover Group.
  /// [serverId] The ID of the primary SQL Server where the Failover Group exists.
  GetFailoverGroupArgs({
    required String name,
    required String serverId,
  }) :
      name = pulumi.Input.asInput<String>(name),
      serverId = pulumi.Input.asInput<String>(serverId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'serverId': serverId,
    };
  }

  factory GetFailoverGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetFailoverGroupArgs(
      name: map['name'] as String,
      serverId: map['serverId'] as String,
    );
  }
}

