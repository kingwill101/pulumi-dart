// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'lf_tag_expression_expression.dart';

/// {@template pulumi_lakeformation_lf_tag_expression_lf_tag_expression_args_doc}
/// The set of arguments for LfTagExpression.
/// {@endtemplate}
/// {@macro pulumi_lakeformation_lf_tag_expression_lf_tag_expression_args_doc}
class LfTagExpressionArgs {
  /// ID of the Data Catalog. Defaults to the account ID if not specified.
  final pulumi.Input<String>? catalogId;
  /// Description of the LF-Tag Expression.
  final pulumi.Input<String>? description;
  /// A list of LF-Tag conditions (key-value pairs). See expression for more details.
  ///
  /// The following arguments are optional:
  final pulumi.Input<List<LfTagExpressionExpression>> expressions;
  /// Name of the LF-Tag Expression.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [LfTagExpressionArgs].
  /// [catalogId] ID of the Data Catalog. Defaults to the account ID if not specified.
  /// [description] Description of the LF-Tag Expression.
  /// [expressions] A list of LF-Tag conditions (key-value pairs). See expression for more details.
  /// [name] Name of the LF-Tag Expression.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  LfTagExpressionArgs({
    String? catalogId,
    String? description,
    required List<LfTagExpressionExpression> expressions,
    String? name,
    String? region,
  }) :
      catalogId = pulumi.Input.asOptionalInput<String>(catalogId),
      description = pulumi.Input.asOptionalInput<String>(description),
      expressions = pulumi.Input.asInput<List<LfTagExpressionExpression>>(expressions),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogId': ?catalogId,
      'description': ?description,
      'expressions': pulumi.Input.mapInputValue<List<LfTagExpressionExpression>, List<Map<String, dynamic>>>(expressions, (value) => pulumi.Input.encodeList<LfTagExpressionExpression, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'region': ?region,
    };
  }

  factory LfTagExpressionArgs.fromMap(Map<String, dynamic> map) {
    return LfTagExpressionArgs(
      catalogId: map['catalogId'] == null ? null : map['catalogId'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      expressions: pulumi.Input.decodeList<LfTagExpressionExpression>(map['expressions'], (value) => LfTagExpressionExpression.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}

