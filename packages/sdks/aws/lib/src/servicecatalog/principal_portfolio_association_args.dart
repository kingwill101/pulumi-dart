// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicecatalog_principal_portfolio_association_principal_portfolio_association_args_doc}
/// The set of arguments for PrincipalPortfolioAssociation.
/// {@endtemplate}
/// {@macro pulumi_servicecatalog_principal_portfolio_association_principal_portfolio_association_args_doc}
class PrincipalPortfolioAssociationArgs {
  /// Language code. Valid values: `en` (English), `jp` (Japanese), `zh` (Chinese). Default value is `en`.
  final pulumi.Input<String>? acceptLanguage;
  /// Portfolio identifier.
  final pulumi.Input<String> portfolioId;
  /// Principal ARN.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> principalArn;
  /// Principal type. Setting this argument empty (e.g., `principal_type = ""`) will result in an error. Valid values are `IAM` and `IAM_PATTERN`. Default is `IAM`.
  final pulumi.Input<String>? principalType;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [PrincipalPortfolioAssociationArgs].
  /// [acceptLanguage] Language code. Valid values: `en` (English), `jp` (Japanese), `zh` (Chinese). Default value is `en`.
  /// [portfolioId] Portfolio identifier.
  /// [principalArn] Principal ARN.
  /// [principalType] Principal type. Setting this argument empty (e.g., `principal_type = ""`) will result in an error. Valid values are `IAM` and `IAM_PATTERN`. Default is `IAM`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  PrincipalPortfolioAssociationArgs({
    pulumi.Output<String>? acceptLanguage,
    required pulumi.Output<String> portfolioId,
    required pulumi.Output<String> principalArn,
    pulumi.Output<String>? principalType,
    pulumi.Output<String>? region,
  }) :
      acceptLanguage = pulumi.Input.asOptionalInput<String>(acceptLanguage),
      portfolioId = pulumi.Input.asInput<String>(portfolioId),
      principalArn = pulumi.Input.asInput<String>(principalArn),
      principalType = pulumi.Input.asOptionalInput<String>(principalType),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceptLanguage': ?acceptLanguage,
      'portfolioId': portfolioId,
      'principalArn': principalArn,
      'principalType': ?principalType,
      'region': ?region,
    };
  }

  factory PrincipalPortfolioAssociationArgs.fromMap(Map<String, dynamic> map) {
    return PrincipalPortfolioAssociationArgs(
      acceptLanguage: map['acceptLanguage'] == null ? null : pulumi.Output.create<String>(map['acceptLanguage'] as String),
      portfolioId: pulumi.Output.create<String>(map['portfolioId'] as String),
      principalArn: pulumi.Output.create<String>(map['principalArn'] as String),
      principalType: map['principalType'] == null ? null : pulumi.Output.create<String>(map['principalType'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

