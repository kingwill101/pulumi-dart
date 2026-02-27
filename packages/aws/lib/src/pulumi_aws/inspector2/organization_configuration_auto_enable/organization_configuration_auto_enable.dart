// ignore_for_file: unused_element, unnecessary_cast

class OrganizationConfigurationAutoEnable {
  /// Whether code repository scans are automatically enabled for new members of your Amazon Inspector organization.
  final bool? codeRepository;

  /// Whether Amazon EC2 scans are automatically enabled for new members of your Amazon Inspector organization.
  final bool ec2;

  /// Whether Amazon ECR scans are automatically enabled for new members of your Amazon Inspector organization.
  final bool ecr;

  /// Whether Lambda Function scans are automatically enabled for new members of your Amazon Inspector organization.
  final bool? lambda;

  /// Whether AWS Lambda code scans are automatically enabled for new members of your Amazon Inspector organization. **Note:** Lambda code scanning requires Lambda standard scanning to be activated. Consequently, if you are setting this argument to `true`, you must also set the `lambda` argument to `true`. See [Scanning AWS Lambda functions with Amazon Inspector](https://docs.aws.amazon.com/inspector/latest/user/scanning-lambda.html#lambda-code-scans) for more information.
  final bool? lambdaCode;

  OrganizationConfigurationAutoEnable({
    this.codeRepository,
    required this.ec2,
    required this.ecr,
    this.lambda,
    this.lambdaCode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final codeRepositoryValue = codeRepository;
    if (codeRepositoryValue != null) {
      map['codeRepository'] = codeRepositoryValue;
    }
    map['ec2'] = ec2;
    map['ecr'] = ecr;
    final lambdaValue = lambda;
    if (lambdaValue != null) {
      map['lambda'] = lambdaValue;
    }
    final lambdaCodeValue = lambdaCode;
    if (lambdaCodeValue != null) {
      map['lambdaCode'] = lambdaCodeValue;
    }
    return map;
  }

  factory OrganizationConfigurationAutoEnable.fromMap(
      Map<String, dynamic> map) {
    return OrganizationConfigurationAutoEnable(
      codeRepository:
          map['codeRepository'] == null ? null : map['codeRepository'] as bool,
      ec2: map['ec2'] as bool,
      ecr: map['ecr'] as bool,
      lambda: map['lambda'] == null ? null : map['lambda'] as bool,
      lambdaCode: map['lambdaCode'] == null ? null : map['lambdaCode'] as bool,
    );
  }
}
