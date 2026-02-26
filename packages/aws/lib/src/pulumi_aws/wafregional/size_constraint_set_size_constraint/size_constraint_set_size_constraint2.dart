// ignore_for_file: unused_element, unnecessary_cast

import '../size_constraint_set_size_constraint_field_to_match/size_constraint_set_size_constraint_field_to_match2.dart';

class SizeConstraintSetSizeConstraint2 {
  /// The type of comparison you want to perform.
  /// e.g., `EQ`, `NE`, `LT`, `GT`.
  /// See [docs](https://docs.aws.amazon.com/waf/latest/APIReference/API_wafRegional_SizeConstraint.html) for all supported values.
  final String comparisonOperator;

  /// Specifies where in a web request to look for the size constraint.
  final SizeConstraintSetSizeConstraintFieldToMatch2 fieldToMatch;

  /// The size in bytes that you want to compare against the size of the specified <span pulumi-lang-nodejs="`fieldToMatch`" pulumi-lang-dotnet="`FieldToMatch`" pulumi-lang-go="`fieldToMatch`" pulumi-lang-python="`field_to_match`" pulumi-lang-yaml="`fieldToMatch`" pulumi-lang-java="`fieldToMatch`">`field_to_match`</span>.
  /// Valid values are between 0 - 21474836480 bytes (0 - 20 GB).
  final int size;

  /// Text transformations used to eliminate unusual formatting that attackers use in web requests in an effort to bypass AWS WAF.
  /// If you specify a transformation, AWS WAF performs the transformation on <span pulumi-lang-nodejs="`fieldToMatch`" pulumi-lang-dotnet="`FieldToMatch`" pulumi-lang-go="`fieldToMatch`" pulumi-lang-python="`field_to_match`" pulumi-lang-yaml="`fieldToMatch`" pulumi-lang-java="`fieldToMatch`">`field_to_match`</span> before inspecting a request for a match.
  /// e.g., `CMD_LINE`, `HTML_ENTITY_DECODE` or `NONE`.
  /// See [docs](http://docs.aws.amazon.com/waf/latest/APIReference/API_SizeConstraint.html#WAF-Type-SizeConstraint-TextTransformation)
  /// for all supported values.
  /// **Note:** if you choose `BODY` as <span pulumi-lang-nodejs="`type`" pulumi-lang-dotnet="`Type`" pulumi-lang-go="`type`" pulumi-lang-python="`type`" pulumi-lang-yaml="`type`" pulumi-lang-java="`type`">`type`</span>, you must choose `NONE` because CloudFront forwards only the first 8192 bytes for inspection.
  final String textTransformation;

  SizeConstraintSetSizeConstraint2({
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

  factory SizeConstraintSetSizeConstraint2.fromMap(Map<String, dynamic> map) {
    return SizeConstraintSetSizeConstraint2(
      comparisonOperator: map['comparisonOperator'] as String,
      fieldToMatch: SizeConstraintSetSizeConstraintFieldToMatch2.fromMap(
          (map['fieldToMatch'] as Map).cast<String, dynamic>()),
      size: map['size'] as int,
      textTransformation: map['textTransformation'] as String,
    );
  }
}
