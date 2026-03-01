// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicecatalog_get_constraint_get_constraint_args_doc}
/// Arguments for getConstraint.
/// {@endtemplate}
/// {@macro pulumi_servicecatalog_get_constraint_get_constraint_args_doc}
class GetConstraintArgs {
  /// Language code. Valid values: `en` (English), `jp` (Japanese), `zh` (Chinese). Default value is `en`.
  final pulumi.Input<String>? acceptLanguage;
  /// Description of the constraint.
  final pulumi.Input<String>? description;
  /// Constraint identifier.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> id;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetConstraintArgs].
  /// [acceptLanguage] Language code. Valid values: `en` (English), `jp` (Japanese), `zh` (Chinese). Default value is `en`.
  /// [description] Description of the constraint.
  /// [id] Constraint identifier.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetConstraintArgs({
    String? acceptLanguage,
    String? description,
    required String id,
    String? region,
  }) :
      acceptLanguage = pulumi.Input.asOptionalInput<String>(acceptLanguage),
      description = pulumi.Input.asOptionalInput<String>(description),
      id = pulumi.Input.asInput<String>(id),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceptLanguage': ?acceptLanguage,
      'description': ?description,
      'id': id,
      'region': ?region,
    };
  }

  factory GetConstraintArgs.fromMap(Map<String, dynamic> map) {
    return GetConstraintArgs(
      acceptLanguage: map['acceptLanguage'] == null ? null : map['acceptLanguage'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      id: map['id'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}

