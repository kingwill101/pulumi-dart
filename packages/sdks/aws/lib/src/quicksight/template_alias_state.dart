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
    pulumi.Output<String>? aliasName,
    pulumi.Output<String>? arn,
    pulumi.Output<String>? awsAccountId,
    pulumi.Output<String>? region,
    pulumi.Output<String>? templateId,
    pulumi.Output<int>? templateVersionNumber,
  }) :
      aliasName = pulumi.Input.asOptionalInput<String>(aliasName),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      awsAccountId = pulumi.Input.asOptionalInput<String>(awsAccountId),
      region = pulumi.Input.asOptionalInput<String>(region),
      templateId = pulumi.Input.asOptionalInput<String>(templateId),
      templateVersionNumber = pulumi.Input.asOptionalInput<int>(templateVersionNumber);

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
      aliasName: map['aliasName'] == null ? null : pulumi.Output.create<String>(map['aliasName'] as String),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      awsAccountId: map['awsAccountId'] == null ? null : pulumi.Output.create<String>(map['awsAccountId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      templateId: map['templateId'] == null ? null : pulumi.Output.create<String>(map['templateId'] as String),
      templateVersionNumber: map['templateVersionNumber'] == null ? null : pulumi.Output.create<int>(map['templateVersionNumber'] as int),
    );
  }
}

