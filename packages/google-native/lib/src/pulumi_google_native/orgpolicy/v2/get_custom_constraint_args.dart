// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getCustomConstraint.
class GetCustomConstraintArgs {
  final pulumi.Input<String> customConstraintId;
  final pulumi.Input<String> organizationId;

  GetCustomConstraintArgs({
    required this.customConstraintId,
    required this.organizationId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['customConstraintId'] = customConstraintId;
    map['organizationId'] = organizationId;
    return map;
  }

  factory GetCustomConstraintArgs.fromMap(Map<String, dynamic> map) {
    return GetCustomConstraintArgs(
      customConstraintId:
          pulumi.Input.asInput<String>(map['customConstraintId']),
      organizationId: pulumi.Input.asInput<String>(map['organizationId']),
    );
  }
}
