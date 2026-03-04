// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'size_constraint_set_size_constraint_field_to_match.dart';

class SizeConstraintSetSizeConstraint {
  /// Type of comparison you want to perform, such as `EQ`, `NE`, `LT`, or `GT`. Please refer to the [documentation](https://docs.aws.amazon.com/waf/latest/APIReference/API_wafRegional_SizeConstraint.html) for a complete list of supported values.
  final pulumi.Input<String> comparisonOperator;

  /// Parameter that specifies where in a web request to look for the size constraint.
  final pulumi.Input<SizeConstraintSetSizeConstraintFieldToMatch> fieldToMatch;

  /// Size in bytes that you want to compare against the size of the specified `field_to_match`. Valid values for `size` are between 0 and 21474836480 bytes (0 and 20 GB).
  final pulumi.Input<int> size;

  /// Parameter is used to eliminate unusual formatting that attackers may use in web requests to bypass AWS WAF. When a transformation is specified, AWS WAF performs the transformation on the `field_to_match` before inspecting the request for a match. Some examples of supported transformations are `CMD_LINE`, `HTML_ENTITY_DECODE`, and `NONE`. You can find a complete list of supported values in the [AWS WAF API Reference](http://docs.aws.amazon.com/waf/latest/APIReference/API_SizeConstraint.html#WAF-Type-SizeConstraint-TextTransformation).
  /// **Note:** If you choose `BODY` as the `type`, you must also choose `NONE` because CloudFront only forwards the first 8192 bytes for inspection.
  final pulumi.Input<String> textTransformation;

  /// Creates a new [SizeConstraintSetSizeConstraint].
  /// [comparisonOperator] Type of comparison you want to perform, such as `EQ`, `NE`, `LT`, or `GT`. Please refer to the [documentation](https://docs.aws.amazon.com/waf/latest/APIReference/API_wafRegional_SizeConstraint.html) for a complete list of supported values.
  /// [fieldToMatch] Parameter that specifies where in a web request to look for the size constraint.
  /// [size] Size in bytes that you want to compare against the size of the specified `field_to_match`. Valid values for `size` are between 0 and 21474836480 bytes (0 and 20 GB).
  /// [textTransformation] Parameter is used to eliminate unusual formatting that attackers may use in web requests to bypass AWS WAF. When a transformation is specified, AWS WAF performs the transformation on the `field_to_match` before inspecting the request for a match. Some examples of supported transformations are `CMD_LINE`, `HTML_ENTITY_DECODE`, and `NONE`. You can find a complete list of supported values in the [AWS WAF API Reference](http://docs.aws.amazon.com/waf/latest/APIReference/API_SizeConstraint.html#WAF-Type-SizeConstraint-TextTransformation).
  SizeConstraintSetSizeConstraint({
    required this.comparisonOperator,
    required this.fieldToMatch,
    required this.size,
    required this.textTransformation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comparisonOperator': comparisonOperator,
      'fieldToMatch':
          pulumi.Input.mapInputValue<
            SizeConstraintSetSizeConstraintFieldToMatch,
            Map<String, dynamic>
          >(fieldToMatch, (value) => value.toMap()),
      'size': size,
      'textTransformation': textTransformation,
    };
  }

  factory SizeConstraintSetSizeConstraint.fromMap(Map<String, dynamic> map) {
    return SizeConstraintSetSizeConstraint(
      comparisonOperator: pulumi.Input.fromValue(
        map['comparisonOperator'] as String,
      ),
      fieldToMatch: pulumi.Input.fromValue(
        SizeConstraintSetSizeConstraintFieldToMatch.fromMap(
          (map['fieldToMatch']! as Map).cast<String, dynamic>(),
        ),
      ),
      size: pulumi.Input.fromValue(map['size'] as int),
      textTransformation: pulumi.Input.fromValue(
        map['textTransformation'] as String,
      ),
    );
  }
}
