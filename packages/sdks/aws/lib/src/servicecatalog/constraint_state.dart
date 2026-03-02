// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Constraint resources.
class ConstraintState {
  /// Language code. Valid values: `en` (English), `jp` (Japanese), `zh` (Chinese). Default value is `en`.
  final pulumi.Input<String>? acceptLanguage;
  /// Description of the constraint.
  final pulumi.Input<String>? description;
  /// Owner of the constraint.
  final pulumi.Input<String>? owner;
  /// Constraint parameters in JSON format. The syntax depends on the constraint type. See details below.
  final pulumi.Input<String>? parameters;
  /// Portfolio identifier.
  final pulumi.Input<String>? portfolioId;
  /// Product identifier.
  final pulumi.Input<String>? productId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  final pulumi.Input<String>? status;
  /// Type of constraint. Valid values are `LAUNCH`, `NOTIFICATION`, `RESOURCE_UPDATE`, `STACKSET`, and `TEMPLATE`.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? type;

  /// Creates a new [ConstraintState].
  /// [acceptLanguage] Language code. Valid values: `en` (English), `jp` (Japanese), `zh` (Chinese). Default value is `en`.
  /// [description] Description of the constraint.
  /// [owner] Owner of the constraint.
  /// [parameters] Constraint parameters in JSON format. The syntax depends on the constraint type. See details below.
  /// [portfolioId] Portfolio identifier.
  /// [productId] Product identifier.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [status] Optional.
  /// [type] Type of constraint. Valid values are `LAUNCH`, `NOTIFICATION`, `RESOURCE_UPDATE`, `STACKSET`, and `TEMPLATE`.
  ConstraintState({
    this.acceptLanguage,
    this.description,
    this.owner,
    this.parameters,
    this.portfolioId,
    this.productId,
    this.region,
    this.status,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceptLanguage': ?acceptLanguage,
      'description': ?description,
      'owner': ?owner,
      'parameters': ?parameters,
      'portfolioId': ?portfolioId,
      'productId': ?productId,
      'region': ?region,
      'status': ?status,
      'type': ?type,
    };
  }

  factory ConstraintState.fromMap(Map<String, dynamic> map) {
    return ConstraintState(
      acceptLanguage: map['acceptLanguage'] == null ? null : (map['acceptLanguage'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      owner: map['owner'] == null ? null : (map['owner'] as String).input(),
      parameters: map['parameters'] == null ? null : (map['parameters'] as String).input(),
      portfolioId: map['portfolioId'] == null ? null : (map['portfolioId'] as String).input(),
      productId: map['productId'] == null ? null : (map['productId'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
    );
  }
}

