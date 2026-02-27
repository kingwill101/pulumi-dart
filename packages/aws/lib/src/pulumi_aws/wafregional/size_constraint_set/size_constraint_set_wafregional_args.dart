// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../size_constraint_set_size_constraint/size_constraint_set_size_constraint_wafregional.dart';

/// The set of arguments for SizeConstraintSet.
class SizeConstraintSetWafregionalArgs {
  /// The name or description of the Size Constraint Set.
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Specifies the parts of web requests that you want to inspect the size of.
  final pulumi.Input<List<SizeConstraintSetSizeConstraintWafregional>>?
      sizeConstraints;

  SizeConstraintSetWafregionalArgs({
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
      map['sizeConstraints'] = pulumi.Input.mapOptionalInputValue<
              List<SizeConstraintSetSizeConstraintWafregional>,
              List<Map<String, dynamic>>>(
          sizeConstraintsValue,
          (value) => pulumi.Input.encodeList<
              SizeConstraintSetSizeConstraintWafregional,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    return map;
  }

  factory SizeConstraintSetWafregionalArgs.fromMap(Map<String, dynamic> map) {
    return SizeConstraintSetWafregionalArgs(
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      sizeConstraints: pulumi.Input.asOptionalInput<
              List<SizeConstraintSetSizeConstraintWafregional>>(
          map['sizeConstraints']),
    );
  }
}
