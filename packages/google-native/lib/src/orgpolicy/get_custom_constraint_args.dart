// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_orgpolicy_v2_get_custom_constraint_args_doc}
/// Arguments for getCustomConstraint.
/// {@endtemplate}
/// {@macro pulumi_orgpolicy_v2_get_custom_constraint_args_doc}
class GetCustomConstraintArgs {
  final pulumi.Input<String> customConstraintId;
  final pulumi.Input<String> organizationId;

  /// Creates a new [GetCustomConstraintArgs].
  /// [customConstraintId] Required.
  /// [organizationId] Required.
  GetCustomConstraintArgs({
    required String customConstraintId,
    required String organizationId,
  }) : customConstraintId = pulumi.Input.asInput<String>(customConstraintId),
       organizationId = pulumi.Input.asInput<String>(organizationId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customConstraintId': customConstraintId,
      'organizationId': organizationId,
    };
  }

  factory GetCustomConstraintArgs.fromMap(Map<String, dynamic> map) {
    return GetCustomConstraintArgs(
      customConstraintId: map['customConstraintId'] as String,
      organizationId: map['organizationId'] as String,
    );
  }
}
