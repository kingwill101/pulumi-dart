// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../size_constraint_set_size_constraint/size_constraint_set_size_constraint.dart';

/// The set of arguments for SizeConstraintSet.
class SizeConstraintSetArgs {
  /// Name or description of the Size Constraint Set.
  final pulumi.Input<String>? name;

  /// Parts of web requests that you want to inspect the size of.
  final pulumi.Input<List<SizeConstraintSetSizeConstraint>>? sizeConstraints;

  SizeConstraintSetArgs({
    this.name,
    this.sizeConstraints,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final sizeConstraintsValue = sizeConstraints;
    if (sizeConstraintsValue != null) {
      map['sizeConstraints'] = pulumi.Input.mapOptionalInputValue<
              List<SizeConstraintSetSizeConstraint>,
              List<Map<String, dynamic>>>(
          sizeConstraintsValue,
          (value) => pulumi.Input.encodeList<SizeConstraintSetSizeConstraint,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    return map;
  }

  factory SizeConstraintSetArgs.fromMap(Map<String, dynamic> map) {
    return SizeConstraintSetArgs(
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      sizeConstraints:
          pulumi.Input.asOptionalInput<List<SizeConstraintSetSizeConstraint>>(
              map['sizeConstraints']),
    );
  }
}
