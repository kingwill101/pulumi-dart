// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies additional XML formatted information that can be included in the
/// Unattend.xml file, which is used by Windows Setup. Contents are defined by
/// setting name, component name, and the pass in which the content is applied.
class AdditionalUnattendContentResponse {
  /// The component name. Currently, the only allowable value is
  /// Microsoft-Windows-Shell-Setup.
  final pulumi.Input<String?>? componentName;
  /// The pass name. Currently, the only allowable value is OobeSystem.
  final pulumi.Input<String?>? passName;
  /// Specifies the name of the setting to which the content applies. Possible values
  /// are: FirstLogonCommands and AutoLogon.
  final pulumi.Input<String?>? settingName;

  /// Creates a new [AdditionalUnattendContentResponse].
  /// [componentName] The component name. Currently, the only allowable value is
  /// [passName] The pass name. Currently, the only allowable value is OobeSystem.
  /// [settingName] Specifies the name of the setting to which the content applies. Possible values
  const AdditionalUnattendContentResponse({
    this.componentName,
    this.passName,
    this.settingName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'componentName': ?componentName,
      'passName': ?passName,
      'settingName': ?settingName,
    };
  }

  factory AdditionalUnattendContentResponse.fromMap(Map<String, dynamic> map) {
    return AdditionalUnattendContentResponse(
      componentName: (() { final guardedValue = map['componentName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      passName: (() { final guardedValue = map['passName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      settingName: (() { final guardedValue = map['settingName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
