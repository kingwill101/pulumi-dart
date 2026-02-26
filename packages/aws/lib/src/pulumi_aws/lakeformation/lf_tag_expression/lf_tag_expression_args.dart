// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../lf_tag_expression_expression/lf_tag_expression_expression.dart';

/// The set of arguments for LfTagExpression.
class LfTagExpressionArgs {
  /// ID of the Data Catalog. Defaults to the account ID if not specified.
  final Input<String>? catalogId;

  /// Description of the LF-Tag Expression.
  final Input<String>? description;

  /// A list of LF-Tag conditions (key-value pairs). See expression for more details.
  ///
  /// The following arguments are optional:
  final Input<List<LfTagExpressionExpression>> expressions;

  /// Name of the LF-Tag Expression.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  LfTagExpressionArgs({
    this.catalogId,
    this.description,
    required this.expressions,
    this.name,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final catalogIdValue = catalogId;
    if (catalogIdValue != null) {
      map['catalogId'] = catalogIdValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['expressions'] = Input.mapInputValue<List<LfTagExpressionExpression>,
            List<Map<String, dynamic>>>(
        expressions,
        (value) =>
            Input.encodeList<LfTagExpressionExpression, Map<String, dynamic>>(
                value, (value) => value.toMap()));
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory LfTagExpressionArgs.fromMap(Map<String, dynamic> map) {
    return LfTagExpressionArgs(
      catalogId: Input.asOptionalInput<String>(map['catalogId']),
      description: Input.asOptionalInput<String>(map['description']),
      expressions:
          Input.asInput<List<LfTagExpressionExpression>>(map['expressions']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
