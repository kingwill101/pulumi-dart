// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for PrincipalPortfolioAssociation.
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

  PrincipalPortfolioAssociationArgs({
    this.acceptLanguage,
    required this.portfolioId,
    required this.principalArn,
    this.principalType,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final acceptLanguageValue = acceptLanguage;
    if (acceptLanguageValue != null) {
      map['acceptLanguage'] = acceptLanguageValue;
    }
    map['portfolioId'] = portfolioId;
    map['principalArn'] = principalArn;
    final principalTypeValue = principalType;
    if (principalTypeValue != null) {
      map['principalType'] = principalTypeValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory PrincipalPortfolioAssociationArgs.fromMap(Map<String, dynamic> map) {
    return PrincipalPortfolioAssociationArgs(
      acceptLanguage:
          pulumi.Input.asOptionalInput<String>(map['acceptLanguage']),
      portfolioId: pulumi.Input.asInput<String>(map['portfolioId']),
      principalArn: pulumi.Input.asInput<String>(map['principalArn']),
      principalType: pulumi.Input.asOptionalInput<String>(map['principalType']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
