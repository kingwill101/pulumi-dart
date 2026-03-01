// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_ops_properties.dart';

/// {@template pulumi_managedops_managed_op_args_doc}
/// The set of arguments for ManagedOp.
/// {@endtemplate}
/// {@macro pulumi_managedops_managed_op_args_doc}
class ManagedOpArgs {
  /// Name of the resource.
  final pulumi.Input<String>? managedOpsName;
  /// The resource-specific properties for this resource.
  final pulumi.Input<ManagedOpsProperties>? properties;

  /// Creates a new [ManagedOpArgs].
  /// [managedOpsName] Name of the resource.
  /// [properties] The resource-specific properties for this resource.
  ManagedOpArgs({
    pulumi.Output<String>? managedOpsName,
    pulumi.Output<ManagedOpsProperties>? properties,
  }) :
      managedOpsName = pulumi.Input.asOptionalInput<String>(managedOpsName),
      properties = pulumi.Input.asOptionalInput<ManagedOpsProperties>(properties);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managedOpsName': ?managedOpsName,
      'properties': ?pulumi.Input.mapOptionalInputValue<ManagedOpsProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
    };
  }

  factory ManagedOpArgs.fromMap(Map<String, dynamic> map) {
    return ManagedOpArgs(
      managedOpsName: map['managedOpsName'] == null ? null : pulumi.Output.create<String>(map['managedOpsName'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<ManagedOpsProperties>(ManagedOpsProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
    );
  }
}

