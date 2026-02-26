// ignore_for_file: unused_element, unnecessary_cast

import '../size_constraint_set_size_constraint_field_to_match/size_constraint_set_size_constraint_field_to_match.dart';

class SizeConstraintSetSizeConstraint {
  /// Type of comparison you want to perform, such as `EQ`, `NE`, `LT`, or `GT`. Please refer to the [documentation](https://docs.aws.amazon.com/waf/latest/APIReference/API_wafRegional_SizeConstraint.html) for a complete list of supported values.
  final String comparisonOperator;

  /// Parameter that specifies where in a web request to look for the size constraint.
  final SizeConstraintSetSizeConstraintFieldToMatch fieldToMatch;

  /// Size in bytes that you want to compare against the size of the specified <span pulumi-lang-nodejs="`fieldToMatch`" pulumi-lang-dotnet="`FieldToMatch`" pulumi-lang-go="`fieldToMatch`" pulumi-lang-python="`field_to_match`" pulumi-lang-yaml="`fieldToMatch`" pulumi-lang-java="`fieldToMatch`">`field_to_match`</span>. Valid values for <span pulumi-lang-nodejs="`size`" pulumi-lang-dotnet="`Size`" pulumi-lang-go="`size`" pulumi-lang-python="`size`" pulumi-lang-yaml="`size`" pulumi-lang-java="`size`">`size`</span> are between 0 and 21474836480 bytes (0 and 20 GB).
  final int size;

  /// Parameter is used to eliminate unusual formatting that attackers may use in web requests to bypass AWS WAF. When a transformation is specified, AWS WAF performs the transformation on the <span pulumi-lang-nodejs="`fieldToMatch`" pulumi-lang-dotnet="`FieldToMatch`" pulumi-lang-go="`fieldToMatch`" pulumi-lang-python="`field_to_match`" pulumi-lang-yaml="`fieldToMatch`" pulumi-lang-java="`fieldToMatch`">`field_to_match`</span> before inspecting the request for a match. Some examples of supported transformations are `CMD_LINE`, `HTML_ENTITY_DECODE`, and `NONE`. You can find a complete list of supported values in the [AWS WAF API Reference](http://docs.aws.amazon.com/waf/latest/APIReference/API_SizeConstraint.html#WAF-Type-SizeConstraint-TextTransformation).
  /// **Note:** If you choose `BODY` as the <span pulumi-lang-nodejs="`type`" pulumi-lang-dotnet="`Type`" pulumi-lang-go="`type`" pulumi-lang-python="`type`" pulumi-lang-yaml="`type`" pulumi-lang-java="`type`">`type`</span>, you must also choose `NONE` because CloudFront only forwards the first 8192 bytes for inspection.
  final String textTransformation;

  SizeConstraintSetSizeConstraint({
    required this.comparisonOperator,
    required this.fieldToMatch,
    required this.size,
    required this.textTransformation,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['comparisonOperator'] = comparisonOperator;
    map['fieldToMatch'] = fieldToMatch.toMap();
    map['size'] = size;
    map['textTransformation'] = textTransformation;
    return map;
  }

  factory SizeConstraintSetSizeConstraint.fromMap(Map<String, dynamic> map) {
    return SizeConstraintSetSizeConstraint(
      comparisonOperator: map['comparisonOperator'] as String,
      fieldToMatch: SizeConstraintSetSizeConstraintFieldToMatch.fromMap(
          (map['fieldToMatch'] as Map).cast<String, dynamic>()),
      size: map['size'] as int,
      textTransformation: map['textTransformation'] as String,
    );
  }
}
