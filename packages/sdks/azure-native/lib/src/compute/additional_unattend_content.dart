// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'component_name.dart';
import 'pass_name.dart';
import 'setting_names.dart';

/// Specifies additional XML formatted information that can be included in the Unattend.xml file, which is used by Windows Setup. Contents are defined by setting name, component name, and the pass in which the content is applied.
class AdditionalUnattendContent {
  /// The component name. Currently, the only allowable value is Microsoft-Windows-Shell-Setup.
  final pulumi.Input<ComponentName>? componentName;
  /// Specifies the XML formatted content that is added to the unattend.xml file for the specified path and component. The XML must be less than 4KB and must include the root element for the setting or feature that is being inserted.
  final pulumi.Input<String>? content;
  /// The pass name. Currently, the only allowable value is OobeSystem.
  final pulumi.Input<PassName>? passName;
  /// Specifies the name of the setting to which the content applies. Possible values are: FirstLogonCommands and AutoLogon.
  final pulumi.Input<SettingNames>? settingName;

  /// Creates a new [AdditionalUnattendContent].
  /// [componentName] The component name. Currently, the only allowable value is Microsoft-Windows-Shell-Setup.
  /// [content] Specifies the XML formatted content that is added to the unattend.xml file for the specified path and component. The XML must be less than 4KB and must include the root element for the setting or feature that is being inserted.
  /// [passName] The pass name. Currently, the only allowable value is OobeSystem.
  /// [settingName] Specifies the name of the setting to which the content applies. Possible values are: FirstLogonCommands and AutoLogon.
  const AdditionalUnattendContent({
    this.componentName,
    this.content,
    this.passName,
    this.settingName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'componentName': ?pulumi.Input.mapOptionalInputValue<ComponentName, String>(componentName, (value) => value.wireValue),
      'content': ?content,
      'passName': ?pulumi.Input.mapOptionalInputValue<PassName, String>(passName, (value) => value.wireValue),
      'settingName': ?pulumi.Input.mapOptionalInputValue<SettingNames, String>(settingName, (value) => value.wireValue),
    };
  }

  factory AdditionalUnattendContent.fromMap(Map<String, dynamic> map) {
    return AdditionalUnattendContent(
      componentName: (() { final guardedValue = map['componentName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ComponentName.fromValue(guardedValue as String)); })(),
      content: (() { final guardedValue = map['content']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      passName: (() { final guardedValue = map['passName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PassName.fromValue(guardedValue as String)); })(),
      settingName: (() { final guardedValue = map['settingName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SettingNames.fromValue(guardedValue as String)); })(),
    );
  }
}

