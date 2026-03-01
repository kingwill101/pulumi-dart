// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sql_get_managed_instance_key_args_doc}
/// Arguments for getManagedInstanceKey.
/// {@endtemplate}
/// {@macro pulumi_sql_get_managed_instance_key_args_doc}
class GetManagedInstanceKeyArgs {
  /// The name of the managed instance key to be retrieved.
  final pulumi.Input<String> keyName;
  /// The name of the managed instance.
  final pulumi.Input<String> managedInstanceName;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetManagedInstanceKeyArgs].
  /// [keyName] The name of the managed instance key to be retrieved.
  /// [managedInstanceName] The name of the managed instance.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  GetManagedInstanceKeyArgs({
    required String keyName,
    required String managedInstanceName,
    required String resourceGroupName,
  }) :
      keyName = pulumi.Input.asInput<String>(keyName),
      managedInstanceName = pulumi.Input.asInput<String>(managedInstanceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyName': keyName,
      'managedInstanceName': managedInstanceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetManagedInstanceKeyArgs.fromMap(Map<String, dynamic> map) {
    return GetManagedInstanceKeyArgs(
      keyName: map['keyName'] as String,
      managedInstanceName: map['managedInstanceName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

