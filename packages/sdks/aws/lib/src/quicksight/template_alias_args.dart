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
    required this.aliasName,
    this.awsAccountId,
    this.region,
    required this.templateId,
    required this.templateVersionNumber,
  });

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
      aliasName: (map['aliasName'] as String).input(),
      awsAccountId: map['awsAccountId'] == null ? null : (map['awsAccountId'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      templateId: (map['templateId'] as String).input(),
      templateVersionNumber: (map['templateVersionNumber'] as int).input(),
    );
  }
}

