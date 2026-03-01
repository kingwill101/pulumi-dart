// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'size_constraint_set_size_constraint.dart';

/// {@template pulumi_wafregional_size_constraint_set_size_constraint_set_args_doc}
/// The set of arguments for SizeConstraintSet.
/// {@endtemplate}
/// {@macro pulumi_wafregional_size_constraint_set_size_constraint_set_args_doc}
class SizeConstraintSetArgs {
  /// The name or description of the Size Constraint Set.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Specifies the parts of web requests that you want to inspect the size of.
  final pulumi.Input<List<SizeConstraintSetSizeConstraint>>? sizeConstraints;

  /// Creates a new [SizeConstraintSetArgs].
  /// [name] The name or description of the Size Constraint Set.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [sizeConstraints] Specifies the parts of web requests that you want to inspect the size of.
  SizeConstraintSetArgs({
    String? name,
    String? region,
    List<SizeConstraintSetSizeConstraint>? sizeConstraints,
  }) :
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      sizeConstraints = pulumi.Input.asOptionalInput<List<SizeConstraintSetSizeConstraint>>(sizeConstraints);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'region': ?region,
      'sizeConstraints': ?pulumi.Input.mapOptionalInputValue<List<SizeConstraintSetSizeConstraint>, List<Map<String, dynamic>>>(sizeConstraints, (value) => pulumi.Input.encodeList<SizeConstraintSetSizeConstraint, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory SizeConstraintSetArgs.fromMap(Map<String, dynamic> map) {
    return SizeConstraintSetArgs(
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      sizeConstraints: map['sizeConstraints'] == null ? null : pulumi.Input.decodeList<SizeConstraintSetSizeConstraint>(map['sizeConstraints'], (value) => SizeConstraintSetSizeConstraint.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

