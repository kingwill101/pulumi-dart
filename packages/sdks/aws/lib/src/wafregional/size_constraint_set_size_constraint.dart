// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'size_constraint_set_size_constraint_field_to_match.dart';

class SizeConstraintSetSizeConstraint {
  /// The type of comparison you want to perform.
  /// e.g., `EQ`, `NE`, `LT`, `GT`.
  /// See [docs](https://docs.aws.amazon.com/waf/latest/APIReference/API_wafRegional_SizeConstraint.html) for all supported values.
  final pulumi.Input<String> comparisonOperator;
  /// Specifies where in a web request to look for the size constraint.
  final pulumi.Input<SizeConstraintSetSizeConstraintFieldToMatch> fieldToMatch;
  /// The size in bytes that you want to compare against the size of the specified `field_to_match`.
  /// Valid values are between 0 - 21474836480 bytes (0 - 20 GB).
  final pulumi.Input<int> size;
  /// Text transformations used to eliminate unusual formatting that attackers use in web requests in an effort to bypass AWS WAF.
  /// If you specify a transformation, AWS WAF performs the transformation on `field_to_match` before inspecting a request for a match.
  /// e.g., `CMD_LINE`, `HTML_ENTITY_DECODE` or `NONE`.
  /// See [docs](http://docs.aws.amazon.com/waf/latest/APIReference/API_SizeConstraint.html#WAF-Type-SizeConstraint-TextTransformation)
  /// for all supported values.
  /// **Note:** if you choose `BODY` as `type`, you must choose `NONE` because CloudFront forwards only the first 8192 bytes for inspection.
  final pulumi.Input<String> textTransformation;

  /// Creates a new [SizeConstraintSetSizeConstraint].
  /// [comparisonOperator] The type of comparison you want to perform.
  /// [fieldToMatch] Specifies where in a web request to look for the size constraint.
  /// [size] The size in bytes that you want to compare against the size of the specified `field_to_match`.
  /// [textTransformation] Text transformations used to eliminate unusual formatting that attackers use in web requests in an effort to bypass AWS WAF.
  const SizeConstraintSetSizeConstraint({
    required this.comparisonOperator,
    required this.fieldToMatch,
    required this.size,
    required this.textTransformation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comparisonOperator': comparisonOperator,
      'fieldToMatch': pulumi.Input.mapInputValue<SizeConstraintSetSizeConstraintFieldToMatch, Map<String, dynamic>>(fieldToMatch, (value) => value.toMap()),
      'size': size,
      'textTransformation': textTransformation,
    };
  }

  factory SizeConstraintSetSizeConstraint.fromMap(Map<String, dynamic> map) {
    return SizeConstraintSetSizeConstraint(
      comparisonOperator: pulumi.Input.fromValue(map['comparisonOperator'] as String),
      fieldToMatch: pulumi.Input.fromValue(SizeConstraintSetSizeConstraintFieldToMatch.fromMap((map['fieldToMatch']! as Map).cast<String, dynamic>())),
      size: pulumi.Input.fromValue(map['size'] as int),
      textTransformation: pulumi.Input.fromValue(map['textTransformation'] as String),
    );
  }
}

