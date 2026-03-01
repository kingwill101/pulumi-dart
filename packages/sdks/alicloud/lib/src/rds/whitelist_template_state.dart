// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering WhitelistTemplate resources.
class WhitelistTemplateState {
  /// IP whitelist, multiple IP addresses should be separated by commas (,) and cannot be duplicated.Supports the following two formats:
  /// - IP address format, for example: 10.23.XX.XX.
  /// - CIDR format, for example: 10.23.XX.XX/24 (no inter domain routing, 24 represents the length of the prefix in the address, ranging from 1 to 32).
  final pulumi.Input<String>? ipWhiteList;
  /// Whitelist template name. Passed in when creating a template, and cannot have the same name under the same account, starting with a letter.
  final pulumi.Input<String>? templateName;

  /// Creates a new [WhitelistTemplateState].
  /// [ipWhiteList] IP whitelist, multiple IP addresses should be separated by commas (,) and cannot be duplicated.Supports the following two formats:
  /// [templateName] Whitelist template name. Passed in when creating a template, and cannot have the same name under the same account, starting with a letter.
  WhitelistTemplateState({
    pulumi.Output<String>? ipWhiteList,
    pulumi.Output<String>? templateName,
  }) :
      ipWhiteList = pulumi.Input.asOptionalInput<String>(ipWhiteList),
      templateName = pulumi.Input.asOptionalInput<String>(templateName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipWhiteList': ?ipWhiteList,
      'templateName': ?templateName,
    };
  }

  factory WhitelistTemplateState.fromMap(Map<String, dynamic> map) {
    return WhitelistTemplateState(
      ipWhiteList: map['ipWhiteList'] == null ? null : pulumi.Output.create<String>(map['ipWhiteList'] as String),
      templateName: map['templateName'] == null ? null : pulumi.Output.create<String>(map['templateName'] as String),
    );
  }
}

