// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'component_name.dart';
import 'pass_name.dart';

/// Specifies additional XML formatted information that can be included in the
/// Unattend.xml file, which is used by Windows Setup. Contents are defined by
/// setting name, component name, and the pass in which the content is applied.
class AdditionalUnattendContent {
  /// The component name. Currently, the only allowable value is
  /// Microsoft-Windows-Shell-Setup.
  final pulumi.Input<ComponentName>? componentName;
  /// Specifies the XML formatted content that is added to the unattend.xml file for
  /// the specified path and component. The XML must be less than 4KB and must
  /// include the root element for the setting or feature that is being inserted.
  final pulumi.Input<String>? content;
  /// The pass name. Currently, the only allowable value is OobeSystem.
  final pulumi.Input<PassName>? passName;
  /// Specifies the name of the setting to which the content applies. Possible values
  /// are: FirstLogonCommands and AutoLogon.
  final pulumi.Input<String>? settingName;

  /// Creates a new [AdditionalUnattendContent].
  /// [componentName] The component name. Currently, the only allowable value is
  /// [content] Specifies the XML formatted content that is added to the unattend.xml file for
  /// [passName] The pass name. Currently, the only allowable value is OobeSystem.
  /// [settingName] Specifies the name of the setting to which the content applies. Possible values
  AdditionalUnattendContent({
    this.componentName,
    this.content,
    this.passName,
    this.settingName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'componentName': ?pulumi.Input.mapOptionalInputValue<ComponentName, String>(componentName, (value) => value.value),
      'content': ?content,
      'passName': ?pulumi.Input.mapOptionalInputValue<PassName, String>(passName, (value) => value.value),
      'settingName': ?settingName,
    };
  }

  factory AdditionalUnattendContent.fromMap(Map<String, dynamic> map) {
    return AdditionalUnattendContent(
      componentName: map['componentName'] == null ? null : (ComponentName.fromValue(map['componentName'] as String)).input(),
      content: map['content'] == null ? null : (map['content'] as String).input(),
      passName: map['passName'] == null ? null : (PassName.fromValue(map['passName'] as String)).input(),
      settingName: map['settingName'] == null ? null : (map['settingName'] as String).input(),
    );
  }
}

