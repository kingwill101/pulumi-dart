// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_quicksight_template_alias_template_alias_args_doc}
/// The set of arguments for TemplateAlias.
/// {@endtemplate}
/// {@macro pulumi_quicksight_template_alias_template_alias_args_doc}
class TemplateAliasArgs {
  /// Display name of the template alias.
  final pulumi.Input<String> aliasName;
  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  final pulumi.Input<String>? awsAccountId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// ID of the template.
  final pulumi.Input<String> templateId;
  /// Version number of the template.
  ///
  /// The following arguments are optional:
  final pulumi.Input<int> templateVersionNumber;

  /// Creates a new [TemplateAliasArgs].
  /// [aliasName] Display name of the template alias.
  /// [awsAccountId] AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [templateId] ID of the template.
  /// [templateVersionNumber] Version number of the template.
  TemplateAliasArgs({
    required pulumi.Output<String> aliasName,
    pulumi.Output<String>? awsAccountId,
    pulumi.Output<String>? region,
    required pulumi.Output<String> templateId,
    required pulumi.Output<int> templateVersionNumber,
  }) :
      aliasName = pulumi.Input.asInput<String>(aliasName),
      awsAccountId = pulumi.Input.asOptionalInput<String>(awsAccountId),
      region = pulumi.Input.asOptionalInput<String>(region),
      templateId = pulumi.Input.asInput<String>(templateId),
      templateVersionNumber = pulumi.Input.asInput<int>(templateVersionNumber);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aliasName': aliasName,
      'awsAccountId': ?awsAccountId,
      'region': ?region,
      'templateId': templateId,
      'templateVersionNumber': templateVersionNumber,
    };
  }

  factory TemplateAliasArgs.fromMap(Map<String, dynamic> map) {
    return TemplateAliasArgs(
      aliasName: pulumi.Output.create<String>(map['aliasName'] as String),
      awsAccountId: map['awsAccountId'] == null ? null : pulumi.Output.create<String>(map['awsAccountId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      templateId: pulumi.Output.create<String>(map['templateId'] as String),
      templateVersionNumber: pulumi.Output.create<int>(map['templateVersionNumber'] as int),
    );
  }
}

