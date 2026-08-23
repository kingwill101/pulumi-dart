// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_customproviders_association_args_doc}
/// The set of arguments for Association.
/// {@endtemplate}
/// {@macro pulumi_customproviders_association_args_doc}
class AssociationArgs {
  /// The name of the association.
  final pulumi.Input<String>? associationName;
  /// The scope of the association. The scope can be any valid REST resource instance. For example, use '/subscriptions/{subscription-id}/resourceGroups/{resource-group-name}/providers/Microsoft.Compute/virtualMachines/{vm-name}' for a virtual machine resource.
  final pulumi.Input<String> scope;
  /// The REST resource instance of the target resource for this association.
  final pulumi.Input<String>? targetResourceId;

  /// Creates a new [AssociationArgs].
  /// [associationName] The name of the association.
  /// [scope] The scope of the association. The scope can be any valid REST resource instance. For example, use '/subscriptions/{subscription-id}/resourceGroups/{resource-group-name}/providers/Microsoft.Compute/virtualMachines/{vm-name}' for a virtual machine resource.
  /// [targetResourceId] The REST resource instance of the target resource for this association.
  const AssociationArgs({
    this.associationName,
    required this.scope,
    this.targetResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'associationName': ?associationName,
      'scope': scope,
      'targetResourceId': ?targetResourceId,
    };
  }

  factory AssociationArgs.fromMap(Map<String, dynamic> map) {
    return AssociationArgs(
      associationName: (() { final guardedValue = map['associationName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scope: pulumi.Input.fromValue(map['scope'] as String),
      targetResourceId: (() { final guardedValue = map['targetResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
