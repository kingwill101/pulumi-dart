// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_managedops_get_managed_op_args_doc}
/// Arguments for getManagedOp.
/// {@endtemplate}
/// {@macro pulumi_managedops_get_managed_op_args_doc}
class GetManagedOpArgs {
  /// Name of the resource.
  final pulumi.Input<String> managedOpsName;

  /// Creates a new [GetManagedOpArgs].
  /// [managedOpsName] Name of the resource.
  GetManagedOpArgs({required this.managedOpsName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'managedOpsName': managedOpsName};
  }

  factory GetManagedOpArgs.fromMap(Map<String, dynamic> map) {
    return GetManagedOpArgs(
      managedOpsName: pulumi.Input.fromValue(map['managedOpsName'] as String),
    );
  }
}
