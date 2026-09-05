// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'lf_tag_expression_expression.dart';

/// Input properties used for looking up and filtering LfTagExpression resources.
class LfTagExpressionState {
  /// ID of the Data Catalog. Defaults to the account ID if not specified.
  final pulumi.Input<String?>? catalogId;
  /// Description of the LF-Tag Expression.
  final pulumi.Input<String?>? description;
  /// A list of LF-Tag conditions (key-value pairs). See expression for more details.
  ///
  /// The following arguments are optional:
  final pulumi.Input<List<LfTagExpressionExpression>?>? expressions;
  /// Name of the LF-Tag Expression.
  final pulumi.Input<String?>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;

  /// Creates a new [LfTagExpressionState].
  /// [catalogId] ID of the Data Catalog. Defaults to the account ID if not specified.
  /// [description] Description of the LF-Tag Expression.
  /// [expressions] A list of LF-Tag conditions (key-value pairs). See expression for more details.
  /// [name] Name of the LF-Tag Expression.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const LfTagExpressionState({
    this.catalogId,
    this.description,
    this.expressions,
    this.name,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogId': ?catalogId,
      'description': ?description,
      'expressions': ?pulumi.Input.mapOptionalInputValue<List<LfTagExpressionExpression>, List<Map<String, dynamic>>>(expressions, (value) => pulumi.Input.encodeList<LfTagExpressionExpression, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'region': ?region,
    };
  }

  factory LfTagExpressionState.fromMap(Map<String, dynamic> map) {
    return LfTagExpressionState(
      catalogId: (() { final guardedValue = map['catalogId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expressions: (() { final guardedValue = map['expressions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<LfTagExpressionExpression>(guardedValue, (value) => LfTagExpressionExpression.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
