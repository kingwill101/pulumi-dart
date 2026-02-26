// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../size_constraint_set_size_constraint/size_constraint_set_size_constraint2.dart';

/// The set of arguments for SizeConstraintSet.
class SizeConstraintSetArgs2 {
  /// The name or description of the Size Constraint Set.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Specifies the parts of web requests that you want to inspect the size of.
  final Input<List<SizeConstraintSetSizeConstraint2>>? sizeConstraints;

  SizeConstraintSetArgs2({
    this.name,
    this.region,
    this.sizeConstraints,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final sizeConstraintsValue = sizeConstraints;
    if (sizeConstraintsValue != null) {
      map['sizeConstraints'] = Input.mapOptionalInputValue<
              List<SizeConstraintSetSizeConstraint2>,
              List<Map<String, dynamic>>>(
          sizeConstraintsValue,
          (value) => Input.encodeList<SizeConstraintSetSizeConstraint2,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    return map;
  }

  factory SizeConstraintSetArgs2.fromMap(Map<String, dynamic> map) {
    return SizeConstraintSetArgs2(
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      sizeConstraints:
          Input.asOptionalInput<List<SizeConstraintSetSizeConstraint2>>(
              map['sizeConstraints']),
    );
  }
}
