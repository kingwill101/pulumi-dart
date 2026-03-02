// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_rds_whitelist_template_whitelist_template_args_doc}
/// The set of arguments for WhitelistTemplate.
/// {@endtemplate}
/// {@macro pulumi_rds_whitelist_template_whitelist_template_args_doc}
class WhitelistTemplateArgs {
  /// IP whitelist, multiple IP addresses should be separated by commas (,) and cannot be duplicated.Supports the following two formats:
  /// - IP address format, for example: 10.23.XX.XX.
  /// - CIDR format, for example: 10.23.XX.XX/24 (no inter domain routing, 24 represents the length of the prefix in the address, ranging from 1 to 32).
  final pulumi.Input<String> ipWhiteList;
  /// Whitelist template name. Passed in when creating a template, and cannot have the same name under the same account, starting with a letter.
  final pulumi.Input<String> templateName;

  /// Creates a new [WhitelistTemplateArgs].
  /// [ipWhiteList] IP whitelist, multiple IP addresses should be separated by commas (,) and cannot be duplicated.Supports the following two formats:
  /// [templateName] Whitelist template name. Passed in when creating a template, and cannot have the same name under the same account, starting with a letter.
  WhitelistTemplateArgs({
    required this.ipWhiteList,
    required this.templateName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipWhiteList': ipWhiteList,
      'templateName': templateName,
    };
  }

  factory WhitelistTemplateArgs.fromMap(Map<String, dynamic> map) {
    return WhitelistTemplateArgs(
      ipWhiteList: (map['ipWhiteList'] as String).input(),
      templateName: (map['templateName'] as String).input(),
    );
  }
}

