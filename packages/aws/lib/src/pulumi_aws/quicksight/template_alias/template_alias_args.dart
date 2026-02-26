// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for TemplateAlias.
class TemplateAliasArgs {
  /// Display name of the template alias.
  final Input<String> aliasName;

  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  final Input<String>? awsAccountId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// ID of the template.
  final Input<String> templateId;

  /// Version number of the template.
  ///
  /// The following arguments are optional:
  final Input<int> templateVersionNumber;

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
      aliasName: Input.asInput<String>(map['aliasName']),
      awsAccountId: Input.asOptionalInput<String>(map['awsAccountId']),
      region: Input.asOptionalInput<String>(map['region']),
      templateId: Input.asInput<String>(map['templateId']),
      templateVersionNumber: Input.asInput<int>(map['templateVersionNumber']),
    );
  }
}
