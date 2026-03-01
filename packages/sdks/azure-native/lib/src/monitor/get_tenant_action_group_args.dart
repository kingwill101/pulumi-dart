// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_monitor_get_tenant_action_group_args_doc}
/// Arguments for getTenantActionGroup.
/// {@endtemplate}
/// {@macro pulumi_monitor_get_tenant_action_group_args_doc}
class GetTenantActionGroupArgs {
  /// The management group id.
  final pulumi.Input<String> managementGroupId;
  /// The name of the action group.
  final pulumi.Input<String> tenantActionGroupName;

  /// Creates a new [GetTenantActionGroupArgs].
  /// [managementGroupId] The management group id.
  /// [tenantActionGroupName] The name of the action group.
  GetTenantActionGroupArgs({
    required pulumi.Output<String> managementGroupId,
    required pulumi.Output<String> tenantActionGroupName,
  }) :
      managementGroupId = pulumi.Input.asInput<String>(managementGroupId),
      tenantActionGroupName = pulumi.Input.asInput<String>(tenantActionGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managementGroupId': managementGroupId,
      'tenantActionGroupName': tenantActionGroupName,
    };
  }

  factory GetTenantActionGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetTenantActionGroupArgs(
      managementGroupId: pulumi.Output.create<String>(map['managementGroupId'] as String),
      tenantActionGroupName: pulumi.Output.create<String>(map['tenantActionGroupName'] as String),
    );
  }
}

