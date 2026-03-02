// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies additional XML formatted information that can be included in the Unattend.xml file, which is used by Windows Setup. Contents are defined by setting name, component name, and the pass in which the content is applied.
class AdditionalUnattendContentResponse {
  /// The component name. Currently, the only allowable value is Microsoft-Windows-Shell-Setup.
  final pulumi.Input<String>? componentName;
  /// Specifies the XML formatted content that is added to the unattend.xml file for the specified path and component. The XML must be less than 4KB and must include the root element for the setting or feature that is being inserted.
  final pulumi.Input<String>? content;
  /// The pass name. Currently, the only allowable value is OobeSystem.
  final pulumi.Input<String>? passName;
  /// Specifies the name of the setting to which the content applies. Possible values are: FirstLogonCommands and AutoLogon.
  final pulumi.Input<String>? settingName;

  /// Creates a new [AdditionalUnattendContentResponse].
  /// [componentName] The component name. Currently, the only allowable value is Microsoft-Windows-Shell-Setup.
  /// [content] Specifies the XML formatted content that is added to the unattend.xml file for the specified path and component. The XML must be less than 4KB and must include the root element for the setting or feature that is being inserted.
  /// [passName] The pass name. Currently, the only allowable value is OobeSystem.
  /// [settingName] Specifies the name of the setting to which the content applies. Possible values are: FirstLogonCommands and AutoLogon.
  AdditionalUnattendContentResponse({
    this.componentName,
    this.content,
    this.passName,
    this.settingName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'componentName': ?componentName,
      'content': ?content,
      'passName': ?passName,
      'settingName': ?settingName,
    };
  }

  factory AdditionalUnattendContentResponse.fromMap(Map<String, dynamic> map) {
    return AdditionalUnattendContentResponse(
      componentName: map['componentName'] == null ? null : (map['componentName'] as String).input(),
      content: map['content'] == null ? null : (map['content'] as String).input(),
      passName: map['passName'] == null ? null : (map['passName'] as String).input(),
      settingName: map['settingName'] == null ? null : (map['settingName'] as String).input(),
    );
  }
}

