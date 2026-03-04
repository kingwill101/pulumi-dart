// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_slb_get_master_slave_server_groups_get_master_slave_server_groups_args_doc}
/// Arguments for getMasterSlaveServerGroups.
/// {@endtemplate}
/// {@macro pulumi_slb_get_master_slave_server_groups_get_master_slave_server_groups_args_doc}
class GetMasterSlaveServerGroupsArgs {
  /// A list of master slave server group IDs to filter results.
  final pulumi.Input<List<String>>? ids;

  /// ID of the SLB.
  final pulumi.Input<String> loadBalancerId;

  /// A regex string to filter results by master slave server group name.
  final pulumi.Input<String>? nameRegex;

  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetMasterSlaveServerGroupsArgs].
  /// [ids] A list of master slave server group IDs to filter results.
  /// [loadBalancerId] ID of the SLB.
  /// [nameRegex] A regex string to filter results by master slave server group name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetMasterSlaveServerGroupsArgs({
    this.ids,
    required this.loadBalancerId,
    this.nameRegex,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'loadBalancerId': loadBalancerId,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
    };
  }

  factory GetMasterSlaveServerGroupsArgs.fromMap(Map<String, dynamic> map) {
    return GetMasterSlaveServerGroupsArgs(
      ids: (() {
        final guardedValue = map['ids'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      loadBalancerId: pulumi.Input.fromValue(map['loadBalancerId'] as String),
      nameRegex: (() {
        final guardedValue = map['nameRegex'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
