// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering TemplateAlias resources.
class TemplateAliasState {
  /// Display name of the template alias.
  final pulumi.Input<String>? aliasName;
  /// Amazon Resource Name (ARN) of the template alias.
  final pulumi.Input<String>? arn;
  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  final pulumi.Input<String>? awsAccountId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// ID of the template.
  final pulumi.Input<String>? templateId;
  /// Version number of the template.
  ///
  /// The following arguments are optional:
  final pulumi.Input<int>? templateVersionNumber;

  /// Creates a new [TemplateAliasState].
  /// [aliasName] Display name of the template alias.
  /// [arn] Amazon Resource Name (ARN) of the template alias.
  /// [awsAccountId] AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [templateId] ID of the template.
  /// [templateVersionNumber] Version number of the template.
  TemplateAliasState({
    this.aliasName,
    this.arn,
    this.awsAccountId,
    this.region,
    this.templateId,
    this.templateVersionNumber,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aliasName': ?aliasName,
      'arn': ?arn,
      'awsAccountId': ?awsAccountId,
      'region': ?region,
      'templateId': ?templateId,
      'templateVersionNumber': ?templateVersionNumber,
    };
  }

  factory TemplateAliasState.fromMap(Map<String, dynamic> map) {
    return TemplateAliasState(
      aliasName: map['aliasName'] == null ? null : (map['aliasName'] as String).input(),
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      awsAccountId: map['awsAccountId'] == null ? null : (map['awsAccountId'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      templateId: map['templateId'] == null ? null : (map['templateId'] as String).input(),
      templateVersionNumber: map['templateVersionNumber'] == null ? null : (map['templateVersionNumber'] as int).input(),
    );
  }
}

