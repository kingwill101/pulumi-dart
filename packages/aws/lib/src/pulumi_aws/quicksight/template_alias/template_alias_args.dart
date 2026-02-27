// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for TemplateAlias.
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

  TemplateAliasArgs({
    required this.aliasName,
    this.awsAccountId,
    this.region,
    required this.templateId,
    required this.templateVersionNumber,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['aliasName'] = aliasName;
    final awsAccountIdValue = awsAccountId;
    if (awsAccountIdValue != null) {
      map['awsAccountId'] = awsAccountIdValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['templateId'] = templateId;
    map['templateVersionNumber'] = templateVersionNumber;
    return map;
  }

  factory TemplateAliasArgs.fromMap(Map<String, dynamic> map) {
    return TemplateAliasArgs(
      aliasName: pulumi.Input.asInput<String>(map['aliasName']),
      awsAccountId: pulumi.Input.asOptionalInput<String>(map['awsAccountId']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      templateId: pulumi.Input.asInput<String>(map['templateId']),
      templateVersionNumber:
          pulumi.Input.asInput<int>(map['templateVersionNumber']),
    );
  }
}
