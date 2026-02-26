// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for PrincipalPortfolioAssociation.
class PrincipalPortfolioAssociationArgs {
  /// Language code. Valid values: <span pulumi-lang-nodejs="`en`" pulumi-lang-dotnet="`En`" pulumi-lang-go="`en`" pulumi-lang-python="`en`" pulumi-lang-yaml="`en`" pulumi-lang-java="`en`">`en`</span> (English), <span pulumi-lang-nodejs="`jp`" pulumi-lang-dotnet="`Jp`" pulumi-lang-go="`jp`" pulumi-lang-python="`jp`" pulumi-lang-yaml="`jp`" pulumi-lang-java="`jp`">`jp`</span> (Japanese), <span pulumi-lang-nodejs="`zh`" pulumi-lang-dotnet="`Zh`" pulumi-lang-go="`zh`" pulumi-lang-python="`zh`" pulumi-lang-yaml="`zh`" pulumi-lang-java="`zh`">`zh`</span> (Chinese). Default value is <span pulumi-lang-nodejs="`en`" pulumi-lang-dotnet="`En`" pulumi-lang-go="`en`" pulumi-lang-python="`en`" pulumi-lang-yaml="`en`" pulumi-lang-java="`en`">`en`</span>.
  final Input<String>? acceptLanguage;

  /// Portfolio identifier.
  final Input<String> portfolioId;

  /// Principal ARN.
  ///
  /// The following arguments are optional:
  final Input<String> principalArn;

  /// Principal type. Setting this argument empty (e.g., <span pulumi-lang-nodejs="`principalType " pulumi-lang-dotnet="`PrincipalType " pulumi-lang-go="`principalType " pulumi-lang-python="`principal_type " pulumi-lang-yaml="`principalType " pulumi-lang-java="`principalType ">`principal_type </span>= ""`) will result in an error. Valid values are `IAM` and `IAM_PATTERN`. Default is `IAM`.
  final Input<String>? principalType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

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
      acceptLanguage: Input.asOptionalInput<String>(map['acceptLanguage']),
      portfolioId: Input.asInput<String>(map['portfolioId']),
      principalArn: Input.asInput<String>(map['principalArn']),
      principalType: Input.asOptionalInput<String>(map['principalType']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
