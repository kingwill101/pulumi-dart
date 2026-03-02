// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'size_constraint_set_size_constraint.dart';

/// Input properties used for looking up and filtering SizeConstraintSet resources.
class SizeConstraintSetState {
  /// Amazon Resource Name (ARN).
  final pulumi.Input<String>? arn;
  /// Name or description of the Size Constraint Set.
  final pulumi.Input<String>? name;
  /// Parts of web requests that you want to inspect the size of.
  final pulumi.Input<List<SizeConstraintSetSizeConstraint>>? sizeConstraints;

  /// Creates a new [SizeConstraintSetState].
  /// [arn] Amazon Resource Name (ARN).
  /// [name] Name or description of the Size Constraint Set.
  /// [sizeConstraints] Parts of web requests that you want to inspect the size of.
  SizeConstraintSetState({
    this.arn,
    this.name,
    this.sizeConstraints,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'name': ?name,
      'sizeConstraints': ?pulumi.Input.mapOptionalInputValue<List<SizeConstraintSetSizeConstraint>, List<Map<String, dynamic>>>(sizeConstraints, (value) => pulumi.Input.encodeList<SizeConstraintSetSizeConstraint, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory SizeConstraintSetState.fromMap(Map<String, dynamic> map) {
    return SizeConstraintSetState(
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      sizeConstraints: map['sizeConstraints'] == null ? null : (pulumi.Input.decodeList<SizeConstraintSetSizeConstraint>(map['sizeConstraints'], (value) => SizeConstraintSetSizeConstraint.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

